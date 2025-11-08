.class Lcom/oplus/tblplayer/config/HttpConfig;
.super Ljava/lang/Object;
.source "HttpConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/config/HttpConfig$Builder;
    }
.end annotation


# instance fields
.field public final okhttpCacheControl:Lokhttp3/CacheControl;

.field public final okhttpCallFactory:Lokhttp3/Call$Factory;

.field public final okhttpEnable:Z

.field public final preferRedirectAddress:Z

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/Call$Factory;Lokhttp3/CacheControl;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oplus/tblplayer/config/HttpConfig;->userAgent:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpEnable:Z

    .line 27
    iput-object p3, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCallFactory:Lokhttp3/Call$Factory;

    .line 28
    iput-object p4, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCacheControl:Lokhttp3/CacheControl;

    .line 29
    iput-boolean p5, p0, Lcom/oplus/tblplayer/config/HttpConfig;->preferRedirectAddress:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpConfig{userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", okhttpEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", okhttpCallFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCallFactory:Lokhttp3/Call$Factory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", okhttpCacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/config/HttpConfig;->okhttpCacheControl:Lokhttp3/CacheControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preferRedirectAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/tblplayer/config/HttpConfig;->preferRedirectAddress:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
