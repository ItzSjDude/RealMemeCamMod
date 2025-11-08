.class Lcom/oplus/tblplayer/config/PreCacheConfig;
.super Ljava/lang/Object;
.source "PreCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_DIR_SIZE:I = 0x6400000

.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:I = 0x200000

.field public static final DEFAULT_PRECACHE_CONTENT_DIRECTORY:Ljava/lang/String; = "download_cache"


# instance fields
.field public final maxCacheDirSize:J

.field public final maxCacheFileSize:J

.field public final preCacheDirPath:Ljava/lang/String;

.field public final preCacheEnable:Z

.field public final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;


# direct methods
.method private constructor <init>(ZLjava/lang/String;JJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheEnable:Z

    .line 27
    iput-object p2, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheDirPath:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheDirSize:J

    .line 29
    iput-wide p5, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheFileSize:J

    .line 30
    new-instance p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;JJLcom/oplus/tblplayer/config/PreCacheConfig$1;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p6}, Lcom/oplus/tblplayer/config/PreCacheConfig;-><init>(ZLjava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCacheConfig{preCacheEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preCacheDirPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->preCacheDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCacheDirSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheDirSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxCacheFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig;->maxCacheFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
