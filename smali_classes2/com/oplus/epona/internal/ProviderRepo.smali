.class public Lcom/oplus/epona/internal/ProviderRepo;
.super Ljava/lang/Object;
.source "ProviderRepo.java"

# interfaces
.implements Lcom/oplus/epona/Repo;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderRepo"


# instance fields
.field private final mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/DynamicProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/provider/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/route/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mRoutes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getProviderMethodInfo(Lcom/oplus/epona/provider/ProviderInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/epona/provider/ProviderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/provider/ProviderMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMethods"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProviderRepo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private isValid(Lcom/oplus/epona/DynamicProvider;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValid(Lcom/oplus/epona/provider/ProviderInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValid(Lcom/oplus/epona/route/RouteInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/oplus/epona/route/RouteInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printDynamicProviderInfo(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "dynamic:"

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/epona/DynamicProvider;

    invoke-interface {v1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/epona/DynamicProvider;

    invoke-interface {v0}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printStaticProviderInfo(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "static:"

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/epona/provider/ProviderInfo;

    .line 135
    invoke-virtual {v1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/epona/internal/ProviderRepo;->getProviderMethodInfo(Lcom/oplus/epona/provider/ProviderInfo;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/epona/provider/ProviderMethodInfo;

    invoke-virtual {v2}, Lcom/oplus/epona/provider/ProviderMethodInfo;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 148
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private registerProviderToRemote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/oplus/epona/Epona;->getTransferController()Lcom/oplus/epona/ipc/local/RemoteTransferController;

    move-result-object p0

    invoke-static {}, Lcom/oplus/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/oplus/epona/ipc/local/RemoteTransfer;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/oplus/epona/ipc/local/RemoteTransferController;->register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "---------start dump epona register info---------"

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->printDynamicProviderInfo(Ljava/io/PrintWriter;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->printStaticProviderInfo(Ljava/io/PrintWriter;)V

    const-string p0, "-------------------- end -----------------------"

    .line 117
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findProvider(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/DynamicProvider;

    return-object p0
.end method

.method public findProviderProviderInfo(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/provider/ProviderInfo;

    return-object p0
.end method

.method public findRouteInfo(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mRoutes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/route/RouteInfo;

    return-object p0
.end method

.method public registerProvider(Lcom/oplus/epona/DynamicProvider;)V
    .locals 3

    .line 40
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/DynamicProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->needIPC()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "register dynamic provider %s needIPC = %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->needIPC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->registerProviderToRemote(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/provider/ProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->needIPC()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "register static provider %s needIPC = %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->needIPC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->registerProviderToRemote(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V
    .locals 3

    .line 88
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/route/RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oplus/epona/route/RouteInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "register static route %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mRoutes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/epona/route/RouteInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unRegisterProvider(Lcom/oplus/epona/DynamicProvider;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/DynamicProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "unregister dynamic provider %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/oplus/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unRegisterProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V
    .locals 3

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/provider/ProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "unregister static provider %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unRegisterRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ProviderRepo;->isValid(Lcom/oplus/epona/route/RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oplus/epona/route/RouteInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ProviderRepo"

    const-string v2, "unregister static route %s"

    invoke-static {v1, v2, v0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object p0, p0, Lcom/oplus/epona/internal/ProviderRepo;->mRoutes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/epona/route/RouteInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
