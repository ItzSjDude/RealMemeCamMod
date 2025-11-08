.class public Lcom/oplus/tblplayer/managers/TBLSourceManager;
.super Ljava/lang/Object;
.source "TBLSourceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLSourceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCacheDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 8

    .line 135
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    .line 139
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getMaxCacheFileSize()J

    move-result-wide v0

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object v7
.end method

.method public static buildFileDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    return-object v0
.end method

.method public static buildHttpDataSourceFactory(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, v0}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildHttpDataSourceFactory(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static buildHttpDataSourceFactory(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 1

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public static buildMediaSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/oplus/tblplayer/misc/MediaUrl;I)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->inferContentType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :pswitch_0
    new-instance v0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;

    invoke-direct {v0, p2}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;-><init>(I)V

    .line 64
    move-object p2, v0

    check-cast p2, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->setTsExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;

    .line 65
    new-instance p2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p0, Lcom/oplus/tblplayer/upstream/TBLLoadErrorHandlingPolicy;

    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLLoadErrorHandlingPolicy;-><init>()V

    .line 66
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 68
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p0

    return-object p0

    .line 54
    :pswitch_1
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static buildOkHttpDataSourceFactory(Ljava/lang/String;Lokhttp3/Call$Factory;Lokhttp3/CacheControl;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildOkHttpDataSourceFactory(Ljava/lang/String;Lokhttp3/Call$Factory;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static buildOkHttpDataSourceFactory(Ljava/lang/String;Lokhttp3/Call$Factory;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 1

    .line 115
    new-instance v0, Lcom/oplus/tblplayer/upstream/TBLHttpDataSourceFactory;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/oplus/tblplayer/upstream/TBLHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V

    return-object v0
.end method

.method public static buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;
    .locals 8

    .line 146
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object v7
.end method

.method public static convertContentUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 177
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 180
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 181
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public static getAlreadyCacheBytes(Landroid/net/Uri;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 160
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v8

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalPreCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {v8, p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CacheUtil.CachingCounters: alreadyCachedBytes = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", newlyCachedBytes = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", contentLength = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TBLSourceManager"

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-wide p0, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr p0, v1

    .line 167
    new-instance v1, Landroid/util/Pair;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static shouldRequirePreCache(Lcom/oplus/tblplayer/misc/MediaUrl;)Z
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->inferContentType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
