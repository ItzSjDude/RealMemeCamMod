.class public final Lcom/heytap/accessory/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/BaseAdapter$a;,
        Lcom/heytap/accessory/BaseAdapter$DeathCallbackStub;,
        Lcom/heytap/accessory/BaseAdapter$b;,
        Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSORY_STATUS_CHANGED:Ljava/lang/String; = "com.heytap.accessory.action.ACCESSORY_STATUS_CHANGED"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.heytap.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field private static final BIND_SERVICE_MAX_ATTEMPTS:I = 0x5

.field private static final ERROR_FATAL:I = 0x4e21

.field private static final ERROR_PERMISSION_DENIED:I = 0x4e23

.field private static final ERROR_PERMISSION_FAILED:I = 0x4e24

.field private static final TAG:Ljava/lang/String; = "BaseAdapter"

.field private static sAdapter:Lcom/heytap/accessory/BaseAdapter;


# instance fields
.field private final mAgentCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/heytap/accessory/BaseAdapter$b;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mClientId:J

.field private final mConnection:Lcom/heytap/accessory/BaseAdapter$a;

.field private final mContext:Landroid/content/Context;

.field private final mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

.field private mProxyReceiver:Landroid/os/ResultReceiver;

.field private final mScIndicationCallback:Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;

.field private mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/heytap/accessory/BaseAdapter;->mState:I

    .line 91
    new-instance v1, Lcom/heytap/accessory/BaseAdapter$a;

    invoke-direct {v1, v0}, Lcom/heytap/accessory/BaseAdapter$a;-><init>(B)V

    iput-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mConnection:Lcom/heytap/accessory/BaseAdapter$a;

    .line 92
    new-instance v1, Lcom/heytap/accessory/BaseAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/heytap/accessory/BaseAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

    .line 93
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    .line 94
    new-instance p1, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;

    invoke-direct {p1, p0, v0}, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/heytap/accessory/BaseAdapter;B)V

    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mScIndicationCallback:Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;

    .line 95
    iput-object p2, p0, Lcom/heytap/accessory/BaseAdapter;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/heytap/accessory/BaseAdapter;)Landroid/os/ResultReceiver;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/heytap/accessory/BaseAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/heytap/accessory/BaseAdapter;Landroid/os/RemoteException;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/heytap/accessory/BaseAdapter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAdapter;->notifyConnection()V

    return-void
.end method

.method static synthetic access$1300(Lcom/heytap/accessory/BaseAdapter;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/accessory/BaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAdapter;->doBindFramework()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Lcom/heytap/accessory/BaseAdapter;
    .locals 1

    .line 59
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/api/IFrameworkManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/api/IFrameworkManager;)Lcom/heytap/accessory/api/IFrameworkManager;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/api/IDeathCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mDeathCallback:Lcom/heytap/accessory/api/IDeathCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mScIndicationCallback:Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/heytap/accessory/BaseAdapter;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/heytap/accessory/BaseAdapter;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    return-wide p1
.end method

