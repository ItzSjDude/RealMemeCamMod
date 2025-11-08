.class final Lcom/heytap/accessory/file/FileTransferManager$1;
.super Ljava/lang/Object;
.source "FileTransferManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/file/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/file/FileTransferManager;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/file/FileTransferManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransferManager$1;->a:Lcom/heytap/accessory/file/FileTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 88
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inside onServiceConnected mFTServiceConn"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p2}, Lcom/heytap/accessory/core/IFileManager$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/core/IFileManager;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/heytap/accessory/file/FileTransferManager$1;->a:Lcom/heytap/accessory/file/FileTransferManager;

    new-instance v0, Lcom/heytap/accessory/file/FileTransferManager$a;

    invoke-static {p2}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/heytap/accessory/file/FileTransferManager$1;->a:Lcom/heytap/accessory/file/FileTransferManager;

    invoke-static {p0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/heytap/accessory/file/FileTransferManager$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/core/IFileManager;)V

    invoke-static {p2, v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager;Lcom/heytap/accessory/file/FileTransferManager$a;)Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 91
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "FileUpdateReceiverThread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Lcom/heytap/accessory/file/FileTransferManager$b;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/heytap/accessory/file/FileTransferManager$b;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager$b;)Lcom/heytap/accessory/file/FileTransferManager$b;

    .line 97
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->b()Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object p0

    monitor-enter p0

    const/4 p1, 0x1

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/heytap/accessory/file/FileTransferManager;->a(Z)Z

    .line 99
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->b()Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 100
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected: File Transfer service connected"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 103
    :cond_1
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceConnected: File Transfer service not created"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 10

    .line 110
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: File Transfer service disconnected"

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->b()Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 112
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->b()Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->b()Lcom/heytap/accessory/file/FileTransferManager;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager;Lcom/heytap/accessory/file/FileTransferManager$a;)Lcom/heytap/accessory/file/FileTransferManager$a;

    .line 114
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->c()Lcom/heytap/accessory/file/FileTransferManager;

    :cond_0
    const/4 p0, 0x0

    .line 117
    invoke-static {p0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Z)Z

    .line 118
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->d()Lcom/heytap/accessory/file/FileTransferManager$b;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 119
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->d()Lcom/heytap/accessory/file/FileTransferManager$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/accessory/file/FileTransferManager$b;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 120
    invoke-static {v0}, Lcom/heytap/accessory/file/FileTransferManager;->a(Lcom/heytap/accessory/file/FileTransferManager$b;)Lcom/heytap/accessory/file/FileTransferManager$b;

    .line 123
    :cond_1
    invoke-static {}, Lcom/heytap/accessory/file/FileTransferManager;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 124
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

    .line 125
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/file/a;

    if-eqz p1, :cond_2

    .line 1057
    iget-object v0, p1, Lcom/heytap/accessory/file/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
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

    check-cast v3, Lcom/heytap/accessory/file/a$a;

    .line 2045
    iget-object v4, p1, Lcom/heytap/accessory/file/a;->b:Lcom/heytap/accessory/file/FileTransfer$c;

    .line 132
    iget-wide v5, v3, Lcom/heytap/accessory/file/a$a;->a:J

    iget v7, v3, Lcom/heytap/accessory/file/a$a;->b:I

    iget-object v8, v3, Lcom/heytap/accessory/file/a$a;->d:Ljava/lang/String;

    const/16 v9, 0x4e21

    invoke-interface/range {v4 .. v9}, Lcom/heytap/accessory/file/FileTransfer$c;->a(JILjava/lang/String;I)V

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :cond_5
    return-void
.end method
