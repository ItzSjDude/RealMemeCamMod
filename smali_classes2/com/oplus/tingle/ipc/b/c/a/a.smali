.class public Lcom/oplus/tingle/ipc/b/c/a/a;
.super Lcom/oplus/tingle/ipc/b/c;
.source "WifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/b/c<",
        "Landroid/net/wifi/IWifiManager;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/oplus/tingle/ipc/b/c;-><init>()V

    const-string v0, "wifi"

    .line 19
    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->e:Ljava/lang/ThreadLocal;

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

    .line 37
    iget-object p2, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/b/c/a/a;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 39
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->c:Lcom/oplus/tingle/ipc/c;

    invoke-static {p0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$mVTzedJbqMq30flonSZh0FEQ3es(Lcom/oplus/tingle/ipc/b/c/a/a;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/b/c/a/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 4

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->h:Landroid/net/wifi/WifiManager;

    .line 31
    sget-object v0, Lmirror/android/net/wifi/WifiManager;->mService:Lcom/oplus/utils/reflect/RefObject;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->b:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/oplus/tingle/ipc/c;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/tingle/ipc/c;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->c:Lcom/oplus/tingle/ipc/c;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/oplus/tingle/ipc/b/c/a/-$$Lambda$a$mVTzedJbqMq30flonSZh0FEQ3es;

    invoke-direct {v2, p0, p1}, Lcom/oplus/tingle/ipc/b/c/a/-$$Lambda$a$mVTzedJbqMq30flonSZh0FEQ3es;-><init>(Lcom/oplus/tingle/ipc/b/c/a/a;Landroid/content/Context;)V

    .line 33
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/IWifiManager;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 24
    sget-object p1, Lmirror/android/net/wifi/WifiManager;->mService:Lcom/oplus/utils/reflect/RefObject;

    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/c/a/a;->h:Landroid/net/wifi/WifiManager;

    check-cast p2, Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
