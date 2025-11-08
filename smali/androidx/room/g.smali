.class public abstract Landroidx/room/g;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/g$b;,
        Landroidx/room/g$d;,
        Landroidx/room/g$a;,
        Landroidx/room/g$c;
    }
.end annotation


# instance fields
.field protected volatile a:Landroidx/f/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field b:Z

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/g$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Landroidx/f/a/c;

.field private final g:Landroidx/room/d;

.field private h:Z

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/g;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/g;->j:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/g;->k:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Landroidx/room/g;->c()Landroidx/room/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/g;->g:Landroidx/room/d;

    return-void
.end method

.method private static l()Z
    .locals 2

    .line 1051
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroidx/f/a/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, v0}, Landroidx/room/g;->a(Landroidx/f/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/f/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroidx/room/g;->e()V

    .line 324
    invoke-virtual {p0}, Landroidx/room/g;->f()V

    if-eqz p2, :cond_0

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 326
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {p0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/f/a/b;->a(Landroidx/f/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 328
    :cond_0
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {p0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/f/a/b;->a(Landroidx/f/a/e;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/f/a/f;
    .locals 0

    .line 339
    invoke-virtual {p0}, Landroidx/room/g;->e()V

    .line 340
    invoke-virtual {p0}, Landroidx/room/g;->f()V

    .line 341
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {p0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/f/a/b;->a(Ljava/lang/String;)Landroidx/f/a/f;

    move-result-object p0

    return-object p0
.end method

.method a()Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/room/g;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    return-object p0
.end method

.method protected a(Landroidx/f/a/b;)V
    .locals 0

    .line 452
    iget-object p0, p0, Landroidx/room/g;->g:Landroidx/room/d;

    invoke-virtual {p0, p1}, Landroidx/room/d;->a(Landroidx/f/a/b;)V

    return-void
.end method

.method public a(Landroidx/room/a;)V
    .locals 3

    .line 161
    invoke-virtual {p0, p1}, Landroidx/room/g;->b(Landroidx/room/a;)Landroidx/f/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    .line 162
    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    instance-of v1, v0, Landroidx/room/k;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Landroidx/room/k;

    .line 164
    invoke-virtual {v0, p1}, Landroidx/room/k;->a(Landroidx/room/a;)V

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 168
    iget-object v0, p1, Landroidx/room/a;->g:Landroidx/room/g$c;

    sget-object v1, Landroidx/room/g$c;->WRITE_AHEAD_LOGGING:Landroidx/room/g$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    .line 169
    :cond_1
    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {v0, v2}, Landroidx/f/a/c;->a(Z)V

    .line 171
    :cond_2
    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/g;->c:Ljava/util/List;

    .line 172
    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/g;->d:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v0, Landroidx/room/n;

    iget-object v1, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/n;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/g;->e:Ljava/util/concurrent/Executor;

    .line 174
    iget-boolean v0, p1, Landroidx/room/a;->f:Z

    iput-boolean v0, p0, Landroidx/room/g;->h:Z

    .line 175
    iput-boolean v2, p0, Landroidx/room/g;->b:Z

    .line 176
    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object p0, p0, Landroidx/room/g;->g:Landroidx/room/d;

    iget-object v0, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroidx/room/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public b()Landroidx/f/a/c;
    .locals 0

    .line 189
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    return-object p0
.end method

.method protected abstract b(Landroidx/room/a;)Landroidx/f/a/c;
.end method

.method protected abstract c()Landroidx/room/d;
.end method

.method public d()Z
    .locals 0

    .line 234
    iget-object p0, p0, Landroidx/room/g;->a:Landroidx/f/a/b;

    if-eqz p0, :cond_0

    .line 235
    invoke-interface {p0}, Landroidx/f/a/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()V
    .locals 1

    .line 263
    iget-boolean p0, p0, Landroidx/room/g;->h:Z

    if-eqz p0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-static {}, Landroidx/room/g;->l()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 267
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f()V
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroidx/room/g;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/room/g;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p0}, Landroidx/room/g;->e()V

    .line 352
    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {v0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object v0

    .line 353
    iget-object p0, p0, Landroidx/room/g;->g:Landroidx/room/d;

    invoke-virtual {p0, v0}, Landroidx/room/d;->b(Landroidx/f/a/b;)V

    .line 354
    invoke-interface {v0}, Landroidx/f/a/b;->a()V

    return-void
.end method

.method public h()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {v0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/f/a/b;->b()V

    .line 365
    invoke-virtual {p0}, Landroidx/room/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object p0, p0, Landroidx/room/g;->g:Landroidx/room/d;

    invoke-virtual {p0}, Landroidx/room/d;->b()V

    :cond_0
    return-void
.end method

.method public i()Ljava/util/concurrent/Executor;
    .locals 0

    .line 377
    iget-object p0, p0, Landroidx/room/g;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {p0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object p0

    invoke-interface {p0}, Landroidx/f/a/b;->c()V

    return-void
.end method

.method public k()Z
    .locals 0

    .line 476
    iget-object p0, p0, Landroidx/room/g;->f:Landroidx/f/a/c;

    invoke-interface {p0}, Landroidx/f/a/c;->b()Landroidx/f/a/b;

    move-result-object p0

    invoke-interface {p0}, Landroidx/f/a/b;->d()Z

    move-result p0

    return p0
.end method
