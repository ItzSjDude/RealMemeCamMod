.class public Lcom/heytap/accessory/api/GenericAdapter;
.super Ljava/lang/Object;
.source "GenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;
    }
.end annotation


# static fields
.field static a:Landroid/content/ServiceConnection; = null

.field private static final b:Ljava/lang/String; = "GenericAdapter"

.field private static volatile c:Lcom/heytap/accessory/api/GenericAdapter;

.field private static d:Lcom/heytap/accessory/api/ICMDeathCallback;

.field private static e:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private f:Landroid/os/ResultReceiver;

.field private g:J

.field private h:Landroid/content/Context;

.field private i:Lcom/heytap/accessory/api/IGenFrameworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/heytap/accessory/api/GenericAdapter$1;

    invoke-direct {v0}, Lcom/heytap/accessory/api/GenericAdapter$1;-><init>()V

    sput-object v0, Lcom/heytap/accessory/api/GenericAdapter;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    .line 126
    iput-object p1, p0, Lcom/heytap/accessory/api/GenericAdapter;->h:Landroid/content/Context;

    .line 127
    new-instance p0, Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/heytap/accessory/api/GenericAdapter;->d:Lcom/heytap/accessory/api/ICMDeathCallback;

    return-void
.end method

.method static synthetic a(Lcom/heytap/accessory/api/GenericAdapter;J)J
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    return-wide p1
.end method

.method private declared-synchronized a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "statusCode"

    const/4 p2, -0x1

    .line 207
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    sget-object p1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string p2, "proxy is null, maybe you need to bind oaf service."

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-object v0

    .line 212
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 216
    monitor-exit p0

    return-object p1

    .line 214
    :cond_1
    :try_start_2
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "command not support:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", please update oaf."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/os/ResultReceiver;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;
    .locals 3

    .line 131
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_1

    .line 132
    const-class v0, Lcom/heytap/accessory/api/GenericAdapter;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/heytap/accessory/api/GenericAdapter;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/api/GenericAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    .line 136
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    if-nez v0, :cond_5

    .line 140
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/heytap/accessory/api/GenericAdapter;->e:Ljava/util/concurrent/CountDownLatch;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.heytap.accessory.action.BASE_FRAMEWORK_MANAGER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/heytap/accessory/Initializer;->useOAFApp()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.heytap.accessory"

    .line 143
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :goto_1
    sget-object v2, Lcom/heytap/accessory/api/GenericAdapter;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 150
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v0, "bind INTENT_BASE_FRAMEWORK_SERVICE failed!"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;

    if-eqz p0, :cond_3

    .line 152
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;

    const/16 v0, 0x4e21

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 154
    :cond_3
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    return-object p0

    .line 157
    :cond_4
    :try_start_1
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v0, "start count down latch"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 160
    :catch_0
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v0, "bind GAdapter error."

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_5
    :goto_2
    sget-object p0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/heytap/accessory/api/GenericAdapter;Lcom/heytap/accessory/api/IGenFrameworkManager;)Lcom/heytap/accessory/api/IGenFrameworkManager;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    return-object p1
.end method

