.class public Lcom/oplus/tingle/ipc/b/a/a;
.super Lcom/oplus/tingle/ipc/b/c;
.source "ActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/b/c<",
        "Landroid/app/IActivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/b/c;-><init>()V

    const-string v0, "activity"

    .line 21
    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/a/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/a/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/a/a;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/oplus/tingle/ipc/b/a/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 40
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a/a;->c:Lcom/oplus/tingle/ipc/c;

    invoke-static {p0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a/a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$OLERfB6euDXm6Z45XI_P55rff0A(Lcom/oplus/tingle/ipc/b/a/a;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/b/a/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 4

    .line 31
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a/a;->b:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/oplus/tingle/ipc/c;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/b/a/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/tingle/ipc/c;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a/a;->c:Lcom/oplus/tingle/ipc/c;

    .line 33
    sget-object v0, Lmirror/android/app/ActivityManager;->IActivityManagerSingleton:Lcom/oplus/utils/reflect/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/a/a;->h:Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/IActivityManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$a$OLERfB6euDXm6Z45XI_P55rff0A;

    invoke-direct {v2, p0, p1}, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$a$OLERfB6euDXm6Z45XI_P55rff0A;-><init>(Lcom/oplus/tingle/ipc/b/a/a;Landroid/content/Context;)V

    .line 34
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/IActivityManager;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 26
    sget-object p1, Lmirror/android/util/Singleton;->mInstance:Lcom/oplus/utils/reflect/RefObject;

    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a/a;->h:Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
