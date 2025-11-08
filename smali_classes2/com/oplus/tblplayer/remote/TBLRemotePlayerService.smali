.class public Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;
.super Landroid/app/Service;
.source "TBLRemotePlayerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLRemoteService"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->mAppContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TBLRemoteService"

    const-string v0, "onBind"

    .line 55
    invoke-static {p1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->mAppContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/config/Globals;->maybeInitialize(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V

    .line 44
    new-instance v0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService$1;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService$1;-><init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;)V

    iput-object v0, p0, Lcom/oplus/tblplayer/remote/TBLRemotePlayerService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TBLRemoteService"

    const-string v1, "onDestroy"

    .line 68
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "TBLRemoteService"

    const-string v1, "onUnbind"

    .line 61
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
