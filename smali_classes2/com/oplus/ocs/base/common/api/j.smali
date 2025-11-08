.class Lcom/oplus/ocs/base/common/api/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/common/api/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/oplus/ocs/base/common/api/j$a;

.field private c:Lcom/coloros/ocs/base/IServiceBroker;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/oplus/ocs/base/common/api/l;

.field private g:Lcom/oplus/ocs/base/common/api/t;

.field private h:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/t;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/oplus/ocs/base/common/api/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    .line 223
    new-instance v0, Lcom/oplus/ocs/base/common/api/j$2;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/base/common/api/j$2;-><init>(Lcom/oplus/ocs/base/common/api/j;)V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->h:Landroid/os/IBinder$DeathRecipient;

    .line 50
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/j;->e:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/j;->f:Lcom/oplus/ocs/base/common/api/l;

    .line 53
    iput-object p4, p0, Lcom/oplus/ocs/base/common/api/j;->g:Lcom/oplus/ocs/base/common/api/t;

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/j;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 144
    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 146
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->f:Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/j;)V
    .locals 9

    .line 2091
    new-instance v8, Lcom/oplus/ocs/base/common/api/d;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/j;->e:Ljava/lang/String;

    .line 2092
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance v7, Lcom/oplus/ocs/base/common/api/a$2;

    invoke-direct {v7, p0}, Lcom/oplus/ocs/base/common/api/a$2;-><init>(Lcom/oplus/ocs/base/common/api/j;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZLcom/oplus/ocs/base/IAuthenticationListener;)V

    .line 2106
    invoke-virtual {v8}, Lcom/oplus/ocs/base/common/api/d;->b()Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/j;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/j;Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 2

    .line 2135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2136
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2137
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2138
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->f:Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/oplus/ocs/base/common/api/j;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/ocs/base/common/api/j;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->h:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/ocs/base/common/api/j;)Lcom/coloros/ocs/base/IServiceBroker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/l;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->f:Lcom/oplus/ocs/base/common/api/l;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/t;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->g:Lcom/oplus/ocs/base/common/api/t;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/j$a;
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->g:Lcom/oplus/ocs/base/common/api/t;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, v1}, Lcom/oplus/ocs/base/common/api/t;->onStateChange(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/ocs/base/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1082
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/ocs/base/common/api/j$1;

    invoke-direct {v1, p0}, Lcom/oplus/ocs/base/common/api/j$1;-><init>(Lcom/oplus/ocs/base/common/api/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1111
    :try_start_0
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1112
    new-instance v1, Lcom/oplus/ocs/base/common/api/j$a;

    invoke-direct {v1, p0, v0}, Lcom/oplus/ocs/base/common/api/j$a;-><init>(Lcom/oplus/ocs/base/common/api/j;B)V

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    .line 1113
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    .line 1114
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2057
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.coloros.opencapabilityservice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.coloros.ocs.opencapabilityservice"

    .line 2059
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1114
    iget-object v4, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 1115
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    const-string v4, "connect state "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 1118
    invoke-direct {p0, v1}, Lcom/oplus/ocs/base/common/api/j;->a(I)V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/j;->g:Lcom/oplus/ocs/base/common/api/t;

    if-eqz v3, :cond_3

    .line 1122
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/j;->g:Lcom/oplus/ocs/base/common/api/t;

    invoke-interface {v3, v1}, Lcom/oplus/ocs/base/common/api/t;->onStateChange(I)V

    :cond_3
    const/16 v1, 0x3f1

    .line 1124
    invoke-direct {p0, v1}, Lcom/oplus/ocs/base/common/api/j;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1130
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "out bind get an exception %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->b:Lcom/oplus/ocs/base/common/api/j$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 164
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "out unbind get an exception %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j;->c:Lcom/coloros/ocs/base/IServiceBroker;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->e:Ljava/lang/String;

    const-string v2, "1.0.11"

    new-instance v3, Lcom/oplus/ocs/base/common/api/a$3;

    invoke-direct {v3, p0}, Lcom/oplus/ocs/base/common/api/a$3;-><init>(Lcom/oplus/ocs/base/common/api/j;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/coloros/ocs/base/IServiceBroker;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/ocs/base/IAuthenticationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the exception that service broker authenticates is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 197
    invoke-direct {p0, v0}, Lcom/oplus/ocs/base/common/api/j;->a(I)V

    return-void
.end method
