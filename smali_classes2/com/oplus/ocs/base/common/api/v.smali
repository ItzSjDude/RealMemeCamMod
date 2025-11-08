.class public Lcom/oplus/ocs/base/common/api/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/common/api/h;


# static fields
.field private static final a:Ljava/lang/String; = "v"


# instance fields
.field private b:Ljava/util/concurrent/locks/Lock;

.field private c:Lcom/oplus/ocs/base/common/api/a;

.field private d:Lcom/oplus/ocs/base/common/api/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/a;Lcom/oplus/ocs/base/common/api/a$c;Lcom/oplus/ocs/base/internal/a;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    .line 30
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/v;->c:Lcom/oplus/ocs/base/common/api/a;

    .line 32
    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/v;->c:Lcom/oplus/ocs/base/common/api/a;

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/api/a;->a()Lcom/oplus/ocs/base/common/api/a$a;

    move-result-object p2

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1048
    invoke-virtual {p2, p1, v0, p4, p3}, Lcom/oplus/ocs/base/common/api/a$a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/a;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/a$e;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/a$e;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :goto_1
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    throw v0
.end method

.method public a(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 141
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/a$e;->setOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 134
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/a$e;->setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/base/common/api/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/common/api/a$e;->addQueue(Lcom/oplus/ocs/base/common/api/i;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/base/common/api/r;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 155
    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/common/api/a$e;->setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/r;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/base/common/api/s;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 148
    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/common/api/a$e;->setOnClearListener(Lcom/oplus/ocs/base/common/api/s;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/a$e;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/a$e;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :goto_1
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    throw v0
.end method

.method public c()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/a$e;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Landroid/os/IBinder;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/a$e;->getRemoteService()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/a$e;->getMinApkVersion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Lcom/oplus/ocs/base/common/AuthResult;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/v;->d:Lcom/oplus/ocs/base/common/api/a$e;

    if-eqz p0, :cond_0

    .line 126
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/a$e;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
