.class public final Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
.super Ljava/lang/Object;
.source "GlobalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/config/GlobalsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private debug:Z

.field private httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

.field private httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

.field private preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

.field private preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

.field private remoteEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-boolean v0, Lcom/oplus/tblplayer/config/Globals;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->debug:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->remoteEnable:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    .line 42
    iput-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->context:Landroid/content/Context;

    .line 46
    new-instance p1, Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-direct {p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    .line 47
    new-instance p1, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-direct {p1}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/tblplayer/config/GlobalsConfig;
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->build()Lcom/oplus/tblplayer/config/HttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    .line 110
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->build()Lcom/oplus/tblplayer/config/PreCacheConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    .line 111
    new-instance v0, Lcom/oplus/tblplayer/config/GlobalsConfig;

    iget-object v2, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->debug:Z

    iget-boolean v4, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->remoteEnable:Z

    iget-object v5, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v6, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/tblplayer/config/GlobalsConfig;-><init>(Landroid/content/Context;ZZLcom/oplus/tblplayer/config/HttpConfig;Lcom/oplus/tblplayer/config/PreCacheConfig;Lcom/oplus/tblplayer/config/GlobalsConfig$1;)V

    return-object v0
.end method

.method public setDebug(Z)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->debug:Z

    return-object p0
.end method

.method public setMaxCacheDirSize(J)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->setMaxCacheDirSize(J)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    return-object p0
.end method

.method public setMaxCacheFileSize(J)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->setMaxCacheFileSize(J)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    return-object p0
.end method

.method public setOkhttpCacheControl(Lokhttp3/CacheControl;)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->setOkhttpCacheControl(Lokhttp3/CacheControl;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    return-object p0
.end method

.method public setOkhttpCallFactory(Lokhttp3/Call$Factory;)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->setOkhttpCallFactory(Lokhttp3/Call$Factory;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    return-object p0
.end method

.method public setOkhttpEnable(Z)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->setOkhttpEnable(Z)Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    return-object p0
.end method

.method public setPreCacheDir(Ljava/lang/String;)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->setPreCacheDir(Ljava/lang/String;)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    return-object p0
.end method

.method public setPreCacheEnable(Z)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->preCacheConfigBuilder:Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;->setPreCacheEnable(Z)Lcom/oplus/tblplayer/config/PreCacheConfig$Builder;

    return-object p0
.end method

.method public setPreferRedirectAddress(Z)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->setPreferRedirectAddress(Z)Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    return-object p0
.end method

.method public setRemoteEnable(Z)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->remoteEnable:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;->httpConfigBuilder:Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->setUserAgent(Ljava/lang/String;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;

    return-object p0
.end method
