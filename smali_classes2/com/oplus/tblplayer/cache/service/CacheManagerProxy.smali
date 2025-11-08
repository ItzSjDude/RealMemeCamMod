.class public Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;
.super Ljava/lang/Object;
.source "CacheManagerProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/oplus/tblplayer/cache/ICacheManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheManagerProxy"


# instance fields
.field private mAutoReBind:Z

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mEnablePendingOps:Z

.field private mIntent:Landroid/content/Intent;

.field private mPendingOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mEnablePendingOps:Z

    .line 29
    iput-boolean v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mAutoReBind:Z

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mIntent:Landroid/content/Intent;

    .line 38
    new-instance p1, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-direct {p1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    .line 39
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->startBind()V

    return-void
.end method

.method private addPendingOps(I[Ljava/lang/Object;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkBinderState()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private executePendingOps()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_1

    .line 134
    sget-object v1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "executePendingOps pending op is null."

    invoke-static {v1, v3, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 139
    :cond_1
    :try_start_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethod(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v3, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBinderDied()V

    .line 142
    sget-object v1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executePendingOps error. method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 154
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mPendingOps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_2
    return-void
.end method

.method private invokeMethod(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mBinder:Landroid/os/IBinder;

    const-string v0, "RemoteCacheManagerService"

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/tblplayer/utils/ParcelUtils;->invokeRemoteMethod(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->checkBinderState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-boolean v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mEnablePendingOps:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->addPendingOps(I[Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mAutoReBind:Z

    if-eqz p1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->startBind()V

    :cond_1
    return-void

    .line 181
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onBindFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private onBinderDied()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private onBound(Landroid/os/IBinder;)V
    .locals 5

    .line 85
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->binderDied()V

    .line 88
    sget-object v1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInterfaceDescriptor error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "RemoteCacheManagerService"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 99
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 101
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBinderDied()V

    .line 103
    sget-object v2, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linkToDeath error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_1
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mBinder:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v1, 0x2

    .line 109
    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    .line 110
    invoke-virtual {v2}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethod(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 112
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBinderDied()V

    .line 114
    sget-object v0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add listener error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_2
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->executePendingOps()V

    return-void
.end method

.method private startBind()V
    .locals 5

    .line 43
    sget-object v0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    const-string v1, "[CACHE] startBind"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->checkBinderState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    const-string v0, "startBind ignore due to binder alive"

    invoke-static {p0, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 53
    sget-object v1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CACHE] bindService RET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    sget-object v2, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBindFailed()V

    :goto_0
    if-nez v0, :cond_1

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :catch_1
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBindFailed()V

    .line 67
    sget-object p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    const-string v0, "bindService return false"

    invoke-static {p0, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBinderDied()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 251
    invoke-direct {p0, p2}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBound(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->onBinderDied()V

    return-void
.end method

.method public registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->checkBinderState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z

    return-void

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    sget-object p1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCacheListener error. error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJ)V
    .locals 7

    const/16 v6, -0x3e8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 187
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V

    return-void
.end method

.method public startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V
    .locals 2

    const/4 v0, 0x4

    .line 193
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 194
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v0, p2

    const/4 p2, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p2

    .line 193
    invoke-direct {p0, p3, v0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    sget-object p2, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startCache error. url: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:%s"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAllCache()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 212
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    sget-object v0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAllCache error. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCache(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 203
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    sget-object v0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCache error. url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
    .locals 4

    .line 236
    invoke-direct {p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->checkBinderState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z

    return-void

    .line 241
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 242
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->mRemoteListener:Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;

    invoke-virtual {v2}, Lcom/oplus/tblplayer/cache/service/RemoteCacheListener;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->invokeMethodAndRetryIfNeeded(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 245
    sget-object p1, Lcom/oplus/tblplayer/cache/service/CacheManagerProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCacheListener error. error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
