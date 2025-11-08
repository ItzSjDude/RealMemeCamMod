.class public Lcom/oplus/tingle/ipc/b;
.super Ljava/lang/Object;
.source "Slave.java"


# static fields
.field private static a:Landroid/os/IBinder;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tingle/ipc/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Lcom/oplus/tingle/ipc/b/a;
    .locals 2

    const-class v0, Lcom/oplus/tingle/ipc/b;

    monitor-enter v0

    .line 96
    :try_start_0
    new-instance v1, Lcom/oplus/tingle/ipc/b/a;

    invoke-direct {v1, p0}, Lcom/oplus/tingle/ipc/b/a;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 56
    invoke-static {}, Lcom/oplus/tingle/ipc/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oplus/tingle/ipc/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Slave"

    const-string v2, "Error : Slave cannot connect master."

    invoke-static {v1, v2, v0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tingle/ipc/b/b;

    .line 62
    invoke-interface {v1, p1}, Lcom/oplus/tingle/ipc/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1, p0}, Lcom/oplus/tingle/ipc/b/b;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/oplus/tingle/ipc/b;->a(Ljava/lang/String;)Lcom/oplus/tingle/ipc/b/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/tingle/ipc/b/a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .line 36
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/b;->c:Landroid/app/Application;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/b;->c:Landroid/app/Application;

    .line 41
    :goto_0
    invoke-static {}, Lcom/oplus/tingle/ipc/b;->b()V

    return-void
.end method

.method static a(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/oplus/tingle/ipc/b;->c()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 115
    sget-object v0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method private static b()V
    .locals 2

    .line 45
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/a/a;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/d/a;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/d/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/a/b;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/e/a;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/e/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/c/a/a;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/c/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/b/b/a;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b/b/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tingle/ipc/b/b;

    .line 88
    invoke-interface {v1, p1}, Lcom/oplus/tingle/ipc/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1, p0}, Lcom/oplus/tingle/ipc/b/b;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    .line 123
    invoke-static {p0}, Lcom/oplus/tingle/ipc/a;->b(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "Slave"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 126
    :try_start_0
    sget-object v2, Lcom/oplus/tingle/ipc/-$$Lambda$b$kVmgh8SE5GuTM_G-VEnq9tEGzVI;->INSTANCE:Lcom/oplus/tingle/ipc/-$$Lambda$b$kVmgh8SE5GuTM_G-VEnq9tEGzVI;

    invoke-interface {p0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetMaster linkToDeath Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :goto_0
    sput-object p0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 135
    sput-object p0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    .line 136
    new-array p0, v1, [Ljava/lang/Object;

    const-string v2, "Get Binder is null, reset sMaster = null."

    invoke-static {v0, v2, p0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_1
    sget-object p0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static c()Landroid/os/IBinder;
    .locals 2

    .line 106
    sget-object v0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/oplus/tingle/ipc/b;->c:Landroid/app/Application;

    invoke-static {v0}, Lcom/oplus/tingle/ipc/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not find master... Try again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method private static synthetic d()V
    .locals 3

    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/oplus/tingle/ipc/b;->a:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Slave"

    const-string v2, "sMaster binder died."

    invoke-static {v1, v2, v0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$kVmgh8SE5GuTM_G-VEnq9tEGzVI()V
    .locals 0

    invoke-static {}, Lcom/oplus/tingle/ipc/b;->d()V

    return-void
.end method
