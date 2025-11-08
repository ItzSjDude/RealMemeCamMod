.class public Lcom/heytap/accessory/file/FileTransferManager;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/file/FileTransferManager$b;,
        Lcom/heytap/accessory/file/FileTransferManager$a;,
        Lcom/heytap/accessory/file/FileTransferManager$DeathCallbackStub;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "FileTransferManager"

.field private static d:Lcom/heytap/accessory/file/FileTransferManager;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/accessory/file/FileTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/heytap/accessory/file/a;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:Lcom/heytap/accessory/file/FileTransferManager$b;


# instance fields
.field b:Lcom/heytap/accessory/file/FileTransferManager$a;

.field c:Landroid/content/ServiceConnection;

.field private j:Landroid/content/Context;

.field private k:Lcom/heytap/accessory/api/IDeathCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/heytap/accessory/file/FileTransferManager;->e:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/heytap/accessory/file/FileTransferManager;->f:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/heytap/accessory/file/FileTransferManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/heytap/accessory/file/FileTransferManager;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/heytap/accessory/file/FileTransferManager$1;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/file/FileTransferManager$1;-><init>(Lcom/heytap/accessory/file/FileTransferManager;)V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/heytap/accessory/file/FileTransferManager;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/heytap/accessory/file/FileTransferManager;Lcom/heytap/accessory/file/FileTransferManager$a;)Lcom/heytap/accessory/file/FileTransferManager$a;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    return-object p1
.end method

.method static synthetic a(Lcom/heytap/accessory/file/FileTransferManager$b;)Lcom/heytap/accessory/file/FileTransferManager$b;
    .locals 0

    .line 62
    sput-object p0, Lcom/heytap/accessory/file/FileTransferManager;->i:Lcom/heytap/accessory/file/FileTransferManager$b;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransferManager;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    const-class v0, Lcom/heytap/accessory/file/FileTransferManager;

    monitor-enter v0

    .line 146
    :try_start_0
    const-class v1, Lcom/heytap/accessory/file/FileTransferManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 147
    :try_start_1
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v2, v2, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-nez v2, :cond_3

    .line 148
    :cond_0
    new-instance v2, Lcom/heytap/accessory/file/FileTransferManager;

    invoke-direct {v2}, Lcom/heytap/accessory/file/FileTransferManager;-><init>()V

    .line 149
    sput-object v2, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iput-object p0, v2, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    .line 150
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.heytap.accessory.IAfFtManager"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    sget-object v3, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v3, v3, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/heytap/accessory/file/FTInitializer;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e21

    if-eqz v3, :cond_5

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    sget-object v3, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v5, "getInstance: bindService before"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v3, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v3, v3, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    sget-object v5, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v5, v5, Lcom/heytap/accessory/file/FileTransferManager;->c:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 161
    :try_start_3
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "SAFTAdapter: About start waiting"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 164
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 166
    :goto_0
    sget-boolean v2, Lcom/heytap/accessory/file/FileTransferManager;->h:Z

    if-eqz v2, :cond_1

    .line 167
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "getInstance: Woken up , FTService Connected"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_1
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const-string v2, "Timed out trying to bind to FT Service!"

    invoke-direct {p1, v4, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 172
    :cond_2
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "getInstance: FTService Connection Failed"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 179
    :try_start_5
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is using FTService"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    .line 181
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    monitor-exit v0

    return-object p0

    .line 177
    :cond_4
    :try_start_6
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Calling agent was cleared from record. Please re-register your service."

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 154
    :cond_5
    :try_start_7
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const-string v2, "Package name is null!"

    invoke-direct {p1, v4, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 174
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    :catchall_1
    move-exception p0

    .line 181
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .line 196
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    if-eqz p0, :cond_2

    .line 199
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 200
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 201
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    const/4 p0, 0x0

    .line 202
    sput-boolean p0, Lcom/heytap/accessory/file/FileTransferManager;->h:Z

    .line 203
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->i:Lcom/heytap/accessory/file/FileTransferManager$b;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/heytap/accessory/file/FileTransferManager$b;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 205
    sput-object v0, Lcom/heytap/accessory/file/FileTransferManager;->i:Lcom/heytap/accessory/file/FileTransferManager$b;

    .line 207
    :cond_0
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v0, "File transfer service disconnected"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_1
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v0, "Other applications are still using this FT binding"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_2
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v0, "FT already unbound for this package. Please check whether the calling agent was registered"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/heytap/accessory/file/a;)V
    .locals 1

    .line 545
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/heytap/accessory/bean/PeerAgent;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PeerAccessory;->supportFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Lcom/heytap/accessory/file/FileTransfer;Ljava/lang/String;)Z
    .locals 1

    .line 186
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_0
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p1, "file register : exist"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 62
    sput-boolean p0, Lcom/heytap/accessory/file/FileTransferManager;->h:Z

    return p0
