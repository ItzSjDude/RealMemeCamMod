.class public Lcom/oplus/tingle/ipc/b/a;
.super Lcom/oplus/tingle/ipc/b/c;
.source "CommonServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/b/c<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/b/c;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "transact"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 49
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/a;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/oplus/tingle/ipc/b/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a;->c:Lcom/oplus/tingle/ipc/c;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2

    .line 102
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, v1}, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0, v1}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lmirror/android/app/SystemServiceRegistry;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, v1}, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p0, v1}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static c(Ljava/lang/Object;)I
    .locals 1

    .line 124
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lmirror/android/app/SystemServiceRegistry$CachedServiceFetcher;->getCacheIndex(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 126
    :cond_0
    invoke-static {}, Lcom/oplus/tingle/ipc/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p0}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$CachedServiceFetcherWrapper;->getCacheIndex(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 61
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 63
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CommonServiceProxy"

    const-string v0, "getFetcher failed."

    invoke-static {p1, v0, p0}, Lcom/oplus/tingle/ipc/c/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaticApplicationContextServiceFetcher"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "StaticServiceFetcher"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v1, "CachedServiceFetcher"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b/a;->c(Ljava/lang/Object;)I

    move-result p0

    .line 77
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_4

    .line 78
    check-cast p1, Landroid/content/ContextWrapper;

    .line 80
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/oplus/utils/reflect/RefObject;

    .line 82
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_3
    sget-object v0, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 86
    aput-object v0, p1, p0

    :cond_4
    return-void
.end method

.method private static e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$FNk99vNkx2BGPowqORPhVAokqWg(Lcom/oplus/tingle/ipc/b/a;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 5

    .line 41
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lcom/oplus/utils/reflect/RefMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/tingle/ipc/b/a;->f:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a;->b:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/oplus/tingle/ipc/c;

    iget-object v2, p0, Lcom/oplus/tingle/ipc/b/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-direct {v0, v2}, Lcom/oplus/tingle/ipc/c;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a;->c:Lcom/oplus/tingle/ipc/c;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v4

    new-instance v2, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;

    invoke-direct {v2, p0, p1}, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;-><init>(Lcom/oplus/tingle/ipc/b/a;Landroid/content/Context;)V

    .line 44
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 35
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lcom/oplus/utils/reflect/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/b/a;->f:Ljava/lang/String;

    check-cast p2, Landroid/os/IBinder;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/b/a;->e(Landroid/content/Context;)V

    return-void
.end method
