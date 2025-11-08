.class public final Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
.super Ljava/lang/Object;
.source "PreCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/config/PreCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public maxCacheDirSize:J

.field public maxCacheFileSize:J

.field public preCacheDirPath:Ljava/lang/String;

.field public preCacheEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheEnable:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheDirPath:Ljava/lang/String;

    const-wide/32 v0, 0x6400000

    .line 46
    iput-wide v0, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheDirSize:J

    const-wide/32 v0, 0x200000

    .line 47
    iput-wide v0, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheFileSize:J

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/tblplayer/config/PreCacheConfig;
    .locals 9

    .line 73
    new-instance v8, Lcom/oplus/tblplayer/config/PreCacheConfig;

    iget-boolean v1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheEnable:Z

    iget-object v2, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheDirPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheDirSize:J

    iget-wide v5, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheFileSize:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/config/PreCacheConfig;-><init>(ZLjava/lang/String;JJLcom/oplus/tblplayer/config/PreCacheConfig$1;)V

    return-object v8
.end method

.method public setMaxCacheDirSize(J)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheDirSize:J

    return-object p0
.end method

.method public setMaxCacheFileSize(J)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->maxCacheFileSize:J

    return-object p0
.end method

.method public setPreCacheDir(Ljava/lang/String;)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPreCacheEnable(Z)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->preCacheEnable:Z

    return-object p0
.end method
