.class Lcom/heytap/accessory/api/GenericAdapter$1;
.super Ljava/lang/Object;
.source "GenericAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/GenericAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 84
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p0

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {p2}, Lcom/heytap/accessory/api/IGenFrameworkManager$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;Lcom/heytap/accessory/api/IGenFrameworkManager;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    .line 86
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/GenericAdapter;->b(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected: packageName: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "packageName"

    .line 89
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sdkVersionCode"

    .line 90
    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Getting CMxmlreader instance"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/GenericAdapter;->c(Lcom/heytap/accessory/api/GenericAdapter;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 94
    :try_start_1
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/GenericAdapter;->c(Lcom/heytap/accessory/api/GenericAdapter;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p2

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    .line 95
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 97
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "response is null"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "clientId"

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    const-string v0, "clientId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;J)J

    .line 101
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/GenericAdapter;->c(Lcom/heytap/accessory/api/GenericAdapter;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    move-result-object p1

    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/GenericAdapter;->d(Lcom/heytap/accessory/api/GenericAdapter;)J

    move-result-wide v0

    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->j()Lcom/heytap/accessory/api/ICMDeathCallback;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/heytap/accessory/api/IGenFrameworkManager;->a(JLcom/heytap/accessory/api/ICMDeathCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    :try_start_2
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_0
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 108
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/os/ResultReceiver;)Z

    .line 111
    :cond_2
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Client ID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->d(Lcom/heytap/accessory/api/GenericAdapter;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->k()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 113
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->k()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    :cond_3
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected: Just notified"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 72
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p0

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnected from Generic service"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;Lcom/heytap/accessory/api/IGenFrameworkManager;)Lcom/heytap/accessory/api/IGenFrameworkManager;

    .line 75
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;J)J

    .line 76
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Lcom/heytap/accessory/api/GenericAdapter;->h()Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/api/GenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object p1

    const/16 v0, 0x4e21

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
