.class final Lcom/oplus/ocs/base/common/api/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/j;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/base/common/api/j;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/j;->b(Lcom/oplus/ocs/base/common/api/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/j;->g(Lcom/oplus/ocs/base/common/api/j;)Lcom/oplus/ocs/base/common/api/j$a;

    .line 228
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/j;->d(Lcom/oplus/ocs/base/common/api/j;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/j;->d(Lcom/oplus/ocs/base/common/api/j;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {v1}, Lcom/oplus/ocs/base/common/api/j;->c(Lcom/oplus/ocs/base/common/api/j;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 232
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j$2;->a:Lcom/oplus/ocs/base/common/api/j;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    :cond_0
    return-void
.end method
