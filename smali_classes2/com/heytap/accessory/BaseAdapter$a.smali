.class final Lcom/heytap/accessory/BaseAdapter$a;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 792
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAdapter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 798
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p0

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 800
    :try_start_0
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accessory service connected"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    invoke-static {p2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/BaseAdapter;->access$602(Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/api/IFrameworkManager;)Lcom/heytap/accessory/api/IFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    .line 804
    :try_start_1
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/BaseAdapter;->access$600(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 805
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/BaseAdapter;->access$700(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object v3

    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionCode()I

    move-result v4

    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/accessory/BaseAdapter;->access$800(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;

    move-result-object v5

    .line 804
    invoke-interface/range {v0 .. v5}, Lcom/heytap/accessory/api/IFrameworkManager;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 808
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to setup client Identity.Invalid response from Framework"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 811
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    const-string v1, "clientId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/heytap/accessory/BaseAdapter;->access$902(Lcom/heytap/accessory/BaseAdapter;J)J

    .line 812
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/BaseAdapter;->access$900(Lcom/heytap/accessory/BaseAdapter;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 813
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 814
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to setup client Identity.Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "errorcode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 815
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 817
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Client ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/accessory/BaseAdapter;->access$900(Lcom/heytap/accessory/BaseAdapter;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    const-string v0, "com.heytap.accessory.adapter.extra.PROCESS_ID"

    .line 819
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 821
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v1

    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/accessory/BaseAdapter;->access$600(Lcom/heytap/accessory/BaseAdapter;)Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/accessory/BaseAdapter;->access$900(Lcom/heytap/accessory/BaseAdapter;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/heytap/accessory/api/IFrameworkManager;->b(J)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/BaseAdapter;->access$1002(Lcom/heytap/accessory/BaseAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    .line 822
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running in OAF process, Updated my proxy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/accessory/BaseAdapter;->access$1000(Lcom/heytap/accessory/BaseAdapter;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_2
    invoke-static {v0}, Lcom/heytap/accessory/b/g;->a(I)V

    const-string v0, "com.heytap.accessory.adapter.extra.HEADER_LEN"

    .line 825
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/heytap/accessory/b/g;->b(I)V

    const-string v0, "com.heytap.accessory.adapter.extra.FOOTER_LEN"

    .line 826
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/heytap/accessory/b/g;->d(I)V

    const-string v0, "com.heytap.accessory.adapter.extra.MSG_HEADER_LEN"

    .line 827
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/heytap/accessory/b/g;->c(I)V

    const-string v0, "framework_compatible_version"

    .line 828
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/heytap/accessory/b/g;->e(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 830
    :try_start_6
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity."

    invoke-static {v0, v1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 831
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 832
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/heytap/accessory/BaseAdapter;->access$1100(Lcom/heytap/accessory/BaseAdapter;Landroid/os/RemoteException;)V

    .line 835
    :cond_3
    :goto_0
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 836
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/BaseAdapter;->access$1200(Lcom/heytap/accessory/BaseAdapter;)V

    .line 837
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 843
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p0

    monitor-enter p0

    .line 844
    :try_start_0
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accessory service disconnected"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/heytap/accessory/BaseAdapter;->setState(I)V

    .line 846
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$500()Lcom/heytap/accessory/BaseAdapter;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/heytap/accessory/BaseAdapter;->access$1300(Lcom/heytap/accessory/BaseAdapter;Z)V

    .line 847
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
