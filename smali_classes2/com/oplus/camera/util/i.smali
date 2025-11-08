.class public Lcom/oplus/camera/util/i;
.super Ljava/lang/Object;
.source "MultipleTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/i$b;,
        Lcom/oplus/camera/util/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/util/i$b;

.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/oplus/camera/util/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/util/i$b;-><init>(Lcom/oplus/camera/util/i;Lcom/oplus/camera/util/i$1;)V

    iput-object v0, p0, Lcom/oplus/camera/util/i;->a:Lcom/oplus/camera/util/i$b;

    .line 15
    iput-object v1, p0, Lcom/oplus/camera/util/i;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/oplus/camera/util/i;->a:Lcom/oplus/camera/util/i$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/oplus/camera/util/i;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/util/i$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/oplus/camera/util/i;-><init>()V

    return-void
.end method

.method public static a()Lcom/oplus/camera/util/i;
    .locals 1

    .line 18
    invoke-static {}, Lcom/oplus/camera/util/i$a;->a()Lcom/oplus/camera/util/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/oplus/camera/util/i;->a:Lcom/oplus/camera/util/i$b;

    invoke-static {v0, p3}, Lcom/oplus/camera/util/i$b;->a(Lcom/oplus/camera/util/i$b;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/util/i;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/util/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x1

    .line 43
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