.end method

.method static synthetic b()Lcom/heytap/accessory/file/FileTransferManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/heytap/accessory/file/a;
    .locals 1

    .line 498
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/file/a;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "AccessoryPreferences"

    const/16 v3, 0x1a

    if-le v0, v3, :cond_0

    .line 360
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 364
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 366
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Agent id was not found in prefs! Fetching from framework,agentName:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/BaseAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/heytap/accessory/BaseAdapter;

    move-result-object p0

    .line 369
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/heytap/accessory/BaseAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p1, "Fetching from framework failed "

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 375
    :cond_1
    :goto_1
    sget-object p1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAgentId :"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic c()Lcom/heytap/accessory/file/FileTransferManager;
    .locals 1

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/heytap/accessory/file/FileTransfer;
    .locals 1

    .line 577
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/file/FileTransfer;

    return-object p0
.end method

.method static synthetic d()Lcom/heytap/accessory/file/FileTransferManager$b;
    .locals 1

    .line 62
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->i:Lcom/heytap/accessory/file/FileTransferManager$b;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 62
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/file/FileTransfer$c;Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 231
    invoke-static/range {p4 .. p4}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    invoke-direct/range {p0 .. p2}, Lcom/heytap/accessory/file/FileTransferManager;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    if-eqz p5, :cond_0

    .line 239
    new-instance v0, Ljava/io/File;

    move-object/from16 v3, p6

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v18, Lcom/heytap/accessory/file/a/f;

    invoke-virtual/range {p4 .. p4}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessoryId()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, v18

    move-object/from16 v7, v16

    move-object/from16 v13, p5

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v15}, Lcom/heytap/accessory/file/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/file/a/c;

    const/4 v2, 0x4

    invoke-virtual/range {v18 .. v18}, Lcom/heytap/accessory/file/a/f;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object/from16 v0, v17

    .line 250
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 251
    iget-object v2, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 3601
    iget-object v2, v2, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 251
    invoke-virtual {v0}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    goto :goto_1

    .line 253
    :cond_1
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v2, "sendFile: invalid state or req is null"

    invoke-static {v0, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object/from16 v0, v17

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v2, "STATUS"

    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ID"

    .line 263
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 266
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/heytap/accessory/file/FileTransferManager;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 267
    sget-object v3, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v4, "Register death callback fail."

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v2, p3

    .line 270
    invoke-virtual {v1, v2, v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v2, "File Pushed and Callback registered"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 v0, -0x1

    return v0

    .line 232
    :cond_5
    new-instance v0, Lcom/heytap/accessory/bean/UnSupportException;

    const-string v1, "the peer agent doesn\'t support the file feature, please check"

    invoke-direct {v0, v1}, Lcom/heytap/accessory/bean/UnSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/accessory/file/FileTransfer$c;Lcom/heytap/accessory/bean/PeerAgent;Landroid/net/Uri;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 281
    invoke-static/range {p5 .. p5}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_b

    .line 287
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1000

    if-gt v0, v2, :cond_a

    .line 293
    invoke-direct/range {p0 .. p2}, Lcom/heytap/accessory/file/FileTransferManager;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    if-eqz p6, :cond_5

    const-string v10, "null"

    .line 300
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p6

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 302
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v4, "send File: query cursor null"

    invoke-static {v0, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return v17

    .line 305
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_size"

    .line 306
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "_display_name"

    .line 307
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 308
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send File: fileSize = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " fileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 310
    :cond_2
    :try_start_4
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v4, "send File: empty"

    invoke-static {v0, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v4, v14

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide v4, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide v4, v14

    move-object/from16 v3, v18

    .line 313
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 316
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v11, v4

    move-object v13, v10

    .line 319
    new-instance v0, Lcom/heytap/accessory/file/a/f;

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessoryId()J

    move-result-wide v9

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const-string v5, ""

    move-object v3, v0

    move-object/from16 v6, p3

    move-object v8, v2

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, p2

    invoke-direct/range {v3 .. v16}, Lcom/heytap/accessory/file/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_6
    new-instance v3, Lcom/heytap/accessory/file/a/c;

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/heytap/accessory/file/a/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 324
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v3, :cond_4

    .line 316
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_4
    throw v0

    :cond_5
    :goto_4
    move-object/from16 v3, v18

    .line 329
    :goto_5
    :try_start_7
    iget-object v0, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 330
    iget-object v0, v1, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 4601
    iget-object v0, v0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 330
    invoke-virtual {v3}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    goto :goto_6

    .line 332
    :cond_6
    sget-object v0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v3, "sendFile: invalid state or req is null"

    invoke-static {v0, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    move-object/from16 v0, v18

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string v3, "STATUS"

    .line 341
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ID"

    .line 342
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_7
    move/from16 v0, v17

    .line 345
    :goto_7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/heytap/accessory/file/FileTransferManager;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 346
    sget-object v2, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v4, "Register death callback fail."

    invoke-static {v2, v4}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    move-object/from16 v2, p4

    .line 349
    invoke-virtual {v1, v2, v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 350
    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v2, "File Pushed and Callback registered"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    return v17

    .line 289
    :cond_a
    new-instance v0, Lcom/heytap/accessory/bean/UnSupportException;

    const-string v1, "the param fileInfo is too long!"

    invoke-direct {v0, v1}, Lcom/heytap/accessory/bean/UnSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "current task should not use in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_c
    new-instance v0, Lcom/heytap/accessory/bean/UnSupportException;

    const-string v1, "the peer agent doesn\'t support the file feature, please check"

    invoke-direct {v0, v1}, Lcom/heytap/accessory/bean/UnSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Lcom/heytap/accessory/file/FileTransfer$c;JILandroid/net/Uri;Z)V
    .locals 8

    if-eqz p6, :cond_0

    .line 505
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p6, "Could not register file event callback. Declining transfer."

    invoke-static {p0, p6}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v0, p1

    move-wide v1, p2

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 510
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/heytap/accessory/file/FileTransferManager;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 511
    sget-object p1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string v0, "Register death callback fail."

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/4 p1, 0x5

    if-eqz p5, :cond_2

    .line 516
    :try_start_1
    new-instance v7, Lcom/heytap/accessory/file/a/e;

    .line 517
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-wide v1, p2

    move v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/heytap/accessory/file/a/e;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 518
    new-instance p2, Lcom/heytap/accessory/file/a/c;

    invoke-virtual {v7}, Lcom/heytap/accessory/file/a/e;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 520
    :cond_2
    new-instance p5, Lcom/heytap/accessory/file/a/e;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p5

    move-wide v1, p2

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/heytap/accessory/file/a/e;-><init>(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 521
    new-instance p2, Lcom/heytap/accessory/file/a/c;

    invoke-virtual {p5}, Lcom/heytap/accessory/file/a/e;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x0

    .line 525
    iget-object p3, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz p3, :cond_3

    .line 526
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 7601
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 526
    invoke-virtual {p2}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_4

    const-string p0, "receiveStatus"

    .line 530
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 531
    sget-object p1, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p2, "receiveStatus:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_4
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p1, "File Transfer Daemon could not queue request"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 536
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 539
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method final a(JJ)Z
    .locals 7

    .line 484
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->k:Lcom/heytap/accessory/api/IDeathCallback;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/heytap/accessory/file/FileTransferManager$DeathCallbackStub;

    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->d:Lcom/heytap/accessory/file/FileTransferManager;

    iget-object v1, v1, Lcom/heytap/accessory/file/FileTransferManager;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/accessory/file/FileTransferManager$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->k:Lcom/heytap/accessory/api/IDeathCallback;

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 6601
    iget-object v1, v0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 489
    iget-object v2, p0, Lcom/heytap/accessory/file/FileTransferManager;->k:Lcom/heytap/accessory/api/IDeathCallback;

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/heytap/accessory/core/IFileManager;->a(Lcom/heytap/accessory/api/IDeathCallback;JJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 492
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method final a(Lcom/heytap/accessory/file/FileTransfer$c;I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v0, :cond_0

    .line 454
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 5601
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 454
    new-instance v0, Lcom/heytap/accessory/file/FileCallbackReceiver;

    sget-object v1, Lcom/heytap/accessory/file/FileTransferManager;->i:Lcom/heytap/accessory/file/FileTransferManager$b;

    invoke-direct {v0, v1, p1}, Lcom/heytap/accessory/file/FileCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/heytap/accessory/file/FileTransfer$c;)V

    invoke-interface {p0, p2, v0}, Lcom/heytap/accessory/core/IFileManager;->a(ILandroid/os/ResultReceiver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 457
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final c(Ljava/lang/String;)I
    .locals 3

    .line 553
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/file/a/a;

    invoke-direct {v0, p1}, Lcom/heytap/accessory/file/a/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 556
    :try_start_1
    new-instance v1, Lcom/heytap/accessory/file/a/c;

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/heytap/accessory/file/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/heytap/accessory/file/a/c;-><init>(ILorg/json/JSONObject;)V

    .line 557
    iget-object v0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    if-eqz v0, :cond_0

    .line 558
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager;->b:Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 8601
    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    .line 558
    invoke-virtual {v1}, Lcom/heytap/accessory/file/a/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/heytap/accessory/core/IFileManager;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 561
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string p0, "receiveStatus"

    .line 565
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 568
    :cond_1
    sget-object p0, Lcom/heytap/accessory/file/FileTransferManager;->a:Ljava/lang/String;

    const-string p1, "File Transfer Daemon could not queue request"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 570
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
