.class final Lcom/oplus/ocs/base/common/api/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/p;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/base/common/api/p;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 1029
    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/p;->a:Ljava/lang/String;

    const-string v1, "binderDied()"

    .line 224
    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    const/4 v1, 0x0

    .line 2029
    iput-object v1, v0, Lcom/oplus/ocs/base/common/api/p;->b:Lcom/oplus/ocs/base/common/api/p$a;

    .line 3029
    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 4029
    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    .line 227
    invoke-interface {v0}, Lcom/oplus/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 5029
    iget-object v2, v2, Lcom/oplus/ocs/base/common/api/p;->h:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    .line 229
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 230
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/p$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 6029
    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    :cond_0
    return-void
.end method
