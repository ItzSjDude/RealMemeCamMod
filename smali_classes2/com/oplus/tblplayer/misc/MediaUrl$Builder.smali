.class public Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
.super Ljava/lang/Object;
.source "MediaUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/misc/MediaUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backupUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/misc/MediaUrl;",
            ">;"
        }
    .end annotation
.end field

.field private cacheKeyFactory:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overrideExtension:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->uri:Landroid/net/Uri;

    .line 248
    iput-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->headers:Ljava/util/Map;

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->backupUrls:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addBackupSourceUrl(Landroid/net/Uri;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->addBackupSourceUrl(Landroid/net/Uri;Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addBackupSourceUrl(Landroid/net/Uri;Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/tblplayer/misc/MediaUrl$Builder;"
        }
    .end annotation

    .line 285
    new-instance v8, Lcom/oplus/tblplayer/misc/MediaUrl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/misc/MediaUrl;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/oplus/tblplayer/misc/MediaUrl$1;)V

    .line 292
    iget-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->backupUrls:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->backupUrls:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addBackupSourceUrl(Ljava/lang/String;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0

    .line 273
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->addBackupSourceUrl(Landroid/net/Uri;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addBackupSourceUrl(Ljava/lang/String;Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/tblplayer/misc/MediaUrl$Builder;"
        }
    .end annotation

    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->addBackupSourceUrl(Landroid/net/Uri;Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/oplus/tblplayer/misc/MediaUrl;
    .locals 9

    .line 300
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v0, Lcom/oplus/tblplayer/misc/MediaUrl;

    iget-object v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->overrideExtension:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->userAgent:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->headers:Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->cacheKeyFactory:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v1, v2}, Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;->buildCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oplus/tblplayer/misc/MediaUrl;->DEFAULT_CACHE_KEY_FACTORY:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

    iget-object v6, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->uri:Landroid/net/Uri;

    .line 307
    invoke-interface {v1, v6}, Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;->buildCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v1

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->backupUrls:Ljava/util/List;

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->backupUrls:Ljava/util/List;

    :goto_1
    move-object v7, p0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oplus/tblplayer/misc/MediaUrl;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/oplus/tblplayer/misc/MediaUrl$1;)V

    return-object v0
.end method

.method public setCacheKeyFactory(Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->cacheKeyFactory:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/tblplayer/misc/MediaUrl$Builder;"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public setOverrideExtension(Ljava/lang/String;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->overrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method
