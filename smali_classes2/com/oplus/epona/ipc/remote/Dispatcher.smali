.class public Lcom/oplus/epona/ipc/remote/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/oplus/epona/Dumper;


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"

.field private static volatile sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;


# instance fields
.field private mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransferBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;
    .locals 2

    .line 29
    sget-object v0, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/oplus/epona/ipc/remote/Dispatcher;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/oplus/epona/ipc/remote/Dispatcher;

    invoke-direct {v1}, Lcom/oplus/epona/ipc/remote/Dispatcher;-><init>()V

    sput-object v1, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    return-object v0
.end method

.method private isComponentValid(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printRegisterComponentName(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-direct {p0, v0}, Lcom/oplus/epona/ipc/remote/Dispatcher;->isComponentValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private teardown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "--- dump package register components info ---"

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->printRegisterComponentName(Ljava/io/PrintWriter;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p0, "------------------- end ---------------------"

    .line 105
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 0

    const-string p0, "oplus_epona"

    return-object p0
.end method

.method public synthetic lambda$registerRemoteTransfer$0$Dispatcher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/ipc/remote/Dispatcher;->teardown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Dispatcher"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;

    invoke-direct {v3, p0, p1, p3}, Lcom/oplus/epona/ipc/remote/-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0;-><init>(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->updateComponent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 44
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/oplus/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 52
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerRemoteTransfer: registerSuccess:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 46
    :goto_2
    iget-object v1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->updateComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    throw v0
.end method
