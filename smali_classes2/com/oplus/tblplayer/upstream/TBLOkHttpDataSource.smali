.class public Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;
.super Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;
.source "TBLOkHttpDataSource.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLHttpDataSource"


# instance fields
.field private closeAtTimestamp:J

.field private firstReadTime:J

.field private hasFirstRead:Z

.field private final httpSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/upstream/OkHttpSession;",
            ">;"
        }
    .end annotation
.end field

.field private openAtTimestamp:J

.field private originalAddress:Ljava/lang/String;

.field private redirectedAddress:Ljava/lang/String;

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    .line 34
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->closeAtTimestamp:J

    const/4 p3, 0x1

    .line 35
    iput-boolean p3, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->hasFirstRead:Z

    .line 36
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->firstReadTime:J

    .line 37
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->originalAddress:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->redirectedAddress:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/CacheControl;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    .line 34
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->closeAtTimestamp:J

    const/4 p3, 0x1

    .line 35
    iput-boolean p3, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->hasFirstRead:Z

    .line 36
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->firstReadTime:J

    .line 37
    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->originalAddress:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->redirectedAddress:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    return-void
.end method

.method private getIpFromHttpSession(Lokhttp3/Connection;)Ljava/lang/String;
    .locals 2

    .line 267
    iget-object p0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    .line 268
    iget-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->connection:Lokhttp3/Connection;

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUrlFromHttpSession(Lokhttp3/Connection;)Ljava/lang/String;
    .locals 2

    .line 259
    iget-object p0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    .line 260
    iget-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->connection:Lokhttp3/Connection;

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private innerOpen(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const-string v0, "innerOpen: "

    const-string v1, "TBLHttpDataSource"

    .line 150
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 153
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->setupInterceptor()V

    .line 154
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v2

    .line 156
    invoke-static {v1, v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    invoke-direct {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;-><init>()V

    .line 158
    iget-wide v3, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    iput-wide v3, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->requestTimestamp:J

    .line 159
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->originalUrl:Ljava/lang/String;

    .line 160
    iget-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->printHttpSession()V

    .line 163
    throw v2
.end method

.method private printHttpSession()V
    .locals 8

    const-string v0, "TBLHttpDataSource"

    .line 276
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>>>>>>>>Begin dump http request and response>>>>>>>>>>>>>>>>>>>"

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 279
    :goto_0
    iget-object v5, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\n"

    if-ge v4, v5, :cond_1

    .line 280
    :try_start_1
    iget-object v5, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/tblplayer/upstream/OkHttpSession;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v5, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    const-string v5, "----------------------------------------------------------------------------"

    .line 283
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "<<<<<<<<<<<<<<<<<<<<Finish dump http request and response<<<<<<<<<<<<<<<<<<"

    .line 286
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printHttpSession: cost time "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Dump failed!"

    .line 290
    invoke-static {v0, v1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private resetInterceptor()V
    .locals 4

    .line 106
    const-class v0, Lokhttp3/Call$Factory;

    const-string v1, "callFactory"

    invoke-static {p0, v0, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    .line 107
    instance-of v1, v0, Lokhttp3/OkHttpClient;

    if-eqz v1, :cond_0

    .line 108
    const-class v1, Ljava/util/List;

    const-string v2, "networkInterceptors"

    invoke-static {v0, v1, v2}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    const-class p0, Ljava/util/List;

    .line 116
    invoke-static {v3}, Lcom/oplus/tblplayer/utils/CommonUtil;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-static {v0, p0, v2, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setupInterceptor()V
    .locals 5

    .line 84
    const-class v0, Lokhttp3/Call$Factory;

    const-string v1, "callFactory"

    invoke-static {p0, v0, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    .line 85
    instance-of v1, v0, Lokhttp3/OkHttpClient;

    if-eqz v1, :cond_0

    .line 86
    const-class v1, Ljava/util/List;

    const-string v2, "networkInterceptors"

    invoke-static {v0, v1, v2}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OkHttp interceptors size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TBLHttpDataSource"

    invoke-static {v4, v3}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 90
    invoke-interface {v3, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    const-class p0, Ljava/util/List;

    .line 95
    invoke-static {v3}, Lcom/oplus/tblplayer/utils/CommonUtil;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-static {v0, p0, v2, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 242
    invoke-super {p0}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;->close()V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->closeAtTimestamp:J

    const/4 v0, 0x2

    .line 245
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->closeAtTimestamp:J

    .line 246
    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->closeAtTimestamp:J

    iget-wide v3, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TBLHttpDataSource"

    const-string v2, "close data source at %s, exist duration %d ms."

    .line 245
    invoke-static {v1, v2, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: with totalBytesRead = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->resetInterceptor()V

    .line 250
    iget-object p0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getTotalBytesRead()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J

    return-wide v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    invoke-direct {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;-><init>()V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->requestTimestamp:J

    .line 125
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->call:Lokhttp3/Call;

    .line 126
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->connection:Lokhttp3/Connection;

    .line 127
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->request:Lokhttp3/Request;

    .line 128
    iget-object v1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->request:Lokhttp3/Request;

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 135
    iput-object v1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->response:Lokhttp3/Response;

    .line 137
    invoke-virtual {v1}, Lokhttp3/Response;->isRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Location"

    .line 138
    invoke-virtual {v1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v2, 0x2

    .line 140
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "TBLHttpDataSource"

    const-string v3, "redirect url from %s to %s"

    invoke-static {p1, v3, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreferRedirectAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iput-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->redirectedAddress:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    const/4 v0, 0x2

    .line 170
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    .line 171
    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TBLHttpDataSource"

    const-string v2, "open data source: %s at %s"

    .line 170
    invoke-static {v1, v2, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreferRedirectAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->originalAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->redirectedAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->originalAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "open: will use redirected address."

    .line 178
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->redirectedAddress:Ljava/lang/String;

    .line 180
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v13, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->originalAddress:Ljava/lang/String;

    :cond_1
    move-object v0, p1

    .line 194
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->setupInterceptor()V

    .line 196
    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v2

    const-string v3, "open: "

    .line 198
    invoke-static {v1, v3, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eq v0, p1, :cond_2

    .line 201
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->innerOpen(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p0

    return-wide p0

    .line 204
    :cond_2
    new-instance v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    invoke-direct {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;-><init>()V

    .line 205
    iget-wide v3, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->openAtTimestamp:J

    iput-wide v3, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->requestTimestamp:J

    .line 206
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;->originalUrl:Ljava/lang/String;

    .line 207
    iget-object p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->printHttpSession()V

    .line 210
    throw v2
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 216
    iget-boolean v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->hasFirstRead:Z

    const-string v1, "TBLHttpDataSource"

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->firstReadTime:J

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->hasFirstRead:Z

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first read at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->firstReadTime:J

    invoke-static {v2, v3}, Lcom/oplus/tblplayer/utils/LogUtil;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSource;->read([BII)I

    move-result p3

    .line 223
    iget-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-lez p3, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    iget-object v2, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->httpSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/upstream/OkHttpSession;

    .line 225
    invoke-virtual {v0}, Lcom/oplus/tblplayer/upstream/OkHttpSession;->needCache()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/tblplayer/upstream/OkHttpSession;->cacheBytes([BII)V

    :cond_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 230
    iget-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->totalBytesRead:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p3

    :catch_0
    move-exception p1

    const-string p2, "read: "

    .line 234
    invoke-static {v1, p2, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    invoke-direct {p0}, Lcom/oplus/tblplayer/upstream/TBLOkHttpDataSource;->printHttpSession()V

    .line 236
    throw p1
.end method
