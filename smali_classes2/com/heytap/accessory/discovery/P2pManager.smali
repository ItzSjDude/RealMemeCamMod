.class public Lcom/heytap/accessory/discovery/P2pManager;
.super Lcom/heytap/accessory/discovery/BaseManager;
.source "P2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "p2p_"

.field private static final TAG:Ljava/lang/String; = "P2pManager"

.field private static volatile sInstance:Lcom/heytap/accessory/discovery/P2pManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

.field private final mManagerCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/heytap/accessory/discovery/BaseManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;

.field private volatile mService:Lcom/heytap/accessory/api/IWifiP2pService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/BaseManager;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;-><init>(Lcom/heytap/accessory/discovery/P2pManager;B)V

    iput-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mReceiver:Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/heytap/accessory/discovery/P2pManager;)Lcom/heytap/accessory/discovery/IP2pCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

    return-object p0
.end method

.method private bindService(Landroid/content/Context;)Z
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "P2pManager"

    const-string p1, "already bind service"

    .line 228
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 231
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.heytap.accessory.ScanService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.heytap.accessory"

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    const-string v3, "KEY_SUB_SERVICE"

    .line 233
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized bindServiceSync(Landroid/content/Context;)Z
    .locals 6

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/P2pManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "P2pManager"

    const-string v0, "bindServiceSync failed"

    .line 212
    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    monitor-exit p0

    return v2

    :cond_0
    const-wide/16 v3, 0x2328

    .line 216
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "P2pManager"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bind service cost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "P2pManager"

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindServiceSync failed, InterruptedException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "P2pManager"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bind service cost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :goto_1
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v2

    :goto_2
    :try_start_5
    const-string v2, "P2pManager"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bind service cost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/heytap/accessory/discovery/P2pManager;
    .locals 2

    .line 94
    sget-object v0, Lcom/heytap/accessory/discovery/P2pManager;->sInstance:Lcom/heytap/accessory/discovery/P2pManager;

    if-nez v0, :cond_1

    .line 95
    const-class v0, Lcom/heytap/accessory/discovery/P2pManager;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/discovery/P2pManager;->sInstance:Lcom/heytap/accessory/discovery/P2pManager;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/heytap/accessory/discovery/P2pManager;

    invoke-direct {v1}, Lcom/heytap/accessory/discovery/P2pManager;-><init>()V

    sput-object v1, Lcom/heytap/accessory/discovery/P2pManager;->sInstance:Lcom/heytap/accessory/discovery/P2pManager;

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/accessory/discovery/P2pManager;->sInstance:Lcom/heytap/accessory/discovery/P2pManager;

    return-object v0
.end method

.method static synthetic lambda$onSubServiceConnected$0(Lcom/heytap/accessory/discovery/BaseManager$a;)Z
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69
    iput-boolean v1, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    return v0
.end method

.method static synthetic lambda$onSubServiceConnected$1(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method

.method static synthetic lambda$onSubServiceDisconnected$2(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method


# virtual methods
.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/DeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "P2pManager"

    const-string v1, "getConnectedDevices"

    .line 163
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz v1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    invoke-interface {p0}, Lcom/heytap/accessory/api/IWifiP2pService;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string v1, "getConnectedDevices, just bind service"

    .line 168
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/P2pManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    .line 172
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Service not connected."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getFpCoreVersion()I
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getFpCoreVersion()I

    move-result p0

    return p0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p2p_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceVersion()I
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getServiceVersion()I

    move-result p0

    return p0
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/heytap/accessory/discovery/IP2pCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "P2pManager"

    const-string v1, "init"

    .line 105
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

    if-eq v0, p2, :cond_0

    .line 107
    iput-object p2, p0, Lcom/heytap/accessory/discovery/P2pManager;->mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 111
    monitor-exit p0

    return v0

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    .line 114
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/P2pManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 115
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mPackageName:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/P2pManager;->bindServiceSync(Landroid/content/Context;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 117
    monitor-exit p0

    return p2

    .line 119
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initAsync(Landroid/content/Context;Lcom/heytap/accessory/discovery/IP2pCallback;Lcom/heytap/accessory/discovery/IManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    const-string v0, "P2pManager"

    const-string v1, "initAsync"

    .line 123
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

    if-eq v0, p2, :cond_0

    .line 125
    iput-object p2, p0, Lcom/heytap/accessory/discovery/P2pManager;->mIP2pCallback:Lcom/heytap/accessory/discovery/IP2pCallback;

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz p2, :cond_1

    .line 128
    invoke-interface {p3}, Lcom/heytap/accessory/discovery/IManagerCallback;->onInited()V

    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    .line 132
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/P2pManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 133
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mPackageName:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 135
    :try_start_0
    iget-object p2, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    new-instance v0, Lcom/heytap/accessory/discovery/BaseManager$a;

    invoke-direct {v0, p3}, Lcom/heytap/accessory/discovery/BaseManager$a;-><init>(Lcom/heytap/accessory/discovery/IManagerCallback;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/P2pManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "P2pManager"

    const-string p2, "initAsync, bind ScanService failed"

    .line 138
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/P2pManager;->onSubServiceDisconnected()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 136
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public joinP2p(Lcom/heytap/accessory/bean/DeviceInfo;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "P2pManager"

    const-string v1, "joinP2p"

    .line 176
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IWifiP2pService;->a(Lcom/heytap/accessory/bean/DeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "device null exception"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Service not connected."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public leaveP2p(Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "P2pManager"

    const-string v1, "leaveP2p"

    .line 187
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IWifiP2pService;->b(Lcom/heytap/accessory/bean/DeviceInfo;)V

    return-void

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "device null exception"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Service not connected."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public bridge synthetic onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method protected onSubBindService(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/P2pManager;->bindServiceSync(Landroid/content/Context;)Z

    return-void
.end method

.method protected onSubServiceConnected(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V
    .locals 2

    const-string v0, "P2pManager"

    const-string v1, "onSubServiceConnected"

    .line 53
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-interface {p1}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->c()Lcom/heytap/accessory/api/IWifiP2pService;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    .line 57
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mReceiver:Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;

    invoke-interface {p1, v0}, Lcom/heytap/accessory/api/IWifiP2pService;->a(Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;)Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 62
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 66
    iget-object p1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 67
    :try_start_2
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$Axxg5eyQWGDUPCtyFAF3GW-ehSo;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$Axxg5eyQWGDUPCtyFAF3GW-ehSo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$B4ULtdBQjesc0mOI7ZQxjXxZczw;

    .line 71
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 72
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    sget-object p1, Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_1
    move-exception p0

    .line 72
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 64
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected onSubServiceDisconnected()V
    .locals 3

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    .line 79
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$ih4wMVxU11VbIFrbzku40ZuZH0s;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$P2pManager$ih4wMVxU11VbIFrbzku40ZuZH0s;

    .line 82
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 83
    iget-object p0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    sget-object p0, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "P2pManager"

    const-string v1, "release"

    .line 148
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    iget-object v1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mReceiver:Lcom/heytap/accessory/discovery/P2pManager$WifiP2pChangeReceiver;

    invoke-interface {v0, v1}, Lcom/heytap/accessory/api/IWifiP2pService;->b(Lcom/heytap/accessory/api/IWifiP2pChangeReceiver;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mService:Lcom/heytap/accessory/api/IWifiP2pService;

    .line 156
    iput-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mContext:Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/discovery/P2pManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 159
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/P2pManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
