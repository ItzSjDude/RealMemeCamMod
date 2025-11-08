.class public final Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConnectionIndicationReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-class v0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {p1}, Lcom/heytap/accessory/b/d;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/b/d;->a(Ljava/lang/String;)Lcom/heytap/accessory/bean/ServiceProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string p2, "fetch service profile description failed !!"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string p2, "config  util default instance  creation failed !!"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    iget-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Incoming service connection request received."

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/b/g;

    invoke-direct {v0, p1}, Lcom/heytap/accessory/b/g;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "agentImplclass"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Impl class not available in intent. Ignoring request"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Connection request will be handled by :"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 75
    :cond_1
    const-class v1, Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {v1, v0}, Lcom/heytap/accessory/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 77
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x15

    if-lt v3, v6, :cond_2

    if-lt v1, v6, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 82
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_3

    if-lt v1, v7, :cond_3

    move v4, v5

    .line 85
    :cond_3
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const-string v0, "transactionId"

    const-wide/16 v3, 0x0

    .line 88
    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "agentId"

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "peerAgent"

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/heytap/accessory/bean/PeerAgent;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-static/range {v1 .. v6}, Lcom/heytap/accessory/BaseJobService;->scheduleSCJob(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 96
    iget-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startForegroundService"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    .line 103
    iget-object p1, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Agent "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 107
    iget-object p0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Agent Impl class not found!"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 58
    iget-object p0, p0, Lcom/heytap/accessory/platform/ServiceConnectionIndicationReceiver;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDK config init failed."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
