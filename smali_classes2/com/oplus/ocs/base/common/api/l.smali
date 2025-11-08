.class Lcom/oplus/ocs/base/common/api/l;
.super Lcom/oplus/ocs/base/common/b;


# static fields
.field static volatile a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/oplus/ocs/base/common/api/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/b;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/b;-><init>(Landroid/os/Looper;)V

    .line 19
    const-class p1, Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/l;->c:Lcom/oplus/ocs/base/common/api/b;

    return-void
.end method

.method static declared-synchronized a(Lcom/oplus/ocs/base/common/api/b;)Lcom/oplus/ocs/base/common/api/l;
    .locals 5

    const-class v0, Lcom/oplus/ocs/base/common/api/l;

    monitor-enter v0

    .line 26
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "base_client_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/oplus/ocs/base/common/api/l;->a:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/oplus/ocs/base/common/api/l;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/oplus/ocs/base/common/api/l;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Lcom/oplus/ocs/base/common/api/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/oplus/ocs/base/common/api/l;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    .line 42
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "base client handler what "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l;->c:Lcom/oplus/ocs/base/common/api/b;

    .line 3241
    :goto_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3242
    sget-object p1, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string v0, "handleQue"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ocs/base/common/api/i;

    .line 3244
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/b;->a(Lcom/oplus/ocs/base/common/api/i;)V

    goto :goto_0

    .line 3246
    :cond_1
    sget-object p0, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string p1, "task queue is end"

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l;->c:Lcom/oplus/ocs/base/common/api/b;

    .line 2266
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->h:Lcom/oplus/ocs/base/common/api/n;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/n;->d()V

    return-void

    .line 48
    :cond_3
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l;->c:Lcom/oplus/ocs/base/common/api/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    .line 1304
    iput v0, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    .line 1306
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->disconnect()V

    .line 1307
    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/b;->b(I)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 1308
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->f:Lcom/oplus/ocs/base/common/api/r;

    if-eqz v0, :cond_4

    .line 1309
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->f:Lcom/oplus/ocs/base/common/api/r;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-interface {v0, v1}, Lcom/oplus/ocs/base/common/api/r;->a(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    .line 1311
    :cond_4
    sget-object v0, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect failed , error code is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/b;->a(I)V

    .line 1313
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->e:Lcom/oplus/ocs/base/common/api/s;

    if-eqz p1, :cond_5

    .line 1314
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->e:Lcom/oplus/ocs/base/common/api/s;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/s;->a()V

    :cond_5
    return-void

    .line 45
    :cond_6
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l;->c:Lcom/oplus/ocs/base/common/api/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 1270
    sget-object v0, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string v2, "onAuthenticateSucceed"

    invoke-static {v0, v2}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iput v1, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    .line 1272
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 1274
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->f:Lcom/oplus/ocs/base/common/api/r;

    if-eqz v0, :cond_7

    .line 1275
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->f:Lcom/oplus/ocs/base/common/api/r;

    invoke-interface {v0, p1}, Lcom/oplus/ocs/base/common/api/r;->a(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    .line 1283
    :cond_7
    sget-object p1, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string v0, "handleAuthenticateSuccess"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 1285
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/b;->a(Landroid/os/Handler;)V

    .line 1287
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x64

    .line 1288
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1289
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/base/common/api/m;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->disconnect()V

    return-void
.end method