.method static synthetic b(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter;->h:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 1

    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 430
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 431
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 432
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method static synthetic c(Lcom/heytap/accessory/api/GenericAdapter;)Lcom/heytap/accessory/api/IGenFrameworkManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    return-object p0
.end method

.method static synthetic d(Lcom/heytap/accessory/api/GenericAdapter;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    return-wide v0
.end method

.method static synthetic h()Lcom/heytap/accessory/api/GenericAdapter;
    .locals 1

    .line 49
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Lcom/heytap/accessory/api/ICMDeathCallback;
    .locals 1

    .line 49
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->d:Lcom/heytap/accessory/api/ICMDeathCallback;

    return-object v0
.end method

.method static synthetic k()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 49
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/heytap/accessory/accessorymanager/ConnectConfig;)I
    .locals 7

    monitor-enter p0

    const/4 v0, -0x1

    .line 192
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-virtual {p1}, Lcom/heytap/accessory/accessorymanager/ConnectConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    iget-object v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v3, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v5, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "statusCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    :try_start_2
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: connect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/heytap/accessory/bean/TrafficControlConfig;)I
    .locals 6

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/TrafficControlConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 285
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v1, "setTrafficControlConfig = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "statusCode"

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 290
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    .line 292
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;II)I
    .locals 7

    monitor-enter p0

    const/4 v0, -0x1

    .line 225
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "address"

    .line 226
    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "transportType"

    .line 227
    invoke-virtual {v6, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "uuid"

    .line 228
    invoke-virtual {v6, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    iget-object v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v3, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "statusCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    :try_start_2
    sget-object p2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "exception: disconnect "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)I
    .locals 6

    monitor-enter p0

    .line 297
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_dormant_state"

    .line 298
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "statusCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 302
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    .line 305
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B[B)I
    .locals 6

    monitor-enter p0

    .line 257
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "connect_param_device_id"

    .line 258
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "connect_param_ksc_alias"

    .line 259
    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x14

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "statusCode"

    .line 263
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 265
    :try_start_2
    sget-object p2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    .line 267
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B[B[B)I
    .locals 6

    monitor-enter p0

    .line 240
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "connect_param_device_id"

    .line 241
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "connect_param_ksc_alias"

    .line 242
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "connect_param_ksc"

    .line 243
    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 244
    sget-object p3, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adapter setKsc, deviceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", alias:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {p2}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p3, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "statusCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 251
    :try_start_2
    sget-object p2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    .line 253
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/ServiceProfile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accessoryId"

    .line 385
    invoke-virtual {v6, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :try_start_1
    iget-object v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v3, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v5, 0xc

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 391
    const-class v2, Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "statusCode"

    const/4 v3, -0x1

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "remoteServices"

    .line 393
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    :cond_0
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return accessoryId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " services size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 397
    :try_start_2
    sget-object p2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAvailableServices exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/ResultReceiver;)Z
    .locals 8

    monitor-enter p0

    .line 175
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v1, "Register callback"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 177
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iput-object p1, v0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;

    const-string v0, "resultReceiver"

    .line 178
    invoke-direct {p0, p1}, Lcom/heytap/accessory/api/GenericAdapter;->b(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :try_start_1
    iget-object v3, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v4, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/4 v6, 0x6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "statusCode"

    const/4 v1, -0x1

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 182
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 185
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b([B[B)I
    .locals 6

    monitor-enter p0

    .line 271
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "connect_param_device_id"

    .line 272
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "connect_param_ksc_alias"

    .line 273
    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x15

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "statusCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 278
    :try_start_2
    sget-object p2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    .line 280
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()[B
    .locals 6

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x16

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_local_device_id"

    .line 312
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v2, "getPresentDeviceId null"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v2, "getPresentDeviceId success"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 320
    :try_start_1
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPresentDeviceId exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 322
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0x17

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_local_device_type"

    .line 327
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/AccountInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 333
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v1, "adapter getAccountInfoArray = "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 338
    const-class v1, Lcom/heytap/accessory/bean/AccountInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "connect_param_account_size"

    .line 339
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 341
    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_2
    const-string v1, "connect_param_account_list"

    .line 343
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    :try_start_3
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    :goto_0
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/PeerAccessory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    iget-object v2, p0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    iget-wide v3, p0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 372
    const-class v2, Lcom/heytap/accessory/bean/PeerAccessory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "statusCode"

    const/4 v3, -0x1

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "connectedAccessories"

    .line 374
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 377
    :try_start_2
    sget-object v2, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 6

    monitor-enter p0

    .line 403
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 404
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 406
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v1, v0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-wide v2, v0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    const/4 v4, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/IGenFrameworkManager;JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "statusCode"

    const/4 v2, -0x1

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v1, "Framework connection terminated successfully."

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    :try_start_2
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    :goto_0
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/api/GenericAdapter;->h:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 415
    :try_start_3
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/api/GenericAdapter;->h:Landroid/content/Context;

    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 417
    :try_start_4
    sget-object v1, Lcom/heytap/accessory/api/GenericAdapter;->b:Ljava/lang/String;

    const-string v2, "exception: unbind"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    :cond_1
    :goto_1
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/heytap/accessory/api/GenericAdapter;->i:Lcom/heytap/accessory/api/IGenFrameworkManager;

    .line 422
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/heytap/accessory/api/GenericAdapter;->g:J

    .line 423
    sget-object v0, Lcom/heytap/accessory/api/GenericAdapter;->c:Lcom/heytap/accessory/api/GenericAdapter;

    iput-object v1, v0, Lcom/heytap/accessory/api/GenericAdapter;->f:Landroid/os/ResultReceiver;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 425
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