.method private declared-synchronized cleanup(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 552
    :try_start_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAdapter;->tearFrameworkconnection()V

    .line 555
    :cond_0
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget p1, p1, Lcom/heytap/accessory/BaseAdapter;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 556
    iget-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mConnection:Lcom/heytap/accessory/BaseAdapter$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 559
    :cond_1
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    const/4 p1, 0x0

    .line 560
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 561
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    .line 563
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p1, p1, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/BaseAdapter$b;

    .line 564
    invoke-interface {v0}, Lcom/heytap/accessory/BaseAdapter$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 567
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doBindFramework()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    .line 146
    :try_start_1
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context packageName - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adapter context packageName - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v3, v3, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.heytap.accessory.action.FRAMEWORK_MANAGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/heytap/accessory/Initializer;->useOAFApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.heytap.accessory"

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "accessory_framework_request_package"

    .line 154
    iget-object v3, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    move v3, v2

    .line 158
    :goto_1
    sget-object v4, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-wide v4, v4, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/16 v5, 0x4e21

    if-nez v4, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->getState()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v6, v6, Lcom/heytap/accessory/BaseAdapter;->mConnection:Lcom/heytap/accessory/BaseAdapter$a;

    invoke-virtual {v4, v1, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 166
    :try_start_2
    sget-object v4, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultAdapter: About start waiting"

    invoke-static {v4, v6}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v4, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 169
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 170
    new-instance v2, Lcom/heytap/accessory/bean/GeneralException;

    const-string v3, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v2, v5, v3, v1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    :cond_1
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 162
    new-instance v1, Lcom/heytap/accessory/bean/GeneralException;

    const-string v2, "Is the Accessory Service Framework installed?!"

    invoke-direct {v1, v5, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 174
    :cond_2
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v1, :cond_3

    .line 180
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Application is now connected to Accessory Framework!"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 175
    :cond_3
    :try_start_4
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 177
    new-instance v1, Lcom/heytap/accessory/bean/GeneralException;

    const-string v2, "Unable to bind to Accessory Service!"

    invoke-direct {v1, v5, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :catch_1
    :try_start_5
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 184
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/b/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e24

    const-string v2, "Permission validation failed to bind to  Accessory Service! Please re-install the application and try again."

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 188
    :cond_4
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e23

    const-string v2, "Permission denied to bind to Accessory Service! Please add permission and try again."

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/heytap/accessory/BaseAdapter;
    .locals 3

    const-class v0, Lcom/heytap/accessory/BaseAdapter;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 100
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/heytap/accessory/BaseAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/heytap/accessory/BaseAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 103
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getDefaultAdapter(Landroid/content/Context;Landroid/os/Handler;)Lcom/heytap/accessory/BaseAdapter;
    .locals 2

    const-class v0, Lcom/heytap/accessory/BaseAdapter;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 108
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/heytap/accessory/BaseAdapter;

    invoke-direct {v1, p0, p1}, Lcom/heytap/accessory/BaseAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 112
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized notifyConnection()V
    .locals 2

    monitor-enter p0

    .line 570
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/BaseAdapter$b;

    .line 571
    invoke-interface {v1}, Lcom/heytap/accessory/BaseAdapter$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 574
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyDisconnection(Landroid/os/RemoteException;)V
    .locals 2

    monitor-enter p0

    .line 577
    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 579
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tearFrameworkconnection()V
    .locals 4

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 537
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 540
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v1, v2, v3}, Lcom/heytap/accessory/api/IFrameworkManager;->a(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    :try_start_2
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 542
    :try_start_3
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to tear framework connection"

    invoke-static {v2, v3, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    :try_start_4
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :goto_0
    :try_start_5
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V

    .line 545
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    move-object v1, p0

    const-string v0, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    const-string v2, "acceptServiceConnection:Invalid response from Accessory Framework:"

    const-string v3, "errorcode"

    .line 376
    sget-object v4, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v4, v4, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v4, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 381
    :cond_0
    :try_start_0
    iget-object v5, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v6, v1, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-object v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-interface/range {v5 .. v13}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 387
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "connectionId"

    .line 391
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v4

    .line 393
    :cond_1
    sget-object v3, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_2
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Failed to accept connection request!"

    invoke-direct {v0, v2, v3}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 398
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to accept service connection"

    invoke-static {v2, v3, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 400
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e21

    const-string v2, "acceptServiceConnection:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final authenticatePeeragent(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 469
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 476
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request peer authentication"

    invoke-static {p2, p3, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 478
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "authenticatePeeragent:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final bindToFramework()V
    .locals 2

    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 117
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "It\'s in main thread,need to switch to sub thread!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 119
    sget-object p0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "BackgroundHandler is null, so just return!"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/heytap/accessory/BaseAdapter$1;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/BaseAdapter$1;-><init>(Lcom/heytap/accessory/BaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 134
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAdapter;->doBindFramework()V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 136
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "bindToFramework failed!"

    invoke-static {v0, v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final declared-synchronized checkAuthentication()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/heytap/accessory/api/IFrameworkManager;->a(I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/16 v0, 0x3f1

    .line 248
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    .line 244
    :try_start_2
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Service authenticate failed"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 246
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e21

    const-string v2, "authenticate:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized checkAuthentication(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->a(ILjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 266
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 262
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Service authenticate failed"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 264
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v0, 0x4e21

    const-string v1, "authenticate:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final cleanupAgent(Ljava/lang/String;)V
    .locals 3

    .line 483
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 484
    sget-object p0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Binding to framework does not exists"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 487
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->f(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 489
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to cleanup agent details"

    invoke-static {p1, v0, p0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final cleanupChannel(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 497
    sget-object p0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p1, "cleanupChannel failed, Binding to framework does not exists"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 501
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    int-to-long v4, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 503
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Failed to cleanupChannelCache"

    invoke-static {p1, p2, p0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "authenticatePeeragent:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final closeServiceConnection(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    const/16 p0, 0x4e25

    return p0

    .line 424
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->b(JLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 426
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close service connection"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 428
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string v0, "closeServiceConnection:Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final findPeerAgents(Ljava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x4e21

    .line 347
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v1, :cond_1

    .line 348
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v2, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v3, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    const-wide/16 v5, -0x1

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JJLjava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I

    move-result p0

    return p0

    .line 350
    :cond_1
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const-string p2, "findPeerAgents:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 353
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initiate peer discovery"

    invoke-static {p2, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 355
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const-string p1, "findPeerAgents:Remote call failed"

    invoke-direct {p0, v0, p1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->c(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 516
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get agent details"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 518
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string v0, "getAgentDetails: Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x4e21

    .line 329
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v1, :cond_1

    .line 330
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 332
    :cond_1
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const-string p2, "getAgentId:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 335
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch agent ID"

    invoke-static {p2, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 337
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const-string p1, "getAgentId:Remote call failed"

    invoke-direct {p0, v0, p1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v2, v3, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    .line 303
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "getLocalAgentId failed"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string v0, "errorcode"

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "errorcode"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 306
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getLocalAgentId failed"

    new-instance v3, Lcom/heytap/accessory/bean/GeneralException;

    const-string v4, "Failed to fetch localAgent ID, errorCode = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const-string v0, "agentId"

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 310
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "getLocalAgentId failed"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :goto_1
    monitor-exit p0

    return-object v1

    .line 312
    :cond_4
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 316
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch localAgent ID"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 318
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v0, 0x4e21

    const-string v1, "getLocalAgentId:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final getPackageName()Ljava/lang/String;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iget v0, p0, Lcom/heytap/accessory/BaseAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final getVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x4e21

    .line 221
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v1, :cond_1

    .line 222
    sget-object v1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    invoke-interface {v1}, Lcom/heytap/accessory/api/IFrameworkManager;->a()I

    move-result p0

    return p0

    .line 224
    :cond_1
    new-instance v1, Lcom/heytap/accessory/bean/GeneralException;

    const-string v2, "getVersion:mServiceProxy is null"

    invoke-direct {v1, v0, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 227
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get version"

    invoke-static {v2, v3, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    invoke-direct {p0, v1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 229
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const-string v1, "getVersion:Remote call failed"

    invoke-direct {p0, v0, v1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final isSocketConnected(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 459
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->d(JLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 461
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch socket connection status"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 463
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string v0, "isSocketConnected:Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized recycle([B)V
    .locals 2

    monitor-enter p0

    .line 527
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.heytap.accessory.adapter.extra.READ_BYTES"

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 530
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p1, p1, Lcom/heytap/accessory/BaseAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized registerAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V
    .locals 2

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback added. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final registerMexCallback(Ljava/lang/String;Lcom/heytap/accessory/api/IMsgExpCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 627
    :cond_0
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_1

    .line 628
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/api/IMsgExpCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 632
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register mex callback"

    invoke-static {p2, v0, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 634
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "registerMexCallback: Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized registerServices([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->a(J[B)V

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/accessory/BaseAdapter$b;

    .line 280
    invoke-interface {v0}, Lcom/heytap/accessory/BaseAdapter$b;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 284
    :try_start_2
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Service registration call failed"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 286
    new-instance p1, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v0, 0x4e21

    const-string v1, "registerServices:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final rejectServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 410
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 412
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to reject service connection"

    invoke-static {p2, p3, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 414
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "rejectServiceConnection:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final requestServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 367
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request service connection"

    invoke-static {p2, p3, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 369
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "requestServiceConnection:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I[BZIIIZ)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 433
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v2, v2, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v2, :cond_0

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 438
    :cond_0
    :try_start_0
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendData,connectionId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",channelId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",dataLen:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    array-length v5, v14

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",compatibleVersion:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {}, Lcom/heytap/accessory/b/g;->f()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/heytap/accessory/b/g;->f()I

    move-result v2

    if-lez v2, :cond_1

    .line 441
    iget-object v5, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    invoke-virtual/range {p1 .. p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessoryId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    int-to-long v12, v0

    move-object/from16 v11, p2

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    invoke-interface/range {v5 .. v19}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;JLjava/lang/String;J[BZIIIZ)I

    move-result v0

    return v0

    .line 444
    :cond_1
    iget-object v5, v1, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v6, v1, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    int-to-long v9, v0

    move-object/from16 v8, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-interface/range {v5 .. v15}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;J[BZIII)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    .line 447
    :goto_0
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed send data for connection:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-direct {v1, v0}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 449
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e21

    const-string v2, "send: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final sendMessage(Ljava/lang/String;Ljava/lang/String;J[BZII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    move-object v1, p0

    .line 587
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 591
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/b/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v2, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v3, v1, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-object v5, p1

    move-object v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v2 .. v12}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Ljava/lang/String;J[BZII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 595
    sget-object v2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to send messages "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 597
    new-instance v0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 v1, 0x4e21

    const-string v2, "sendMessage: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x2778

    return v0
.end method

.method final sendMessageDeliveryStatus(JLjava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 610
    :cond_0
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    iget-wide v2, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JJLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 615
    sget-object p2, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to send message delivery status"

    invoke-static {p2, p3, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 617
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string p2, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    .line 212
    :try_start_0
    iput p1, p0, Lcom/heytap/accessory/BaseAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized unregisterAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V
    .locals 2

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback removed. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/heytap/accessory/BaseAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    sget-object p1, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v0, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 203
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final unregisterMexCallback(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 639
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->sAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter;->mServiceProxy:Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v0, :cond_0

    .line 641
    :try_start_0
    iget-wide v1, p0, Lcom/heytap/accessory/BaseAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->e(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 643
    sget-object v0, Lcom/heytap/accessory/BaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister mex callback"

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 645
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    const/16 p1, 0x4e21

    const-string v0, "unregisterMexCallback: Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method
