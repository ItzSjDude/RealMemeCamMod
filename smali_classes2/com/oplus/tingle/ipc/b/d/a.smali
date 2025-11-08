.class public Lcom/oplus/tingle/ipc/b/d/a;
.super Lcom/oplus/tingle/ipc/b/c;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/b/c<",
        "Landroid/content/pm/IPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/b/c;-><init>()V

    const-string v0, "package"

    .line 24
    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/d/a;->f:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/d/a;->e:Ljava/lang/ThreadLocal;

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

    .line 64
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/d/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/d/a;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/oplus/tingle/ipc/b/d/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 66
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/d/a;->c:Lcom/oplus/tingle/ipc/c;

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/d/a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wEcsfKXJgFUnHToqQbJagIlVkjI(Lcom/oplus/tingle/ipc/b/d/a;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/b/d/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 4

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/d/a;->b:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/oplus/tingle/ipc/c;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/b/d/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/tingle/ipc/c;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/d/a;->c:Lcom/oplus/tingle/ipc/c;

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/pm/IPackageManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/oplus/tingle/ipc/b/d/-$$Lambda$a$wEcsfKXJgFUnHToqQbJagIlVkjI;

    invoke-direct {v2, p0, p1}, Lcom/oplus/tingle/ipc/b/d/-$$Lambda$a$wEcsfKXJgFUnHToqQbJagIlVkjI;-><init>(Lcom/oplus/tingle/ipc/b/d/a;Landroid/content/Context;)V

    .line 60
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/d/a;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 29
    sget-object p0, Lcom/oplus/tingle/ipc/b/d/a;->h:Ljava/lang/Class;

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "android.app.ContextImpl"

    .line 31
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/oplus/tingle/ipc/b/d/a;->h:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PackageManagerProxy"

    invoke-static {v1, p0, v0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    :goto_0
    sget-object p0, Lcom/oplus/tingle/ipc/b/d/a;->h:Ljava/lang/Class;

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 42
    sget-object p0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_2
    check-cast p1, Landroid/content/ContextWrapper;

    .line 45
    sget-object p0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_1
    sget-object p0, Lmirror/android/app/ActivityThread;->sPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method
