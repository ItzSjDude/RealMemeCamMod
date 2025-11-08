.class public Lcom/heytap/accessory/a;
.super Ljava/lang/Object;
.source "RegistrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/heytap/accessory/a$a;

.field private d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/heytap/accessory/a;->b:Landroid/content/Context;

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid context:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/heytap/accessory/a;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/heytap/accessory/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/heytap/accessory/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/heytap/accessory/a;->e:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/heytap/accessory/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/a;->c:Lcom/heytap/accessory/a$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/accessory/a;->d:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/heytap/accessory/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/a$a;-><init>(Lcom/heytap/accessory/a;B)V

    iput-object v0, p0, Lcom/heytap/accessory/a;->c:Lcom/heytap/accessory/a$a;

    .line 48
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/heytap/accessory/a;->c:Lcom/heytap/accessory/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/heytap/accessory/a;->d:Ljava/util/concurrent/FutureTask;

    .line 49
    iget-object v0, p0, Lcom/heytap/accessory/a;->d:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RegistrationTask instance cannot be reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/a;->c:Lcom/heytap/accessory/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/a;->d:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/heytap/accessory/a;->e:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/heytap/accessory/a;->d:Ljava/util/concurrent/FutureTask;

    const-string v2, "RegistrationThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/heytap/accessory/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/a;->a:Ljava/lang/String;

    const-string v1, "Registration task has already started"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Registration task is already running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
