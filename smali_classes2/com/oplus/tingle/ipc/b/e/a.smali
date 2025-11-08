.class public Lcom/oplus/tingle/ipc/b/e/a;
.super Lcom/oplus/tingle/ipc/b/c;
.source "WindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/b/c<",
        "Landroid/view/IWindowSession;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/b/c;-><init>()V

    const-string v0, "window"

    .line 17
    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/e/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/oplus/tingle/ipc/b/e/a;->g:Z

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/e/a;->c:Lcom/oplus/tingle/ipc/c;

    invoke-static {p0}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$avWnhh8zCgTMsPVrdMubI0WkPKA(Lcom/oplus/tingle/ipc/b/e/a;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/b/e/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/e/a;->b:Ljava/lang/Object;

    .line 29
    new-instance p1, Lcom/oplus/tingle/ipc/c;

    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/e/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/tingle/ipc/c;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/e/a;->c:Lcom/oplus/tingle/ipc/c;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/IWindowSession;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/tingle/ipc/b/e/-$$Lambda$a$avWnhh8zCgTMsPVrdMubI0WkPKA;

    invoke-direct {v1, p0}, Lcom/oplus/tingle/ipc/b/e/-$$Lambda$a$avWnhh8zCgTMsPVrdMubI0WkPKA;-><init>(Lcom/oplus/tingle/ipc/b/e/a;)V

    .line 30
    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindowSession;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/e/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 23
    sget-object p0, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/oplus/utils/reflect/RefObject;

    check-cast p2, Landroid/view/IWindowSession;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    .line 39
    sget-object v0, Lcom/oplus/tingle/ipc/b/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reset Binder To Origin."

    invoke-static {v0, v2, v1}, Lcom/oplus/tingle/ipc/c/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/e/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tingle/ipc/b/e/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
