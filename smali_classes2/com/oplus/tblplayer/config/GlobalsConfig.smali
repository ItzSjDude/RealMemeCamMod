.class public Lcom/oplus/tblplayer/config/GlobalsConfig;
.super Ljava/lang/Object;
.source "GlobalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/config/GlobalsConfig$Builder;
    }
.end annotation


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final debug:Z

.field public final httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

.field public final preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

.field public final remoteEnable:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;ZZLcom/oplus/tblplayer/config/HttpConfig;Lcom/oplus/tblplayer/config/PreCacheConfig;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->appContext:Landroid/content/Context;

    .line 28
    iput-boolean p2, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->debug:Z

    .line 29
    iput-boolean p3, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->remoteEnable:Z

    .line 30
    iput-object p4, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->httpConfig:Lcom/oplus/tblplayer/config/HttpConfig;

    .line 31
    iput-object p5, p0, Lcom/oplus/tblplayer/config/GlobalsConfig;->preCacheConfig:Lcom/oplus/tblplayer/config/PreCacheConfig;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZZLcom/oplus/tblplayer/config/HttpConfig;Lcom/oplus/tblplayer/config/PreCacheConfig;Lcom/oplus/tblplayer/config/GlobalsConfig$1;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/oplus/tblplayer/config/GlobalsConfig;-><init>(Landroid/content/Context;ZZLcom/oplus/tblplayer/config/HttpConfig;Lcom/oplus/tblplayer/config/PreCacheConfig;)V

    return-void
.end method
