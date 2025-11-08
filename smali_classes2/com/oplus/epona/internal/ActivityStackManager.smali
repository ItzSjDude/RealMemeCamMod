.class public Lcom/oplus/epona/internal/ActivityStackManager;
.super Ljava/lang/Object;
.source "ActivityStackManager.java"


# instance fields
.field private final mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    .line 32
    new-instance v0, Lcom/oplus/epona/internal/ActivityStackManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/epona/internal/ActivityStackManager$1;-><init>(Lcom/oplus/epona/internal/ActivityStackManager;)V

    iput-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->pushTask(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->removeTask(Landroid/app/Activity;)V

    return-void
.end method

.method private declared-synchronized pushTask(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTask(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public attach(Landroid/app/Application;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
