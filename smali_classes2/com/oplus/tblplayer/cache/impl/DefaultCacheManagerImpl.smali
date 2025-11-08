.class public Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;
.super Ljava/lang/Object;
.source "DefaultCacheManagerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;
.implements Lcom/oplus/tblplayer/cache/ICacheManager;


# static fields
.field private static final CORE_SIZE:I = 0x2

.field private static final KEEP_ALIVE_TIME:J = 0x384L

.field private static final MAX_BLOCKING_SIZE:I = 0x6

.field private static final MAX_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DefaultCacheManagerImpl"

.field private static final THREAD_NAME:Ljava/lang/String; = "preload"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mInnerListener:Lcom/oplus/tblplayer/cache/ICacheListener;

.field private mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/cache/ICacheTask;",
            ">;"
        }
    .end annotation
.end field

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl$1;-><init>(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)V

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mInnerListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    .line 74
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mAppContext:Landroid/content/Context;

    .line 75
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x6

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/oplus/tblplayer/utils/executor/DefaultThreadFactory;

    const-string v0, "preload"

    invoke-direct {v8, v0}, Lcom/oplus/tblplayer/utils/executor/DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/oplus/tblplayer/utils/executor/DefaultDiscardPolicy;

    invoke-direct {v9}, Lcom/oplus/tblplayer/utils/executor/DefaultDiscardPolicy;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x384

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 81
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    .line 83
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalPreCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;)Lcom/oplus/tblplayer/cache/ICacheListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->removeCacheTask(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method private addTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getCacheTask(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/oplus/tblplayer/cache/ICacheTask;
    .locals 2

    .line 189
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getKey(Lcom/oplus/tblplayer/misc/MediaUrl;)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/cache/ICacheTask;

    .line 191
    invoke-interface {v0}, Lcom/oplus/tblplayer/cache/ICacheTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 0

    .line 182
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 183
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private removeCacheTask(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 3

    .line 199
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getKey(Lcom/oplus/tblplayer/misc/MediaUrl;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tblplayer/cache/ICacheTask;

    .line 201
    invoke-interface {v1}, Lcom/oplus/tblplayer/cache/ICacheTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->removeTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z

    :cond_1
    return-void
.end method

.method private removeTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private wrapTask(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;
    .locals 12

    move-object v0, p0

    .line 219
    new-instance v11, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;

    iget-object v1, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mInnerListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    iget-object v2, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 222
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->buildDataSourceFactory(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-object v0, v11

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;-><init>(Lcom/oplus/tblplayer/cache/ICacheListener;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V

    return-object v11
.end method


# virtual methods
.method public buildDataSourceFactory(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    .line 91
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpCallFactory()Lokhttp3/Call$Factory;

    move-result-object v1

    .line 95
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpCacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildOkHttpDataSourceFactory(Ljava/lang/String;Lokhttp3/Call$Factory;Lokhttp3/CacheControl;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildHttpDataSourceFactory(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->isHttpRequestHeadersEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/util/Map;)V

    .line 103
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object p1
.end method

.method public getKey(Lcom/oplus/tblplayer/misc/MediaUrl;)Ljava/lang/String;
    .locals 0

    .line 231
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->getCustomCacheKey()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .locals 0

    return-void
.end method

.method public onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .locals 0

    return-void
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .locals 0

    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .locals 0

    return-void
.end method

.method public registerCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    return-void
.end method

.method public startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJ)V
    .locals 7

    const/16 v6, -0x3e8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V

    return-void
.end method

.method public startCache(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V
    .locals 2

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->shouldRequirePreCache(Lcom/oplus/tblplayer/misc/MediaUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-object p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    const-string p1, "startCache ignore due to local file"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getCacheTask(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/oplus/tblplayer/cache/ICacheTask;

    move-result-object v0

    const-string v1, ", url key: "

    if-eqz v0, :cond_2

    .line 127
    sget-object p2, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startCache ignore due to task already exists. task: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getKey(Lcom/oplus/tblplayer/misc/MediaUrl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p2, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->wrapTask(Lcom/oplus/tblplayer/misc/MediaUrl;JJI)Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;

    move-result-object p2

    .line 134
    invoke-direct {p0, p2}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->addTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z

    .line 136
    sget-object p3, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "startCache schedule task: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getKey(Lcom/oplus/tblplayer/misc/MediaUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p3, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 116
    :cond_3
    :goto_0
    sget-object p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    const-string p1, "startCache ignore due to empty url"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAllCache()V
    .locals 3

    .line 144
    sget-object v0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CACHE] stopAllCache, ThreadPoolExecutor pool size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 145
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", and queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tblplayer/cache/ICacheTask;

    .line 147
    invoke-interface {v1}, Lcom/oplus/tblplayer/cache/ICacheTask;->cancel()V

    .line 148
    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->removeTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z

    .line 150
    iget-object v2, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopCache(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->getCacheTask(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/oplus/tblplayer/cache/ICacheTask;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 175
    :cond_1
    invoke-interface {p1}, Lcom/oplus/tblplayer/cache/ICacheTask;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-interface {p1}, Lcom/oplus/tblplayer/cache/ICacheTask;->cancel()V

    .line 177
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->removeTask(Lcom/oplus/tblplayer/cache/ICacheTask;)Z

    :cond_2
    return-void

    .line 167
    :cond_3
    :goto_0
    sget-object p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->TAG:Ljava/lang/String;

    const-string p1, "stopCache ignore due to empty url"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCacheListener(Lcom/oplus/tblplayer/cache/ICacheListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/DefaultCacheManagerImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    return-void
.end method
