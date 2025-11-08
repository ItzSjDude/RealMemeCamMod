.class public abstract Lcom/heytap/accessory/BaseJobAgent;
.super Ljava/lang/Object;
.source "BaseJobAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/BaseJobAgent$AgentHandler;,
        Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;,
        Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;,
        Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;,
        Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;,
        Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;,
        Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;,
        Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.heytap.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.heytap.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field private static final CLEANUP_WAIT_MAX_RETRY:I = 0x4

.field private static final CLEANUP_WAIT_TIME:J = 0x1f4L

.field public static final CONNECTION_ALREADY_EXIST:I = 0x2715

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x2719

.field public static final CONNECTION_FAILURE_ACC_DORMANT:I = 0x271e

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x2714

.field public static final CONNECTION_FAILURE_INVALID_PEER_AGENT:I = 0x2718

.field private static final CONNECTION_FAILURE_LOCAL_AGENT_NOT_FOUND:I = 0x40a

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x271c

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x2716

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x2717

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x271a

.field public static final CONNECTION_SUCCESS:I = 0x0

.field private static final DEFAULT_GET_AGENT_ID_RETRY_COUNT:I = 0x2

.field public static final ERROR_AGENT_REQUEST_IN_PROGRESS:I = 0xa04

.field public static final ERROR_CLASS_NOT_FOUND:I = 0xa01

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_CONSTRUCTOR_EXCEPTION:I = 0xa03

.field public static final ERROR_CONSTRUCTOR_NOT_FOUND:I = 0xa02

.field public static final ERROR_FATAL:I = 0x4e21

.field public static final ERROR_PERMISSION_DENIED:I = 0x4e23

.field public static final ERROR_PERMISSION_FAILED:I = 0x4e24

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x4e22

.field public static final FIND_PEER_DEVICE_NOT_CONNECTED:I = 0x2711

.field public static final FIND_PEER_DUPLICATE_REQUEST:I = 0x2713

.field public static final FIND_PEER_SERVICE_NOT_FOUND:I = 0x2712

.field public static final FIND_PEER_TIMEOUT:I = 0x271a

.field private static final INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field private static final PEER_AGENT_AVAILABLE_THIN:I = 0x69

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field private static final PEER_AGENT_UNAVAILABLE_THIN:I = 0x6a

.field private static final SERVICE_RECORD_NOT_FOUND:I = 0x2720

.field private static final TAG:Ljava/lang/String; = "BaseJobAgent"

.field private static sAgentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/accessory/BaseJobAgent;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceHandler:Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;


# instance fields
.field mAdapter:Lcom/heytap/accessory/BaseAdapter;

.field private mAgentCallback:Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

.field private mConnectionCallback:Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mGetAgentIdRetryCount:I

.field private mLock:Ljava/lang/Object;

.field private mMessage:Lcom/heytap/accessory/BaseMessage;

.field private mName:Ljava/lang/String;

.field private mPeerAgentCallback:Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/heytap/accessory/bean/PeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProcessingCleanup:Z

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
    .locals 1

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/heytap/accessory/BaseJobAgent;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent;->mName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/heytap/accessory/BaseJobAgent;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->initializeAgent()V

    return-void

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Constructor should not be called for initializing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid parameter name:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/heytap/accessory/BaseSocket;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent;->mName:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/heytap/accessory/BaseJobAgent;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0, p3}, Lcom/heytap/accessory/BaseJobAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 153
    iput-object p3, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Thread Name:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/accessory/BaseJobAgent;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "BaseSocket Imple class:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseJobAgent"

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->initializeAgent()V

    return-void

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Constructor should not be called for initializing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_1
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

    .line 823
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    .line 825
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 827
    :cond_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->instantiateSocket()Lcom/heytap/accessory/BaseSocket;

    move-result-object v1

    .line 828
    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/heytap/accessory/BaseSocket;->acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/heytap/accessory/BaseJobAgent;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->isProcessingCleanup()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 63
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->destroy()V

    return-void
.end method

