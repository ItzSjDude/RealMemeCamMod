.class public Lcom/heytap/accessory/discovery/PeripheralManager;
.super Lcom/heytap/accessory/discovery/BaseManager;
.source "PeripheralManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;
    }
.end annotation


# static fields
.field public static final ADVERTISE_FAILED_ALREADY_STARTED:I = 0x3

.field public static final ADVERTISE_FAILED_DATA_TOO_LARGE:I = 0x1

.field public static final ADVERTISE_FAILED_FEATURE_UNSUPPORTED:I = 0x5

.field public static final ADVERTISE_FAILED_INTERNAL_ERROR:I = 0x4

.field public static final ADVERTISE_FAILED_SETUP_SERVER:I = 0x64

.field public static final ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:I = 0x2

.field public static final CONNECT_RESULT_AGREE:I = 0x1

.field public static final CONNECT_RESULT_AUTH_CUSTOMIZE:I = 0x4

.field public static final CONNECT_RESULT_AUTH_PIN:I = 0x3

.field public static final CONNECT_RESULT_REJECT:I = 0x2

.field public static final ERROR_AUTHENTICATION_FAILED:I = 0x1

.field public static final ERROR_DEVICE:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PAIR_CONNECT_FAILED:I = 0x3

.field private static final PREFIX:Ljava/lang/String; = "ppl_"

.field private static final TAG:Ljava/lang/String; = "PeripheralManager"

.field private static volatile sInstance:Lcom/heytap/accessory/discovery/PeripheralManager;


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

