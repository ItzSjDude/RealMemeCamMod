.class public Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;
.super Landroid/app/Service;
.source "RemoteCacheManagerService.java"


# static fields
.field protected static final DESCRIPTOR:Ljava/lang/String; = "RemoteCacheManagerService"

.field protected static final M_ADD_LISTENER:I = 0x4

.field protected static final M_LISTENER_FLAG:I = 0x5

.field protected static final M_START_CACHE:I = 0x1

.field protected static final M_STOP_ALL:I = 0x3

.field protected static final M_STOP_CACHE:I = 0x2


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected createService()Landroid/os/IBinder;
    .locals 1

    .line 34
    new-instance v0, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;

    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/cache/service/CacheManagerStub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    invoke-virtual {p0}, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->mAppContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/config/Globals;->maybeInitialize(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V

    .line 30
    invoke-virtual {p0}, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->createService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/cache/service/RemoteCacheManagerService;->mBinder:Landroid/os/IBinder;

    return-void
.end method