.method static synthetic access$1300()Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;
    .locals 1

    .line 63
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sInstanceHandler:Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;)Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;
    .locals 0

    .line 63
    sput-object p0, Lcom/heytap/accessory/BaseJobAgent;->sInstanceHandler:Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->bindToFramework()V

    return-void
.end method

.method static synthetic access$1500(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->registerService()V

    return-void
.end method

.method static synthetic access$1600(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->requestPeerAgents()V

    return-void
.end method

.method static synthetic access$1700(Lcom/heytap/accessory/BaseJobAgent;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleFindPeerErrorCode(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/heytap/accessory/BaseJobAgent;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handlePeerAgentUpdateErrorCode(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/heytap/accessory/BaseJobAgent;Landroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->notifyConnectionRequest(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->requestConnection(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->acceptServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->requestPeerAuthInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->loadAgentId()V

    return-void
.end method

.method static synthetic access$300(Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->registerMexAgent()V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/accessory/BaseJobAgent;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/heytap/accessory/BaseJobAgent;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleServiceConnectionErrorCode(I)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/Map;
    .locals 1

    .line 63
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    return-object v0
.end method

.method private bindToFramework()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentCallback:Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->registerAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V

    .line 474
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 475
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->loadAgentId()V

    return-void
.end method

.method private cleanupConnections(Z)V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

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

    .line 978
    invoke-virtual {v2}, Lcom/heytap/accessory/BaseSocket;->forceClose()V

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v2}, Lcom/heytap/accessory/BaseSocket;->close()V

    goto :goto_0

    .line 983
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 985
    invoke-static {}, Lcom/heytap/accessory/Initializer;->clearSdkConfig()V

    return-void

    :catchall_0
    move-exception p0

    .line 983
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private destroy()V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseJobAgent - onDestroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseJobAgent"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 183
    :try_start_0
    iput-boolean v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mProcessingCleanup:Z

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0xe

    .line 187
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 2

    monitor-enter p0

    .line 993
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/b/d;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/b/d;->a(Ljava/lang/String;)Lcom/heytap/accessory/bean/ServiceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    .line 996
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez v0, :cond_1

    const-string v0, "BaseJobAgent"

    const-string v1, "fetch service profile description failed !!"

    .line 997
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "BaseJobAgent"

    const-string v1, "config  util defualt instance  creation failed !!"

    .line 1000
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleAuthErrorCode(I)V
    .locals 1

    const-string p0, "BaseJobAgent"

    if-eqz p1, :cond_2

    const/16 v0, 0x609

    if-eq p1, v0, :cond_1

    const/16 v0, 0x60a

    if-eq p1, v0, :cond_0

    .line 597
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAuthenticationResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    .line 594
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    .line 591
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    .line 588
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleAuthResponse(Landroid/os/Bundle;)V
    .locals 6

    .line 870
    const-class v0, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    .line 871
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    .line 872
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    .line 873
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    const-string v3, "transactionId"

    .line 874
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p1, "BaseJobAgent"

    if-nez v2, :cond_0

    const-string p0, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    .line 876
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 878
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/heytap/accessory/bean/PeerAgent;->setTransactionId(J)V

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/16 v3, 0x609

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication failed error:1545 Peer Id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication success status: 0 for peer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :goto_0
    new-instance p1, Lcom/heytap/accessory/bean/AuthenticationToken;

    invoke-direct {p1, v1, v0}, Lcom/heytap/accessory/bean/AuthenticationToken;-><init>(I[B)V

    .line 888
    invoke-virtual {p0, v2, p1, v3}, Lcom/heytap/accessory/BaseJobAgent;->onAuthenticationResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/bean/AuthenticationToken;I)V

    .line 889
    invoke-direct {p0, v3}, Lcom/heytap/accessory/BaseJobAgent;->handleAuthErrorCode(I)V

    return-void
.end method

.method private handleFindPeerErrorCode(I)V
    .locals 1

    const-string p0, "BaseJobAgent"

    if-eqz p1, :cond_1

    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 580
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFindPeerAgentsResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_DUPLICATE_REQUEST"

    .line 574
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_SERVICE_NOT_FOUND"

    .line 571
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_DEVICE_NOT_CONNECTED"

    .line 568
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_TIMEOUT"

    .line 577
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    .line 565
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

    .line 903
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    .line 906
    invoke-direct {p0, v2}, Lcom/heytap/accessory/BaseJobAgent;->rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    goto :goto_0

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2718

    .line 911
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 912
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 913
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p0, "BaseJobAgent"

    const-string p1, "handle Invalid PeerAction: mBackgroundWorker is null!"

    .line 915
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
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

.method static handleLowMemory()V
    .locals 3

    .line 727
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    monitor-enter v0

    .line 728
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/BaseJobAgent;

    .line 729
    invoke-virtual {v2}, Lcom/heytap/accessory/BaseJobAgent;->handleAgentLowMemory()V

    goto :goto_0

    .line 732
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnErrorCode(I)V
    .locals 1

    const/16 p0, 0x401

    const-string v0, "BaseJobAgent"

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 655
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onError() errorCode: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "onError() -> ERROR_PERMISSION_FAILED"

    .line 652
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "onError() -> ERROR_PERMISSION_DENIED"

    .line 649
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    .line 646
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "onError() -> ERROR_FATAL"

    .line 643
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    .line 640
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v0, "BaseJobAgent"

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 669
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPeerAgentUpdated() errorCode: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    .line 666
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    .line 663
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleServiceConnectionErrorCode(I)V
    .locals 1

    const-string p0, "BaseJobAgent"

    if-eqz p1, :cond_1

    const/16 v0, 0x271c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnectionResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    .line 623
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    .line 626
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEER_AGENT"

    .line 620
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    .line 617
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    .line 614
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    .line 611
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    .line 608
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    .line 629
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    .line 605
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

.method private initializeAgent()V
    .locals 3

    .line 201
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/b/g;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/accessory/b/g;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->printStackTrace()V

    .line 206
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseJobAgent - initialize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseJobAgent"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    .line 209
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/heytap/accessory/BaseJobAgent$1;

    invoke-direct {v2, p0}, Lcom/heytap/accessory/BaseJobAgent$1;-><init>(Lcom/heytap/accessory/BaseJobAgent;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 222
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v2, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-direct {v2, p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;-><init>(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    .line 231
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "SDK initialization failed!"

    .line 233
    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e22

    .line 235
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 236
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/heytap/accessory/BaseJobAgent;->putAgent(Ljava/lang/String;Lcom/heytap/accessory/BaseJobAgent;)V

    .line 240
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-static {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->getDefaultAdapter(Landroid/content/Context;Landroid/os/Handler;)Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 241
    new-instance v0, Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;-><init>(Lcom/heytap/accessory/BaseJobAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mPeerAuthCallback:Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;

    .line 242
    new-instance v0, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;-><init>(Lcom/heytap/accessory/BaseJobAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mPeerAgentCallback:Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;

    .line 243
    new-instance v0, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;-><init>(Lcom/heytap/accessory/BaseJobAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;

    .line 244
    new-instance v0, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;-><init>(Lcom/heytap/accessory/BaseJobAgent;)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentCallback:Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;

    .line 245
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendEmptyMessage(I)Z

    .line 246
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->fetchServiceProfile()V

    return-void

    :cond_0
    const-string p0, "Unable to start Agent thread."

    .line 225
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private instantiateSocket()Lcom/heytap/accessory/BaseSocket;
    .locals 6

    const-string v0, "BaseJobAgent"

    .line 797
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 800
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating BaseSocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 803
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "static"

    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/heytap/accessory/BaseJobAgent;

    iget-object v4, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    .line 805
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    iget-object v5, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 807
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 808
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/BaseSocket;

    return-object p0

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 811
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 812
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implementation of BaseSocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
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

    .line 816
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isProcessingCleanup()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-boolean p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mProcessingCleanup:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadAgentId()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 484
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const-string v4, "AccessoryPreferences"

    if-le v1, v2, :cond_1

    .line 485
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save AgentId className:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",agentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseJobAgent"

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iput-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentId:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->registerMexAgent()V

    return-void
.end method

.method private notifyConnectionRequest(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 2

    const-string v0, "BaseJobAgent"

    if-nez p4, :cond_0

    const-string p0, "Invalid initiator peer agent:null. Ignoring connection request"

    .line 770
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p0, "Invalid local agent Id:null .Ignoring connection request"

    .line 774
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 777
    :cond_1
    invoke-virtual {p4, p1, p2}, Lcom/heytap/accessory/bean/PeerAgent;->setTransactionId(J)V

    .line 778
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Connection initiated by peer: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on Accessory: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p4}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/PeerAccessory;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object p1, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {p0, p4}, Lcom/heytap/accessory/BaseJobAgent;->onServiceConnectionRequested(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "BaseJobAgent"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 741
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "transactionId"

    .line 743
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 744
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    const-string v3, "agentId"

    .line 745
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 746
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/heytap/accessory/BaseJobAgent;->notifyConnectionRequest(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/os/PersistableBundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "BaseJobAgent"

    if-nez p1, :cond_0

    const-string p0, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 753
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "transactionId"

    .line 755
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 756
    new-array v3, v3, [Ljava/lang/String;

    const-string v3, "peerAgent"

    .line 757
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "Invalid initiator peer agent. Ignoring connection request"

    .line 759
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 761
    :cond_1
    new-instance v0, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/heytap/accessory/bean/PeerAgent;-><init>(Ljava/util/List;)V

    const-string v3, "agentId"

    .line 762
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/heytap/accessory/BaseJobAgent;->notifyConnectionRequest(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private static putAgent(Ljava/lang/String;Lcom/heytap/accessory/BaseJobAgent;)V
    .locals 1

    .line 193
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private registerMexAgent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {v0, p0}, Lcom/heytap/accessory/BaseMessage;->registerAgent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerService()V
    .locals 2

    const-string v0, "BaseJobAgent"

    .line 526
    new-instance v1, Lcom/heytap/accessory/a;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/heytap/accessory/a;-><init>(Landroid/content/Context;)V

    .line 527
    invoke-virtual {v1}, Lcom/heytap/accessory/a;->a()Ljava/util/concurrent/Future;

    move-result-object p0

    .line 528
    invoke-virtual {v1}, Lcom/heytap/accessory/a;->b()V

    .line 531
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Registration failed! : ExecutionException"

    .line 535
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    const-string p0, "Regisration failed! : InterruptedException"

    .line 533
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    .line 833
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    .line 835
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 838
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/heytap/accessory/BaseAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseJobAgent"

    const-string v2, "Failed to reject Service connection!"

    .line 840
    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method public static requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;)V
    .locals 2

    const-string v0, "BaseJobAgent"

    const-string v1, "requestAgent"

    .line 163
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;)V

    .line 2309
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1300()Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2310
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "instance"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 2312
    new-instance p1, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/heytap/accessory/BaseJobAgent;->access$1302(Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;)Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    .line 2314
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseJobAgent;->access$1300()Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2315
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2316
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requestConnection(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BaseJobAgent"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    .line 788
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e21

    .line 789
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->instantiateSocket()Lcom/heytap/accessory/BaseSocket;

    move-result-object v1

    .line 792
    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseJobAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/heytap/accessory/BaseSocket;->initiateServiceconnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V

    return-void
.end method

.method private requestPeerAgents()V
    .locals 5

    const-string v0, "BaseJobAgent"

    .line 541
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v0, 0x4e21

    .line 543
    invoke-virtual {p0, v0, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 548
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v4, p0, Lcom/heytap/accessory/BaseJobAgent;->mPeerAgentCallback:Lcom/heytap/accessory/BaseJobAgent$PeerAgentCallback;

    invoke-virtual {v3, v1, v4}, Lcom/heytap/accessory/BaseAdapter;->findPeerAgents(Ljava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Find peer request successfully enqueued."

    .line 550
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 552
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find peer request failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v2, v1}, Lcom/heytap/accessory/BaseJobAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 554
    invoke-direct {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->handleFindPeerErrorCode(I)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Find Peer request failed!"

    .line 557
    invoke-static {v0, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private requestPeerAuthInternal(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 7

    const-string v0, "BaseJobAgent"

    .line 848
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v0, 0x4e21

    .line 850
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 853
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v4, p0, Lcom/heytap/accessory/BaseJobAgent;->mPeerAuthCallback:Lcom/heytap/accessory/BaseJobAgent$AuthenticationCallback;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v5

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/heytap/accessory/BaseAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I

    move-result v1
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Auth. request for peer: "

    if-nez v1, :cond_1

    .line 855
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " done successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 857
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed as reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 858
    invoke-virtual {p0, p1, v2, v1}, Lcom/heytap/accessory/BaseJobAgent;->onAuthenticationResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/bean/AuthenticationToken;I)V

    .line 859
    invoke-direct {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->handleAuthErrorCode(I)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Failed to request peer authentication!"

    .line 862
    invoke-static {v0, v2, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 863
    invoke-virtual {v1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

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

    .line 510
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    .line 511
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "static"

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 513
    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    return-void

    .line 515
    :cond_0
    new-array p0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseJobAgent"

    invoke-static {v0, p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid implemetation of BaseSocket. Provider a public default constructor in the implementation class."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid socketClass param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    const-string v0, "BaseJobAgent"

    if-eqz p1, :cond_2

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
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

    .line 352
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 355
    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 356
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "acceptServiceConnection: mBackgroundWorker is null!"

    .line 359
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 344
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 338
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

    const-string v0, "BaseJobAgent"

    if-eqz p1, :cond_1

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 409
    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "authenticatePeerAgent: mBackgroundWorker is null!"

    .line 414
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 397
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

.method public cleanup()V
    .locals 3

    const-string v0, "BaseJobAgent"

    const-string v1, "Performing agent cleanup"

    .line 950
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 952
    invoke-direct {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->cleanupConnections(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/BaseAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentCallback:Lcom/heytap/accessory/BaseJobAgent$AgentCallbackImpl;

    invoke-virtual {v0, v2}, Lcom/heytap/accessory/BaseAdapter;->unregisterAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V

    .line 959
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {v0}, Lcom/heytap/accessory/BaseMessage;->unregisterAgent()V

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v0, :cond_2

    .line 2348
    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    const/4 v2, 0x0

    .line 2349
    iput-object v2, v0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    .line 966
    iput-object v2, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    .line 968
    :cond_2
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sAgentsMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_0
    iput-boolean v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mProcessingCleanup:Z

    .line 971
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BaseJobAgent"

    .line 292
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

    .line 295
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 304
    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "BaseJobAgent"

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    .line 307
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "BaseJobAgent"

    const-string v2, "exception: "

    .line 297
    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x4e22

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAgentHandler()Landroid/os/Handler;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .line 894
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x4e21

    const/4 v2, 0x0

    .line 896
    invoke-virtual {p0, v1, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 5

    .line 675
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    const/4 v1, 0x0

    const-string v2, "BaseJobAgent"

    if-nez v0, :cond_0

    const-string p0, "BaseAdapter is null,just return!"

    .line 676
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mGetAgentIdRetryCount = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    .line 681
    iput v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    const-string p0, "Failed to retrieve service record, retry 2"

    .line 682
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 686
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/heytap/accessory/BaseAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
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

    .line 690
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x2720

    if-ne v3, v4, :cond_2

    .line 691
    iget v3, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/heytap/accessory/BaseJobAgent;->mGetAgentIdRetryCount:I

    const-string v3, "Service record was not found in Accessory Framework.Registering service again!"

    .line 692
    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :try_start_1
    invoke-direct {p0}, Lcom/heytap/accessory/BaseJobAgent;->registerService()V

    const-string v3, "Trying to fetch agent ID after re-registration"

    .line 695
    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/heytap/accessory/BaseAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "Failed to retrieve service record after re-registration"

    .line 698
    invoke-static {v2, p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    const-string p0, "Failed to retrieve service record"

    .line 702
    invoke-static {v2, p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getServiceChannelId(I)I
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v1, -0x1

    const-string v2, "BaseJobAgent"

    if-nez v0, :cond_0

    const-string p0, "Failed because Service Profile is null"

    .line 449
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getServiceChannelSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 452
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/bean/ServiceChannel;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceChannel;->getChannelId()I

    move-result p0

    return p0

    :cond_1
    const-string p0, "Failed because of wrong index"

    .line 454
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 1

    .line 439
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    const-string p0, "BaseJobAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 440
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    const-string p0, "BaseJobAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 422
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    const-string p0, "BaseJobAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 431
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 434
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

    .line 460
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mSuccessfulConnections:Ljava/util/List;

    return-object p0
.end method

.method handleAgentLowMemory()V
    .locals 1

    .line 736
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/app/job/JobParameters;Lcom/heytap/accessory/IJobListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 718
    iput v1, v0, Landroid/os/Message;->what:I

    .line 719
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params"

    .line 721
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 722
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 723
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/content/Intent;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 710
    iput v1, v0, Landroid/os/Message;->what:I

    .line 711
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleError(ILcom/heytap/accessory/bean/PeerAgent;)V
    .locals 2

    const/16 v0, 0x2718

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const-string p2, "BaseJobAgent"

    packed-switch p1, :pswitch_data_0

    .line 944
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown error: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p2, "Permission error!"

    .line 940
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseJobAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 941
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleOnErrorCode(I)V

    return-void

    :pswitch_1
    const-string v0, "Oplus Accessory SDK cannot be initialized"

    .line 933
    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Oplus Accessory SDK cannot be initialized. Device or Build not compatible."

    .line 934
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseJobAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 936
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleOnErrorCode(I)V

    return-void

    :pswitch_2
    const/4 p2, 0x1

    .line 928
    invoke-direct {p0, p2}, Lcom/heytap/accessory/BaseJobAgent;->cleanupConnections(Z)V

    const-string p2, "Oplus Accessory Framework has died!!"

    .line 929
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseJobAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 930
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleOnErrorCode(I)V

    return-void

    .line 924
    :cond_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/heytap/accessory/BaseJobAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 925
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseJobAgent;->handleServiceConnectionErrorCode(I)V

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

    .line 275
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Peer authentication response received:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseJobAgent"

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V
    .locals 3

    const-string p0, ": "

    const-string v0, "ACCEPT_STATE_ERROR: "

    const-string v1, "BaseJobAgent"

    if-nez p1, :cond_0

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent: null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 286
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 0

    const-string p0, "BaseJobAgent"

    const-string p1, "Invalid implementation of BaseJobAgent.onFindPeerAgentsResponse(PeerAgent[], int) should be overrided!"

    .line 255
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLowMemory()V
    .locals 1

    const-string p0, "BaseJobAgent"

    const-string v0, "Service Low Memory"

    .line 279
    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 0

    const-string p0, "BaseJobAgent"

    const-string p1, "Invalid implementation of BaseJobAgent.onPeerAgentsUpdated(PeerAgent[], int) should be overrided!"

    .line 259
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accepting connection request by default from Peer:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseJobAgent"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->acceptServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V
    .locals 0

    const-string p0, "BaseJobAgent"

    const-string p1, "No Implementaion for onServiceConnectionResponse(PeerAgent peerAgent, BaseSocket socket, int result)!"

    .line 271
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method registerMessageInstance(Lcom/heytap/accessory/BaseMessage;)Ljava/lang/String;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    .line 465
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mAgentId:Ljava/lang/String;

    return-object p0
.end method

.method protected rejectServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    const-string v0, "BaseJobAgent"

    if-eqz p1, :cond_2

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reject connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
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

    .line 377
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    .line 380
    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "rejectServiceConnection: mBackgroundWorker is null!"

    .line 385
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleInvalidPeerAction(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :catch_0
    move-exception v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 371
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 365
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

.method public releaseAgent()V
    .locals 2

    .line 169
    sget-object v0, Lcom/heytap/accessory/BaseJobAgent;->sInstanceHandler:Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseJobAgent$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final requestServiceConnection(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    const-string v0, "BaseJobAgent"

    if-eqz p1, :cond_1

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connection requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    .line 326
    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 327
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "requestServiceConection: mBackgroundWorker is null!"

    .line 330
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 320
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 314
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

    .line 989
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseJobAgent$AgentHandler;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
