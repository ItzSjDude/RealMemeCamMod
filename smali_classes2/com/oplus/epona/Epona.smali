.class public Lcom/oplus/epona/Epona;
.super Ljava/lang/Object;
.source "Epona.java"


# static fields
.field public static final DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

.field private static final TAG:Ljava/lang/String; = "Epona"

.field private static final mLock:Ljava/lang/Object;

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Lcom/oplus/epona/Epona;


# instance fields
.field private mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

.field private mApp:Landroid/app/Application;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

.field private mDumpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/Dumper;",
            ">;"
        }
    .end annotation
.end field

.field private mIPCInterceptor:Lcom/oplus/epona/Interceptor;

.field private final mInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/epona/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mRepo:Lcom/oplus/epona/Repo;

.field private mRoute:Lcom/oplus/epona/Route;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/oplus/epona/ipc/local/DefaultTransferController;

    invoke-direct {v0}, Lcom/oplus/epona/ipc/local/DefaultTransferController;-><init>()V

    sput-object v0, Lcom/oplus/epona/Epona;->DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/epona/Epona;->mLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mDumpMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/oplus/epona/Epona;->DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    .line 38
    new-instance v0, Lcom/oplus/epona/interceptor/IPCInterceptor;

    invoke-direct {v0}, Lcom/oplus/epona/interceptor/IPCInterceptor;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    .line 47
    new-instance v0, Lcom/oplus/epona/internal/ProviderRepo;

    invoke-direct {v0}, Lcom/oplus/epona/internal/ProviderRepo;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    .line 48
    new-instance v0, Lcom/oplus/epona/Route;

    invoke-direct {v0}, Lcom/oplus/epona/Route;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mRoute:Lcom/oplus/epona/Route;

    .line 49
    new-instance v0, Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-direct {v0}, Lcom/oplus/epona/internal/ActivityStackManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    return-void
.end method

.method public static addDumper(Lcom/oplus/epona/Dumper;)Z
    .locals 2

    .line 80
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/oplus/epona/Epona;->getDumper()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0}, Lcom/oplus/epona/Dumper;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static addInterceptor(Lcom/oplus/epona/Interceptor;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 67
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 69
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Epona"

    const-string v2, "interceptor has been add twice"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 72
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "interceptor cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private attach(Landroid/content/Context;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/oplus/epona/Epona;->mContext:Landroid/content/Context;

    .line 167
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 168
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    iget-object p0, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    invoke-virtual {p1, p0}, Lcom/oplus/epona/internal/ActivityStackManager;->attach(Landroid/app/Application;)V

    return-void
.end method

.method private static autoRegister()V
    .locals 0

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 162
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static findComponent(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;
    .locals 1

    .line 122
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findProvider(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;

    move-result-object p0

    return-object p0
.end method

.method public static findProviderComponent(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;
    .locals 1

    .line 134
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findProviderProviderInfo(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static findRoute(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;
    .locals 1

    .line 146
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findRouteInfo(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 154
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 158
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 150
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-virtual {v0}, Lcom/oplus/epona/internal/ActivityStackManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getDumper()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/Dumper;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mDumpMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getIPCInterceptor()Lcom/oplus/epona/Interceptor;
    .locals 1

    .line 106
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    return-object v0
.end method

.method private static getInstance()Lcom/oplus/epona/Epona;
    .locals 2

    .line 176
    sget-object v0, Lcom/oplus/epona/Epona;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    sget-object v1, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/oplus/epona/Epona;

    invoke-direct {v1}, Lcom/oplus/epona/Epona;-><init>()V

    sput-object v1, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    .line 180
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sget-object v0, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    return-object v0

    :catchall_0
    move-exception v1

    .line 180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/epona/Interceptor;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static getTransferController()Lcom/oplus/epona/ipc/local/RemoteTransferController;
    .locals 1

    .line 94
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 53
    sget-object v0, Lcom/oplus/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oplus/epona/Epona;->attach(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Epona;->addDumper(Lcom/oplus/epona/Dumper;)Z

    .line 58
    invoke-static {p0}, Lcom/oplus/epona/utils/Logger;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/oplus/epona/Epona;->autoRegister()V

    return-void
.end method

.method public static newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;
    .locals 1

    .line 110
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/Route;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    return-object p0
.end method

.method public static register(Lcom/oplus/epona/DynamicProvider;)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerProvider(Lcom/oplus/epona/DynamicProvider;)V

    return-void
.end method

.method public static registerProvider(Lcom/oplus/epona/provider/ProviderInfo;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V

    return-void
.end method

.method public static registerRoute(Lcom/oplus/epona/route/RouteInfo;)V
    .locals 1

    .line 138
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V

    return-void
.end method

.method public static setIPCInterceptor(Lcom/oplus/epona/Interceptor;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    return-void
.end method

.method public static setTransferController(Lcom/oplus/epona/ipc/local/RemoteTransferController;)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    return-void
.end method

.method public static unRegister(Lcom/oplus/epona/DynamicProvider;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterProvider(Lcom/oplus/epona/DynamicProvider;)V

    return-void
.end method

.method public static unRegisterProvider(Lcom/oplus/epona/provider/ProviderInfo;)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V

    return-void
.end method

.method public static unRegisterRoute(Lcom/oplus/epona/route/RouteInfo;)V
    .locals 1

    .line 142
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V

    return-void
.end method
