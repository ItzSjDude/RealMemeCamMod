.class public Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;
.super Lcom/oplus/tblplayer/utils/executor/SafeRunnable;
.source "CacheTaskImpl.java"

# interfaces
.implements Lcom/oplus/tblplayer/cache/ICacheTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheTaskImpl"


# instance fields
.field private mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

.field private mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private volatile mFinished:Z

.field private mIdentify:Ljava/lang/String;

.field private mLength:J

.field private mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

.field private mPriority:I

.field private mPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private mStartPos:J

.field private mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/oplus/tblplayer/cache/ICacheListener;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/oplus/tblplayer/misc/MediaUrl;JJI)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/oplus/tblplayer/utils/executor/SafeRunnable;-><init>()V

    .line 28
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mFinished:Z

    .line 47
    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    .line 48
    iput-object p2, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 49
    iput-object p3, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 50
    iput-object p5, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 51
    iput-wide p6, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mStartPos:J

    .line 52
    iput-wide p8, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mLength:J

    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mIdentify:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 56
    iput p10, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    return-void
.end method

.method private onCacheError(Ljava/lang/String;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheError(Lcom/oplus/tblplayer/misc/MediaUrl;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onCacheFinish(JJJJ)V
    .locals 10

    move-object v0, p0

    .line 157
    iget-object v1, v0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    if-eqz v1, :cond_0

    .line 158
    iget-object v2, v0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    move-object v0, v1

    move-object v1, v2

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v0 .. v9}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheFinish(Lcom/oplus/tblplayer/misc/MediaUrl;JJJJ)V

    :cond_0
    return-void
.end method

.method private onCacheStart()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mListener:Lcom/oplus/tblplayer/cache/ICacheListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/cache/ICacheListener;->onCacheStart(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 145
    sget-object v0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->TAG:Ljava/lang/String;

    const-string v1, "[CACHE] cancel"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    check-cast p1, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;

    .line 130
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    iget-object p1, p1, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->getCustomCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mFinished:Z

    return p0
.end method

.method protected safeRun()V
    .locals 22

    move-object/from16 v10, p0

    .line 67
    iget v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    if-ltz v0, :cond_0

    .line 68
    sget-object v0, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->TAG:Ljava/lang/String;

    const-string v1, "Priority should not greater than PLAYBACK!"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 69
    iput v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    .line 71
    :cond_0
    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->onCacheStart()V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    :try_start_0
    new-instance v11, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v2}, Lcom/oplus/tblplayer/misc/MediaUrl;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mStartPos:J

    iget-wide v6, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mLength:J

    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v2}, Lcom/oplus/tblplayer/misc/MediaUrl;->getCustomCacheKey()Ljava/lang/String;

    move-result-object v8

    move-object v2, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 77
    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-static {v11, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 78
    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v20, 0x0

    cmp-long v2, v2, v20

    const-string v8, ", url key: "

    if-lez v2, :cond_1

    .line 79
    :try_start_1
    sget-object v2, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache ignore due to already cached. task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mIdentify:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", alreadyCachedBytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Lcom/oplus/tblplayer/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    iget-object v4, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    const-wide/16 v6, 0x0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    move-object/from16 v1, p0

    .line 82
    invoke-direct/range {v1 .. v9}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->onCacheFinish(JJJJ)V

    return-void

    .line 87
    :cond_1
    iget-object v12, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    new-instance v13, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 89
    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 v2, 0x20000

    new-array v14, v2, [B

    iget-object v15, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    iget-object v3, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-object v4, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v19, 0x0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 87
    invoke-static/range {v11 .. v19}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    const/4 v2, 0x1

    .line 96
    iput-boolean v2, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mFinished:Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v11, v2, v0

    .line 99
    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-object/from16 v1, p0

    move-object v0, v8

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->onCacheFinish(JJJJ)V

    .line 104
    sget-object v1, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CACHE] Finished: cost time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", already exists: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", newly cached "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", content length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    move-wide/from16 v3, v20

    goto :goto_0

    :cond_2
    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mCounters:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->onCacheError(Ljava/lang/String;)V

    .line 116
    :goto_1
    iget-object v0, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, v10, Lcom/oplus/tblplayer/cache/impl/CacheTaskImpl;->mPriority:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    return-void
.end method
