.class public Lcom/oplus/epona/ipc/local/DefaultTransferController;
.super Ljava/lang/Object;
.source "DefaultTransferController.java"

# interfaces
.implements Lcom/oplus/epona/ipc/local/RemoteTransferController;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultTransferController"


# instance fields
.field private final mBinderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Ljava/util/Map;

    return-void
.end method

.method private dispatcherProviderExist()Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000

    const-string v2, "com.oplus.appplatform.dispatcher"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 56
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.appplatform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/epona/ipc/remote/Dispatcher;->findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v1, p1}, Lcom/oplus/epona/utils/ProviderUtils;->findRemoteBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    .line 62
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "DefaultTransferController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 67
    iget-object v3, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :try_start_0
    new-instance v3, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;

    invoke-direct {v3, p0, p1}, Lcom/oplus/epona/ipc/local/-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4;-><init>(Lcom/oplus/epona/ipc/local/DefaultTransferController;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/oplus/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 74
    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "Get remote binder null. ComponentName : %s"

    invoke-static {v1, p1, p0}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public synthetic lambda$fetch$0$DefaultTransferController(Ljava/lang/String;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    .line 28
    invoke-direct {p0}, Lcom/oplus/epona/ipc/local/DefaultTransferController;->dispatcherProviderExist()Z

    move-result p0

    const-string v0, "DefaultTransferController"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 29
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DispatcherProvider is not exist"

    invoke-static {v0, p1, p0}, Lcom/oplus/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.appplatform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1, p3, v3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 38
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.oplus.epona.Dispatcher.TRANSFER_KEY"

    .line 39
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    .line 40
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    const-string v3, "com.oplus.appplatform.dispatcher"

    const-string v4, "com.oplus.epona.Dispatcher.REGISTER_TRANSFER"

    invoke-virtual {p0, v3, v4, p3, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p3, "REGISTER_TRANSFER_RESULT"

    .line 44
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    if-nez p0, :cond_3

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Register "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "==>"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed for \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is already registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/oplus/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public remoteSnapshot()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/oplus/epona/ipc/local/DefaultTransferController;->dispatcherProviderExist()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.oplus.appplatform.dispatcher"

    const-string v2, "com.oplus.epona.Dispatcher.REMOTE_SNAPSHOT"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "REMOTE_SNAPSHOT"

    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
