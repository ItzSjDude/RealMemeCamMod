.class public Lcom/heytap/accessory/discovery/CentralManager;
.super Lcom/heytap/accessory/discovery/BaseManager;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;,
        Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;,
        Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;,
        Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;,
        Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;,
        Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_MODE_CUSTOMIZE:I = 0x2

.field public static final AUTHENTICATION_MODE_PIN:I = 0x1

.field public static final ERROR_AUTHENTICATION_FAILED:I = -0x1

.field public static final ERROR_DEVICE:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PAIR_CONNECT_FAILED:I = -0x3

.field private static final PREFIX:Ljava/lang/String; = "ctl_"

.field private static final TAG:Ljava/lang/String; = "CentralManager"

.field private static volatile sInstance:Lcom/heytap/accessory/discovery/CentralManager;


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private volatile mService:Lcom/heytap/accessory/api/ICentralService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/BaseManager;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/discovery/CentralManager;->startScanInternal(Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/heytap/accessory/discovery/CentralManager;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/CentralManager;->cancelScanInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->cancelPairInternal(Lcom/heytap/accessory/bean/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heytap/accessory/discovery/CentralManager;IZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager;->enableDiscoverabilityInternal(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)I
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager;->directPairInternal(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)I

    move-result p0

    return p0
.end method

.method private bindService(Landroid/content/Context;)Z
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "CentralManager"

    const-string p1, "already bind service"

    .line 532
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 535
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.heytap.accessory.ScanService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.heytap.accessory"

    .line 536
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_SUB_SERVICE"

    .line 537
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized bindServiceSync(Landroid/content/Context;)Z
    .locals 6

    monitor-enter p0

    .line 542
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 543
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CentralManager"

    const-string v0, "bindServiceSync failed"

    .line 544
    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 545
    monitor-exit p0

    return p1

    :cond_0
    const-wide/16 v2, 0x2328

    .line 548
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "CentralManager"

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind service cost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    const-string v2, "CentralManager"

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindServiceSync failed, InterruptedException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "CentralManager"

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind service cost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    .line 555
    monitor-exit p0

    return p1

    :goto_2
    :try_start_5
    const-string v2, "CentralManager"

    .line 553
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

    .line 554
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private cancelPairInternal(Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 399
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 403
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/bean/DeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 405
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cancelScanInternal()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 263
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0}, Lcom/heytap/accessory/api/ICentralService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 269
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkLocationIsAvailableInternal(Lcom/heytap/accessory/discovery/c;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 387
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    new-instance v2, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;

    invoke-direct {v2, p0, p1}, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/c;)V

    invoke-interface {v0, v2}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/api/IPermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 393
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private directPairInternal(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)I
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 478
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 483
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    new-instance v0, Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;

    invoke-direct {v0, p2}, Lcom/heytap/accessory/discovery/CentralManager$DirectPairCallbackNative;-><init>(Lcom/heytap/accessory/discovery/IDirectCallback;)V

    invoke-interface {p0, p1, v0}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/api/IDirectPairCallback;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 485
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x7

    :goto_0
    if-eqz p0, :cond_1

    .line 489
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "directPair failed, err: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance p1, Lcom/heytap/accessory/bean/Message;

    invoke-direct {p1}, Lcom/heytap/accessory/bean/Message;-><init>()V

    .line 491
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/Message;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_msg_error_code"

    .line 492
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    new-instance v0, Lcom/heytap/accessory/bean/DeviceInfo;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/DeviceInfo;-><init>()V

    invoke-interface {p2, v0, p1}, Lcom/heytap/accessory/discovery/IDirectCallback;->onPairFailure(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V

    :cond_1
    return p0
.end method

.method private earlyPairInternal(Lcom/heytap/accessory/bean/DeviceInfo;)I
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 285
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 290
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/ICentralService;->b(Lcom/heytap/accessory/bean/DeviceInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 292
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x7

    :goto_0
    if-eqz p0, :cond_1

    .line 296
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "earlyPair failed, err: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private enableDiscoverabilityInternal(IZ)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 432
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 436
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/ICentralService;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 438
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getInstance()Lcom/heytap/accessory/discovery/CentralManager;
    .locals 2

    .line 87
    sget-object v0, Lcom/heytap/accessory/discovery/CentralManager;->sInstance:Lcom/heytap/accessory/discovery/CentralManager;

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lcom/heytap/accessory/discovery/CentralManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/discovery/CentralManager;->sInstance:Lcom/heytap/accessory/discovery/CentralManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/heytap/accessory/discovery/CentralManager;

    invoke-direct {v1}, Lcom/heytap/accessory/discovery/CentralManager;-><init>()V

    sput-object v1, Lcom/heytap/accessory/discovery/CentralManager;->sInstance:Lcom/heytap/accessory/discovery/CentralManager;

    .line 92
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/accessory/discovery/CentralManager;->sInstance:Lcom/heytap/accessory/discovery/CentralManager;

    return-object v0
.end method

.method static synthetic lambda$onSubServiceConnected$0(Lcom/heytap/accessory/discovery/BaseManager$a;)Z
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 117
    iput-boolean v1, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    return v0
.end method

.method static synthetic lambda$onSubServiceConnected$1(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method

.method static synthetic lambda$onSubServiceDisconnected$2(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method

.method private packFilterBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/discovery/IScanFilter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 521
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 523
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/discovery/IScanFilter;

    .line 524
    invoke-interface {v0}, Lcom/heytap/accessory/discovery/IScanFilter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private startPairInternal(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/discovery/IPairCallback;)I
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 333
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 338
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    new-instance v2, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;

    invoke-direct {v2, p0, p3}, Lcom/heytap/accessory/discovery/CentralManager$PairCallbackNative;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/IPairCallback;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/api/IDisPairCallback;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x7

    :goto_0
    if-eqz p0, :cond_1

    .line 344
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "startPair failed, err: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_msg_error_code"

    .line 346
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    invoke-interface {p3, p2, p1}, Lcom/heytap/accessory/discovery/IPairCallback;->onPairFailure(Lcom/heytap/accessory/bean/DeviceInfo;Landroid/os/Bundle;)V

    :cond_1
    return p0
.end method

.method private startScanInternal(Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/accessory/bean/ScanSetting;",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/discovery/IScanFilter;",
            ">;",
            "Lcom/heytap/accessory/discovery/IScanCallback;",
            ")I"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    const-string v1, "CentralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 221
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-direct {p0, p2}, Lcom/heytap/accessory/discovery/CentralManager;->packFilterBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v2, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;

    invoke-direct {v2, p0, p3}, Lcom/heytap/accessory/discovery/CentralManager$ScanCallbackNative;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/IScanCallback;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/bean/ScanSetting;Landroid/os/Bundle;Lcom/heytap/accessory/api/IDisScanCallback;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x2

    :goto_0
    if-eqz p0, :cond_1

    .line 233
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "startScan failed, err: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {p3}, Lcom/heytap/accessory/discovery/IScanCallback;->onCancel()V

    :cond_1
    return p0
.end method


# virtual methods
.method public cancelPair(Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelPair, deviceInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->cancelPairInternal(Lcom/heytap/accessory/bean/DeviceInfo;)V

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 362
    new-instance v1, Lcom/heytap/accessory/discovery/CentralManager$3;

    invoke-direct {v1, p0, p1}, Lcom/heytap/accessory/discovery/CentralManager$3;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DeviceInfo;)V

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/CentralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    return-void

    :cond_1
    const/4 p0, 0x2

    const-string p1, "cancelPair failed, service and context is null"

    .line 370
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 p0, 0x3

    const-string p1, "deviceInfo shouldn\'t be null"

    .line 355
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public cancelScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/CentralManager;->cancelScanInternal()V

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 245
    new-instance v1, Lcom/heytap/accessory/discovery/CentralManager$2;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/discovery/CentralManager$2;-><init>(Lcom/heytap/accessory/discovery/CentralManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/CentralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    return-void

    :cond_1
    const/4 p0, 0x2

    const-string v0, "cancelScan failed, service and context is null"

    .line 253
    invoke-static {p0, v0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public checkDiscoverability(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/ICentralService;->a(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CentralManager"

    .line 449
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "checkDiscoverability failed, service is null"

    .line 444
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public checkLocationIsAvailable(Lcom/heytap/accessory/discovery/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    const-string v0, "CentralManager"

    const-string v1, "checkPresentIsAvailable"

    .line 374
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->checkLocationIsAvailableInternal(Lcom/heytap/accessory/discovery/c;)V

    return-void

    :cond_0
    const/4 p0, 0x2

    const-string p1, "checkLocationIsAvailable fail"

    .line 382
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x3

    const-string p1, "grantCallback shouldn\'t be null"

    .line 376
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public directPair(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 461
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager;->directPairInternal(Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)I

    move-result p0

    return p0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 465
    new-instance v1, Lcom/heytap/accessory/discovery/CentralManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager$5;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DirectPairInfo;Lcom/heytap/accessory/discovery/IDirectCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/CentralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    const-string p1, "directPair failed, service is null"

    .line 473
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const-string p0, "callback shouldn\'t be null"

    .line 459
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "directPairInfo shouldn\'t be null"

    .line 456
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public earlyPair(Lcom/heytap/accessory/bean/DeviceInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->earlyPairInternal(Lcom/heytap/accessory/bean/DeviceInfo;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "earlyPair failed, service and context is null"

    .line 280
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x3

    const-string p1, "deviceInfo shouldn\'t be null"

    .line 275
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public enableDiscoverability(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableDiscoverability, major: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager;->enableDiscoverabilityInternal(IZ)V

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 418
    new-instance v1, Lcom/heytap/accessory/discovery/CentralManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager$4;-><init>(Lcom/heytap/accessory/discovery/CentralManager;IZ)V

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/CentralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    return-void

    :cond_1
    const/4 p0, 0x2

    const-string p1, "enableDiscoverability failed, service and context is null"

    .line 426
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public findPairedLanDevices(Lcom/heytap/accessory/discovery/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    new-instance v0, Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;

    invoke-direct {v0, p1}, Lcom/heytap/accessory/discovery/CentralManager$INsdDevicesNative;-><init>(Lcom/heytap/accessory/discovery/b;)V

    invoke-interface {p0, v0}, Lcom/heytap/accessory/api/ICentralService;->a(Lcom/heytap/accessory/api/INsdDevicesCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CentralManager"

    .line 516
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p0, 0x2

    const-string p1, "directPair failed, service is null"

    .line 511
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic getFpCoreVersion()I
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getFpCoreVersion()I

    move-result p0

    return p0
.end method

.method public getLanCacheIp(Ljava/lang/String;Lcom/heytap/accessory/discovery/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    new-instance v0, Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;

    invoke-direct {v0, p2}, Lcom/heytap/accessory/discovery/CentralManager$ILanCacheIpNative;-><init>(Lcom/heytap/accessory/discovery/a;)V

    invoke-interface {p0, p1, v0}, Lcom/heytap/accessory/api/ICentralService;->a(Ljava/lang/String;Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CentralManager"

    .line 505
    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p0, 0x2

    const-string p1, "directPair failed, service is null"

    .line 500
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ctl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceVersion()I
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getServiceVersion()I

    move-result p0

    return p0
.end method

.method public declared-synchronized init(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CentralManager"

    const-string v1, "init"

    .line 143
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    monitor-exit p0

    return v1

    .line 148
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    .line 149
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/CentralManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 150
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mPackageName:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->bindServiceSync(Landroid/content/Context;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 152
    monitor-exit p0

    return v0

    .line 154
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initAsync(Landroid/content/Context;Lcom/heytap/accessory/discovery/IManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    const-string v0, "CentralManager"

    const-string v1, "initAsync"

    .line 158
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2}, Lcom/heytap/accessory/discovery/IManagerCallback;->onInited()V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    .line 164
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/CentralManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 165
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mPackageName:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    new-instance v1, Lcom/heytap/accessory/discovery/BaseManager$a;

    invoke-direct {v1, p2}, Lcom/heytap/accessory/discovery/BaseManager$a;-><init>(Lcom/heytap/accessory/discovery/IManagerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CentralManager"

    const-string p2, "initAsync, bind ScanService failed"

    .line 170
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/CentralManager;->onSubServiceDisconnected()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 168
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public bridge synthetic onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method protected onSubBindService(Landroid/content/Context;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/CentralManager;->bindServiceSync(Landroid/content/Context;)Z

    return-void
.end method

.method protected onSubServiceConnected(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V
    .locals 2

    const-string v0, "CentralManager"

    const-string v1, "onSubServiceConnected"

    .line 104
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-interface {p1}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->a()Lcom/heytap/accessory/api/ICentralService;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    .line 108
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

    .line 110
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 114
    iget-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 115
    :try_start_2
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$RexlCtuHx2Grww1FiUYykr8VhcM;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$MGKx_lPPrfGOX3h9iad0BOKGRcE;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$MGKx_lPPrfGOX3h9iad0BOKGRcE;

    .line 119
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 120
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    sget-object p1, Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_1
    move-exception p0

    .line 120
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 112
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected onSubServiceDisconnected()V
    .locals 3

    const-string v0, "CentralManager"

    const-string v1, "onSubServiceDisconnected"

    .line 126
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    .line 128
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$solQWTHdIRfSIlj_yFef7AL3Jhg;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$CentralManager$solQWTHdIRfSIlj_yFef7AL3Jhg;

    .line 131
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 132
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sget-object p0, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 133
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CentralManager"

    const-string v1, "release"

    .line 180
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    .line 186
    iput-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 189
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/CentralManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveModelId([B[B)V
    .locals 4

    const-string v0, "CentralManager"

    :try_start_0
    const-string v1, "save modelId and remoteDeviceId"

    .line 721
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "business_type"

    const/4 v3, 0x1

    .line 723
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "model_id"

    .line 724
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "remote_device_id"

    .line 725
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 726
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    invoke-interface {p0, v1}, Lcom/heytap/accessory/api/ICentralService;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 728
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public startPair(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/discovery/IPairCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/heytap/accessory/bean/PairSetting$Builder;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/PairSetting$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/PairSetting$Builder;->build()Lcom/heytap/accessory/bean/PairSetting;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/heytap/accessory/discovery/CentralManager;->startPair(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/discovery/IPairCallback;)I

    move-result p0

    return p0
.end method

.method public startPair(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/discovery/IPairCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 306
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startPair, deviceInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 316
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/discovery/CentralManager;->startPairInternal(Lcom/heytap/accessory/bean/PairSetting;Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/discovery/IPairCallback;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "startPair failed, service and context is null"

    .line 328
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "callback shouldn\'t be null"

    .line 314
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const-string p0, "deviceInfo shouldn\'t be null"

    .line 311
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "setting shouldn\'t be null"

    .line 308
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public startScan(Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/accessory/bean/ScanSetting;",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/discovery/IScanFilter;",
            ">;",
            "Lcom/heytap/accessory/discovery/IScanCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eqz p3, :cond_2

    .line 203
    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mService:Lcom/heytap/accessory/api/ICentralService;

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/discovery/CentralManager;->startScanInternal(Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I

    move-result p0

    return p0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 208
    new-instance v0, Lcom/heytap/accessory/discovery/CentralManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/heytap/accessory/discovery/CentralManager$1;-><init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)V

    invoke-virtual {p0, v1, v0}, Lcom/heytap/accessory/discovery/CentralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "startScan failed, service and context is null"

    .line 216
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const-string p0, "startScan failed, callback is null"

    .line 197
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_3
    const/4 p0, 0x3

    const-string p1, "setting shouldn\'t be null"

    .line 194
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method
