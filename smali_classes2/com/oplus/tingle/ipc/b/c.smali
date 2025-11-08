.class public abstract Lcom/oplus/tingle/ipc/b/c;
.super Ljava/lang/Object;
.source "SystemServiceProxy.java"

# interfaces
.implements Lcom/oplus/tingle/ipc/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/tingle/ipc/b/b;"
    }
.end annotation


# static fields
.field protected static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:Lcom/oplus/tingle/ipc/c;

.field protected d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Z

.field private final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->e:Ljava/lang/ThreadLocal;

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tingle/ipc/b/c;->a:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/oplus/tingle/ipc/b/c;->g:Z

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->c:Lcom/oplus/tingle/ipc/c;

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/tingle/ipc/b/c;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/b/c;->a(Landroid/content/Context;)V

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->e:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tingle/ipc/b/c;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->f:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/b/c;->e(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/b/c;->d(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/oplus/tingle/ipc/b/c;->g:Z

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/c;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/c;->a(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    sget-object p2, Lcom/oplus/tingle/ipc/b/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCK Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/c;->a(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    iget-object p1, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 50
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    :cond_3
    throw p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .line 94
    sget-object p1, Lcom/oplus/tingle/ipc/b/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default Service ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] do not need reset IBinder to origin."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/oplus/tingle/ipc/c/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
