.class public final Lcom/oplus/tblplayer/config/HttpConfig$Builder;
.super Ljava/lang/Object;
.source "HttpConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/config/HttpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private okhttpCacheControl:Lokhttp3/CacheControl;

.field private okhttpCallFactory:Lokhttp3/Call$Factory;

.field private okhttpEnable:Z

.field private preferRedirectAddress:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/oplus/tblplayer/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->userAgent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpEnable:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCallFactory:Lokhttp3/Call$Factory;

    .line 47
    iput-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCacheControl:Lokhttp3/CacheControl;

    .line 48
    iput-boolean v0, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->preferRedirectAddress:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/tblplayer/config/HttpConfig;
    .locals 13

    .line 76
    iget-boolean v0, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpEnable:Z

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v2, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->userAgent:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCallFactory:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    :cond_0
    move-object v4, v1

    iget-object v5, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCacheControl:Lokhttp3/CacheControl;

    iget-boolean v6, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->preferRedirectAddress:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/tblplayer/config/HttpConfig;-><init>(Ljava/lang/String;ZLokhttp3/Call$Factory;Lokhttp3/CacheControl;Z)V

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lcom/oplus/tblplayer/config/HttpConfig;

    iget-object v8, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->userAgent:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oplus/tblplayer/config/HttpConfig;-><init>(Ljava/lang/String;ZLokhttp3/Call$Factory;Lokhttp3/CacheControl;Z)V

    return-object v0
.end method

.method public setOkhttpCacheControl(Lokhttp3/CacheControl;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public setOkhttpCallFactory(Lokhttp3/Call$Factory;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpCallFactory:Lokhttp3/Call$Factory;

    return-object p0
.end method

.method public setOkhttpEnable(Z)Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->okhttpEnable:Z

    return-object p0
.end method

.method public setPreferRedirectAddress(Z)Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->preferRedirectAddress:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/tblplayer/config/HttpConfig$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method
