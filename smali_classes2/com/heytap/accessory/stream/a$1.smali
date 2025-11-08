.class final Lcom/heytap/accessory/stream/a$1;
.super Ljava/lang/Object;
.source "StreamTransferManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/stream/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/stream/a;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/stream/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/heytap/accessory/stream/a$1;->a:Lcom/heytap/accessory/stream/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 83
    invoke-static {}, Lcom/heytap/accessory/stream/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inside onServiceConnected mFTServiceConn"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p2}, Lcom/heytap/accessory/core/IStreamManager$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/core/IStreamManager;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/heytap/accessory/stream/a$1;->a:Lcom/heytap/accessory/stream/a;

    new-instance v0, Lcom/heytap/accessory/stream/a$a;

    invoke-static {p2}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/heytap/accessory/stream/a$1;->a:Lcom/heytap/accessory/stream/a;

    invoke-static {p0}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/heytap/accessory/stream/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/core/IStreamManager;)V

    invoke-static {p2, v0}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a;Lcom/heytap/accessory/stream/a$a;)Lcom/heytap/accessory/stream/a$a;

    .line 86
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "StreamUpdateReceiverThread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 88
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Lcom/heytap/accessory/stream/a$b;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/heytap/accessory/stream/a$b;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a$b;)Lcom/heytap/accessory/stream/a$b;

    .line 92
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 93
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p0

    monitor-enter p0

    const/4 p1, 0x1

    .line 94
    :try_start_0
    invoke-static {p1}, Lcom/heytap/accessory/stream/a;->a(Z)Z

    .line 95
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 96
    invoke-static {}, Lcom/heytap/accessory/stream/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected: Stream Transfer service connected"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void

    .line 100
    :cond_2
    invoke-static {}, Lcom/heytap/accessory/stream/a;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceConnected: Stream Transfer service not created"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    .line 107
    invoke-static {}, Lcom/heytap/accessory/stream/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: Stream Transfer service disconnected"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    invoke-static {}, Lcom/heytap/accessory/stream/a;->b()Lcom/heytap/accessory/stream/a;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a;Lcom/heytap/accessory/stream/a$a;)Lcom/heytap/accessory/stream/a$a;

    .line 111
    invoke-static {}, Lcom/heytap/accessory/stream/a;->c()Lcom/heytap/accessory/stream/a;

    :cond_0
    const/4 p0, 0x0

    .line 114
    invoke-static {p0}, Lcom/heytap/accessory/stream/a;->a(Z)Z

    .line 115
    invoke-static {}, Lcom/heytap/accessory/stream/a;->d()Lcom/heytap/accessory/stream/a$b;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 116
    invoke-static {}, Lcom/heytap/accessory/stream/a;->d()Lcom/heytap/accessory/stream/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/accessory/stream/a$b;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 117
    invoke-static {v0}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/a$b;)Lcom/heytap/accessory/stream/a$b;

    .line 120
    :cond_1
    invoke-static {}, Lcom/heytap/accessory/stream/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/stream/b/a;

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/accessory/stream/b/a$a;

    .line 132
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/a;->b()Lcom/heytap/accessory/stream/StreamTransfer$b;

    move-result-object v4

    iget-wide v5, v3, Lcom/heytap/accessory/stream/b/a$a;->a:J

    iget v3, v3, Lcom/heytap/accessory/stream/b/a$a;->b:I

    const/16 v7, 0x4e21

    invoke-interface {v4, v5, v6, v3, v7}, Lcom/heytap/accessory/stream/StreamTransfer$b;->a(JII)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :cond_5
    return-void
.end method
