.class Lcom/oplus/ocs/base/common/api/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/oplus/ocs/base/common/api/a$c;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/ocs/base/common/api/a$f;",
            "Lcom/oplus/ocs/base/common/api/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "u"

.field private static volatile f:Lcom/oplus/ocs/base/common/api/u;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/oplus/ocs/base/common/b;

.field private e:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/u;->a:Landroid/content/Context;

    goto :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/u;->a:Landroid/content/Context;

    .line 67
    :goto_0
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/u;->e:Landroid/os/Looper;

    .line 68
    new-instance p1, Lcom/oplus/ocs/base/common/b;

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/u;->e:Landroid/os/Looper;

    invoke-direct {p1, p2, p0}, Lcom/oplus/ocs/base/common/b;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/u;->b:Lcom/oplus/ocs/base/common/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/oplus/ocs/base/common/api/u;
    .locals 4

    .line 44
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->f:Lcom/oplus/ocs/base/common/api/u;

    if-nez v0, :cond_2

    .line 45
    const-class v0, Lcom/oplus/ocs/base/common/api/u;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/base/common/api/u;->f:Lcom/oplus/ocs/base/common/api/u;

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OplusApiManager"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 49
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/oplus/ocs/base/common/api/u;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/oplus/ocs/base/common/api/u;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lcom/oplus/ocs/base/common/api/u;->f:Lcom/oplus/ocs/base/common/api/u;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lcom/oplus/ocs/base/common/api/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oplus/ocs/base/common/api/u;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/oplus/ocs/base/common/api/u;->f:Lcom/oplus/ocs/base/common/api/u;

    .line 55
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_2
    :goto_1
    sget-object p0, Lcom/oplus/ocs/base/common/api/u;->f:Lcom/oplus/ocs/base/common/api/u;

    return-object p0
.end method

.method static a(Lcom/oplus/ocs/base/common/api/a$f;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/oplus/ocs/base/common/api/g;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/c;->a(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/g;->checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 162
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 166
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/h;->a(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/common/api/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/g;",
            "Lcom/oplus/ocs/base/common/api/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addQueue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oplusApi not be null"

    .line 226
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/common/api/h;->a(Lcom/oplus/ocs/base/common/api/i;)V

    :cond_0
    return-void
.end method

.method static b(Lcom/oplus/ocs/base/common/api/g;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 181
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/h;->d()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Lcom/oplus/ocs/base/common/api/g;)I
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 192
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 196
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/h;->e()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static d(Lcom/oplus/ocs/base/common/api/g;)Lcom/oplus/ocs/base/common/AuthResult;
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 203
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 207
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/h;->f()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static e(Lcom/oplus/ocs/base/common/api/g;)Z
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 214
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_0

    .line 218
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/h;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Lcom/oplus/ocs/base/common/api/a;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/u;->b:Lcom/oplus/ocs/base/common/b;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    iput v1, v0, Landroid/os/Message;->what:I

    .line 74
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/u;->b:Lcom/oplus/ocs/base/common/b;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 138
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 144
    :goto_0
    new-instance p3, Lcom/oplus/ocs/base/common/api/u$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/u$3;-><init>(Lcom/oplus/ocs/base/common/api/u;Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/f;)V

    const/4 p0, 0x0

    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 155
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/oplus/ocs/base/common/api/h;->a(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/internal/a;)V
    .locals 4

    const-string v0, "oplusApi not be null"

    .line 86
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientsettings not be null"

    .line 87
    invoke-static {p2, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/oplus/ocs/base/common/api/v;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/u;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v2

    .line 1071
    iget-object v3, p1, Lcom/oplus/ocs/base/common/api/g;->a:Lcom/oplus/ocs/base/common/api/a$c;

    .line 89
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/oplus/ocs/base/common/api/v;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/a;Lcom/oplus/ocs/base/common/api/a$c;Lcom/oplus/ocs/base/internal/a;)V

    .line 90
    new-instance p2, Lcom/oplus/ocs/base/common/api/u$1;

    invoke-direct {p2, p0, p1}, Lcom/oplus/ocs/base/common/api/u$1;-><init>(Lcom/oplus/ocs/base/common/api/u;Lcom/oplus/ocs/base/common/api/g;)V

    invoke-interface {v0, p2}, Lcom/oplus/ocs/base/common/api/h;->a(Lcom/oplus/ocs/base/common/api/s;)V

    .line 96
    new-instance p2, Lcom/oplus/ocs/base/common/api/u$2;

    invoke-direct {p2, p0, p1}, Lcom/oplus/ocs/base/common/api/u$2;-><init>(Lcom/oplus/ocs/base/common/api/u;Lcom/oplus/ocs/base/common/api/g;)V

    invoke-interface {v0, p2}, Lcom/oplus/ocs/base/common/api/h;->a(Lcom/oplus/ocs/base/common/api/r;)V

    .line 104
    sget-object p2, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/u;->a(Lcom/oplus/ocs/base/common/api/a;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 247
    sget-object p0, Lcom/oplus/ocs/base/common/api/u;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/ocs/base/common/api/a;

    if-eqz p0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 263
    sget-object p1, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p1, :cond_2

    .line 265
    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/h;->b()V

    .line 266
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/u;->a(Lcom/oplus/ocs/base/common/api/a$f;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/ocs/base/common/api/a;

    if-eqz p0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    sget-object p1, Lcom/oplus/ocs/base/common/api/u;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/h;

    if-eqz p0, :cond_2

    .line 255
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/h;->a()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
