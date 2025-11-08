.class public Lcom/oplus/tblplayer/config/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static DEBUG:Z = false

.field public static final PREFIX_TAG:Ljava/lang/String; = "TBLPlayer-"

.field private static gGlobalsConfig:Lcom/oplus/tblplayer/config/GlobalsConfig;

.field private static initState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPreCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/tblplayer/config/Globals;->initState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPreCache(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/oplus/tblplayer/utils/FileUtil;->getDirectoryByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "download_cache"

    .line 118
    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/FileUtil;->getDirectoryByName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->isCacheFolderLocked(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 129
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->disableCacheFolderLocking()V

    .line 132
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    return-object p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 57
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGlobalPreCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 5

    .line 101
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/tblplayer/config/Globals;->sPreCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lcom/oplus/tblplayer/config/Globals;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/oplus/tblplayer/config/Globals;->sPreCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreCacheDirPath()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getMaxCacheDirSize()J

    move-result-wide v3

    .line 104
    invoke-static {v1, v2, v3, v4}, Lcom/oplus/tblplayer/config/Globals;->createPreCache(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v1

    sput-object v1, Lcom/oplus/tblplayer/config/Globals;->sPreCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/tblplayer/config/Globals;->sPreCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public static getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;
    .locals 1

    .line 52
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 53
    sget-object v0, Lcom/oplus/tblplayer/config/Globals;->gGlobalsConfig:Lcom/oplus/tblplayer/config/GlobalsConfig;

    return-object v0
.end method

.method public static getMaxCacheDirSize()J
    .locals 2

    .line 69
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-wide v0, v0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheDirSize:J

    return-wide v0
.end method

.method public static getMaxCacheFileSize()J
    .locals 2

    .line 65
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-wide v0, v0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheFileSize:J

    return-wide v0
.end method

.method public static getOkhttpCacheControl()Lokhttp3/CacheControl;
    .locals 1

    .line 93
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v0, v0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCacheControl:Lokhttp3/CacheControl;

    return-object v0
.end method

.method public static getOkhttpCallFactory()Lokhttp3/Call$Factory;
    .locals 1

    .line 85
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v0, v0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCallFactory:Lokhttp3/Call$Factory;

    return-object v0
.end method

.method public static getOkhttpEnable()Z
    .locals 1

    .line 81
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-boolean v0, v0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpEnable:Z

    return v0
.end method

.method public static getPreCacheDirPath()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-object v0, v0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreCacheEnable()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-boolean v0, v0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheEnable:Z

    return v0
.end method

.method public static getPreferRedirectAddress()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-boolean v0, v0, Lcom/oplus/tblplayer/config/HttpConfig;->preferRedirectAddress:Z

    return v0
.end method

.method public static getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 1

    .line 97
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-object v0, v0, Lcom/oplus/tblplayer/config/PreCacheConfig;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalsConfig()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v0, v0, Lcom/oplus/tblplayer/config/HttpConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    const-class v0, Lcom/oplus/tblplayer/config/Globals;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/oplus/tblplayer/config/Globals;->initState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized maybeInitialize(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V
    .locals 2

    const-class v0, Lcom/oplus/tblplayer/config/Globals;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/oplus/tblplayer/config/Globals;->initState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 37
    monitor-exit v0

    return-void

    .line 39
    :cond_0
    :try_start_1
    sget-object v1, Lcom/oplus/tblplayer/config/Globals;->gGlobalsConfig:Lcom/oplus/tblplayer/config/GlobalsConfig;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 40
    new-instance p1, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;

    invoke-direct {p1, p0}, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->build()Lcom/oplus/tblplayer/config/GlobalsConfig;

    move-result-object p1

    :cond_1
    sput-object p1, Lcom/oplus/tblplayer/config/Globals;->gGlobalsConfig:Lcom/oplus/tblplayer/config/GlobalsConfig;

    .line 42
    sget-object p0, Lcom/oplus/tblplayer/config/Globals;->gGlobalsConfig:Lcom/oplus/tblplayer/config/GlobalsConfig;

    iget-boolean p0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->debug:Z

    sput-boolean p0, Lcom/oplus/tblplayer/config/Globals;->DEBUG:Z

    .line 43
    sget-object p0, Lcom/oplus/tblplayer/config/Globals;->initState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
