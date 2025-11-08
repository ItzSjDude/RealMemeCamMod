.class final Lcom/oplus/ocs/base/common/api/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/j;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/j;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/j;B)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/j$a;-><init>(Lcom/oplus/ocs/base/common/api/j;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/j;->b(Lcom/oplus/ocs/base/common/api/j;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->a(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    .line 207
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/j;->d(Lcom/oplus/ocs/base/common/api/j;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p2}, Lcom/oplus/ocs/base/common/api/j;->c(Lcom/oplus/ocs/base/common/api/j;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 208
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/j;->e(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/l;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/l;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/j;->f(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/j;->f(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/t;

    move-result-object p1

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lcom/oplus/ocs/base/common/api/t;->onStateChange(I)V

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/j;->g(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/j$a;

    .line 219
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j$a;->a:Lcom/oplus/ocs/base/common/api/j;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    return-void
.end method
