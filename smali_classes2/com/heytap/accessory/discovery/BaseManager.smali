.class abstract Lcom/heytap/accessory/discovery/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/discovery/BaseManager$a;,
        Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;,
        Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THREAD_NAME:Ljava/lang/String; = "BGT"

.field public static final FASTPAIR_CORE_VERSION_10200:I = 0x27d8

.field private static final TAG:Ljava/lang/String; = "BaseManager"


# instance fields
.field private mBgThreadPool:Ljava/util/concurrent/Executor;

.field private mClientId:J

.field private mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

.field private mFpCoreVersion:I

.field private mScIndicationCallback:Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;

.field private mServiceVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$_dDb41UQzzI8-WqrymSFfU45D7Y;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$_dDb41UQzzI8-WqrymSFfU45D7Y;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mBgThreadPool:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static initAFMAccessory(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.heytap.accessory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 166
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 167
    :goto_0
    invoke-static {p0}, Lcom/heytap/accessory/Initializer;->initContext(Landroid/content/Context;)V

    .line 168
    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->setOAFSdkVersion(I)V

    .line 169
    sget-object p0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "AF version: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 171
    :catch_0
    sget-object p0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    const-string v0, "AF not installed"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance p0, Lcom/heytap/accessory/bean/SdkUnsupportedException;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 162
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument: context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BGT"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$runOnBackGround$2(Lcom/heytap/accessory/discovery/d;)V
    .locals 3

    .line 91
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runOnBackGround MSG_RUN_RUNNABLE andSdk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Lcom/heytap/accessory/discovery/d;->a()V

    :cond_0
    return-void
.end method

.method private makeDiscoveryConnection(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V
    .locals 6

    .line 139
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 140
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/heytap/accessory/discovery/BaseManager;->mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v4

    iget-object v5, p0, Lcom/heytap/accessory/discovery/BaseManager;->mScIndicationCallback:Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;

    move-object v0, p1

    .line 139
    invoke-interface/range {v0 .. v5}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 142
    sget-object p0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnected failed, invalid response"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "client_id"

    const-wide/16 v1, -0x1

    .line 145
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/heytap/accessory/discovery/BaseManager;->mClientId:J

    .line 146
    iget-wide v3, p0, Lcom/heytap/accessory/discovery/BaseManager;->mClientId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 147
    sget-object p0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected failed, invalid clientId, error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "service_version"

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mServiceVersion:I

    const-string v0, "fp_core_version"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/heytap/accessory/discovery/BaseManager;->mFpCoreVersion:I

    .line 153
    sget-object p1, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received clientId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/heytap/accessory/discovery/BaseManager;->mClientId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serviceVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/discovery/BaseManager;->mServiceVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fpcoreVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mFpCoreVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 156
    sget-object p1, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getFpCoreVersion()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mFpCoreVersion:I

    return p0
.end method

.method protected abstract getPackageName()Ljava/lang/String;
.end method

.method public getServiceVersion()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mServiceVersion:I

    return p0
.end method

.method public synthetic lambda$runOnBackGround$1$BaseManager(Landroid/content/Context;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runOnBackGround MSG_BIND_SERVICE andSdk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->onSubBindService(Landroid/content/Context;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trace-onServiceConnected, ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Lcom/heytap/accessory/api/IDiscoveryNativeService$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDiscoveryNativeService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 61
    sget-object p0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnected failed, service is null"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance p2, Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;

    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/heytap/accessory/discovery/BaseManager;->mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

    .line 65
    new-instance p2, Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;-><init>(Lcom/heytap/accessory/discovery/BaseManager;B)V

    iput-object p2, p0, Lcom/heytap/accessory/discovery/BaseManager;->mScIndicationCallback:Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;

    .line 66
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->makeDiscoveryConnection(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->onSubServiceConnected(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "trace-onServiceDisconnected, ComponentName: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/BaseManager;->onSubServiceDisconnected()V

    return-void
.end method

.method protected abstract onSubBindService(Landroid/content/Context;)V
.end method

.method protected abstract onSubServiceConnected(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V
.end method

.method protected abstract onSubServiceDisconnected()V
.end method

.method protected runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/heytap/accessory/discovery/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "runOnBackGround"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mBgThreadPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$EdlnWeM8H5l8-i5mDEa9-QedNug;

    invoke-direct {v1, p0, p1}, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$EdlnWeM8H5l8-i5mDEa9-QedNug;-><init>(Lcom/heytap/accessory/discovery/BaseManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager;->mBgThreadPool:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$aMieKosyIF9uIP9iv30hlIzfv5M;

    invoke-direct {p1, p2}, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$aMieKosyIF9uIP9iv30hlIzfv5M;-><init>(Lcom/heytap/accessory/discovery/d;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
