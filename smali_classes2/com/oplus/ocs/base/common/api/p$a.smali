.class final Lcom/oplus/ocs/base/common/api/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/p;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/p;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/p;B)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/p$a;-><init>(Lcom/oplus/ocs/base/common/api/p;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 1029
    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/p;->a:Ljava/lang/String;

    const-string v0, "new ocs onServiceConnected"

    .line 202
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-static {p2}, Lcom/oplus/ocs/base/IServiceBroker$Stub;->a(Landroid/os/IBinder;)Lcom/oplus/ocs/base/IServiceBroker;

    move-result-object p2

    .line 2029
    iput-object p2, p1, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    .line 205
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 3029
    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    .line 205
    invoke-interface {p1}, Lcom/oplus/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 4029
    iget-object p2, p2, Lcom/oplus/ocs/base/common/api/p;->h:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    .line 205
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 206
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 5029
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/p;->f:Lcom/oplus/ocs/base/common/api/l;

    const/4 p1, 0x3

    .line 206
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/l;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 6029
    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/p;->g:Lcom/oplus/ocs/base/common/api/t;

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 7029
    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/p;->g:Lcom/oplus/ocs/base/common/api/t;

    const/16 v0, 0xd

    .line 214
    invoke-interface {p1, v0}, Lcom/oplus/ocs/base/common/api/t;->onStateChange(I)V

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/p$a;->a:Lcom/oplus/ocs/base/common/api/p;

    const/4 p1, 0x0

    .line 8029
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/p;->b:Lcom/oplus/ocs/base/common/api/p$a;

    .line 9029
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/p;->c:Lcom/oplus/ocs/base/IServiceBroker;

    return-void
.end method