.field private mPreRdi:[B

.field private volatile mService:Lcom/heytap/accessory/api/IPeripheralService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/BaseManager;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/accessory/discovery/PeripheralManager;Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/PeripheralManager;->startAdvertisingInternal(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heytap/accessory/discovery/PeripheralManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->stopAdvertisingInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/accessory/discovery/PeripheralManager;)[B
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPreRdi:[B

    return-object p0
.end method

.method static synthetic access$202(Lcom/heytap/accessory/discovery/PeripheralManager;[B)[B
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPreRdi:[B

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)Z
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "PeripheralManager"

    const-string p1, "already bind service"

    .line 431
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 434
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.heytap.accessory.ScanService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.heytap.accessory"

    .line 435
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "KEY_SUB_SERVICE"

    .line 436
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized bindServiceSync(Landroid/content/Context;)Z
    .locals 6

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 414
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PeripheralManager"

    const-string v0, "bindServiceSync failed"

    .line 415
    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 416
    monitor-exit p0

    return p1

    :cond_0
    const-wide/16 v2, 0x2328

    .line 419
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "PeripheralManager"

    .line 424
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
    const-string v2, "PeripheralManager"

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindServiceSync failed, InterruptedException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "PeripheralManager"

    .line 424
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

    .line 426
    monitor-exit p0

    return p1

    :goto_2
    :try_start_5
    const-string v2, "PeripheralManager"

    .line 424
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

    .line 425
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/heytap/accessory/discovery/PeripheralManager;
    .locals 2

    .line 134
    sget-object v0, Lcom/heytap/accessory/discovery/PeripheralManager;->sInstance:Lcom/heytap/accessory/discovery/PeripheralManager;

    if-nez v0, :cond_1

    .line 136
    const-class v1, Lcom/heytap/accessory/discovery/PeripheralManager;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/discovery/PeripheralManager;->sInstance:Lcom/heytap/accessory/discovery/PeripheralManager;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/heytap/accessory/discovery/PeripheralManager;

    invoke-direct {v0}, Lcom/heytap/accessory/discovery/PeripheralManager;-><init>()V

    .line 140
    sput-object v0, Lcom/heytap/accessory/discovery/PeripheralManager;->sInstance:Lcom/heytap/accessory/discovery/PeripheralManager;

    .line 142
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$onSubServiceConnected$0(Lcom/heytap/accessory/discovery/BaseManager$a;)Z
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 107
    iput-boolean v1, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    return v0
.end method

.method static synthetic lambda$onSubServiceConnected$1(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method

.method static synthetic lambda$onSubServiceDisconnected$2(Lcom/heytap/accessory/discovery/BaseManager$a;)Lcom/heytap/accessory/discovery/IManagerCallback;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-object p0
.end method

.method private rebuildSetting(Lcom/heytap/accessory/bean/AdvertiseSetting;)Lcom/heytap/accessory/bean/AdvertiseSetting;
    .locals 3

    .line 441
    new-instance v0, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPreRdi:[B

    if-nez v1, :cond_0

    return-object p1

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getAdditionData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setAdditionData([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 446
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getAdvertiseMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setAdvertiseMode(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getAdvertiseType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setAdvertiseType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 448
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getConnectType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setConnectType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getDurationMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setDurationMillis(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 450
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getGoIntent()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setGoIntent(B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 451
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getIsCancelAdv()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setIsCancelAdv(Z)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getKeyType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setKeyType(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 453
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getMajor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setMajor(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getModelId()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setModelId([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 455
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getNickName()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setNickName([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setPort(I)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    const/4 v1, 0x6

    .line 457
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 458
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getRdi()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getRdi()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/AdvertiseSetting;->getRdi()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setRdi([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    goto :goto_1

    .line 459
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPreRdi:[B

    invoke-virtual {v0, p0}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->setRdi([B)Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;

    .line 463
    :goto_1
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/AdvertiseSetting$Builder;->build()Lcom/heytap/accessory/bean/AdvertiseSetting;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private startAdvertisingInternal(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)V
    .locals 3

    const-string v0, "PeripheralManager"

    const-string v1, "startAdvertisingInternal"

    .line 387
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    if-nez v1, :cond_0

    const-string p0, "service is null"

    .line 389
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    new-instance v2, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;

    invoke-direct {v2, p0, p2}, Lcom/heytap/accessory/discovery/PeripheralManager$PeripheralCallbackNative;-><init>(Lcom/heytap/accessory/discovery/PeripheralManager;Lcom/heytap/accessory/discovery/IPeplCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/api/IPeripheralCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 395
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    invoke-interface {p2}, Lcom/heytap/accessory/discovery/IPeplCallback;->onAdvertiseFailure()V

    return-void
.end method

.method private stopAdvertisingInternal()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    const-string v1, "PeripheralManager"

    if-nez v0, :cond_0

    const-string p0, "service is null"

    .line 402
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    invoke-interface {p0}, Lcom/heytap/accessory/api/IPeripheralService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 408
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public createGroup(Lcom/heytap/accessory/discovery/IPeplCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    const-string p0, "PeripheralManager"

    const-string p1, "disable createGroup without debug"

    .line 277
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getFpCoreVersion()I
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/heytap/accessory/discovery/BaseManager;->getFpCoreVersion()I

    move-result p0

    return p0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ppl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceVersion()I
    .locals 0

    .line 50
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
    const-string v0, "PeripheralManager"

    const-string v1, "init"

    .line 148
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 151
    monitor-exit p0

    return v1

    .line 153
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    .line 154
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 155
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPackageName:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->bindServiceSync(Landroid/content/Context;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 157
    monitor-exit p0

    return v0

    .line 159
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;
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

    const-string v0, "PeripheralManager"

    const-string v1, "initAsync"

    .line 163
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {p2}, Lcom/heytap/accessory/discovery/IManagerCallback;->onInited()V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    .line 169
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->initAFMAccessory(Landroid/content/Context;)V

    .line 170
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mPackageName:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    new-instance v1, Lcom/heytap/accessory/discovery/BaseManager$a;

    invoke-direct {v1, p2}, Lcom/heytap/accessory/discovery/BaseManager$a;-><init>(Lcom/heytap/accessory/discovery/IManagerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PeripheralManager"

    const-string p2, "initAsync, bind ScanService failed"

    .line 175
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->onSubServiceDisconnected()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public bridge synthetic onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method protected onSubBindService(Landroid/content/Context;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->bindServiceSync(Landroid/content/Context;)Z

    return-void
.end method

.method protected onSubServiceConnected(Lcom/heytap/accessory/api/IDiscoveryNativeService;)V
    .locals 2

    const-string v0, "PeripheralManager"

    const-string v1, "onSubServiceConnected"

    .line 94
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-interface {p1}, Lcom/heytap/accessory/api/IDiscoveryNativeService;->b()Lcom/heytap/accessory/api/IPeripheralService;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    .line 98
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

    .line 100
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 104
    iget-object p1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter p1

    .line 105
    :try_start_2
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$AGx5qn1vbXBcUeyTAlEwCyNZv7I;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$AGx5qn1vbXBcUeyTAlEwCyNZv7I;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$7EAhaF8vq3z9OBu-CxK0MtRR8xo;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$7EAhaF8vq3z9OBu-CxK0MtRR8xo;

    .line 109
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 110
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    sget-object p1, Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$jao6ooJJhKIvmFGirPbP16Y1-xA;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_1
    move-exception p0

    .line 110
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 102
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected onSubServiceDisconnected()V
    .locals 3

    const-string v0, "PeripheralManager"

    const-string v1, "onSubServiceDisconnected"

    .line 116
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    .line 118
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$pK0QK3PW7tCLUI2vmeZa7nNZEhE;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$PeripheralManager$pK0QK3PW7tCLUI2vmeZa7nNZEhE;

    .line 121
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    sget-object p0, Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;->INSTANCE:Lcom/heytap/accessory/discovery/-$$Lambda$x6LUMI97ky_K7TrH0qnHNFk4Ol8;

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 123
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
    const-string v0, "PeripheralManager"

    const-string v1, "release"

    .line 185
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    .line 190
    iput-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mManagerCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 193
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

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public responseAuthenticate(Lcom/heytap/accessory/bean/DeviceInfo;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseAuthenticate, deviceInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", agree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeripheralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/DeviceInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 269
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "responseAuthenticate failed, service is null"

    .line 264
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x3

    const-string p1, "deviceInfo shouldn\'t be null"

    .line 261
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public responseConnect(Lcom/heytap/accessory/bean/DeviceInfo;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseConnect, deviceInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeripheralManager"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    const/4 v2, 0x4

    if-gt p2, v2, :cond_1

    .line 246
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IPeripheralService;->a(Lcom/heytap/accessory/bean/DeviceInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 252
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "responseConnect failed, service is null"

    .line 247
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    .line 244
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "unknown connect result: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const-string p0, "deviceInfo shouldn\'t be null"

    .line 241
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public startAdvertise(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 203
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/PeripheralManager;->rebuildSetting(Lcom/heytap/accessory/bean/AdvertiseSetting;)Lcom/heytap/accessory/bean/AdvertiseSetting;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->getServiceVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/heytap/accessory/bean/AdvertiseSetting;->setServiceVersion(I)V

    .line 205
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/discovery/PeripheralManager;->startAdvertisingInternal(Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)V

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 210
    new-instance v2, Lcom/heytap/accessory/discovery/PeripheralManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/heytap/accessory/discovery/PeripheralManager$1;-><init>(Lcom/heytap/accessory/discovery/PeripheralManager;Lcom/heytap/accessory/bean/AdvertiseSetting;Lcom/heytap/accessory/discovery/IPeplCallback;)V

    invoke-virtual {p0, v0, v2}, Lcom/heytap/accessory/discovery/PeripheralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    return v1

    :cond_1
    const/4 p0, 0x2

    const-string p1, "startAdvertise failed, service and context is null"

    .line 218
    invoke-static {p0, p1}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_2
    const-string p0, "callback shouldn\'t be null"

    .line 201
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "setting shouldn\'t be null"

    .line 198
    invoke-static {v0, p0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method

.method public stopAdvertise()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/DiscoveryException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mService:Lcom/heytap/accessory/api/IPeripheralService;

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/heytap/accessory/discovery/PeripheralManager;->stopAdvertisingInternal()V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/discovery/PeripheralManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 227
    new-instance v1, Lcom/heytap/accessory/discovery/PeripheralManager$2;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/discovery/PeripheralManager$2;-><init>(Lcom/heytap/accessory/discovery/PeripheralManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/discovery/PeripheralManager;->runOnBackGround(Landroid/content/Context;Lcom/heytap/accessory/discovery/d;)V

    return-void

    :cond_1
    const/4 p0, 0x2

    const-string v0, "stopAdvertise failed, service and context is null"

    .line 235
    invoke-static {p0, v0}, Lcom/heytap/accessory/bean/DiscoveryException;->create(ILjava/lang/String;)Lcom/heytap/accessory/bean/DiscoveryException;

    move-result-object p0

    throw p0
.end method
