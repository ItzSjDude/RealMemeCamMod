.class final Lcom/oplus/ocs/base/common/api/g$2;
.super Lcom/oplus/ocs/base/IAuthenticationListener$Stub;


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

    .line 92
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-direct {p0}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 2029
    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/p;->a:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleAsyncAuthenticate, onFailed errorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 3029
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/p;->a(I)V

    return-void
.end method

.method public final onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 1029
    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/p;->a:Ljava/lang/String;

    const-string v1, "handleAsyncAuthenticate, onSuccess"

    .line 95
    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/p;->a(Lcom/oplus/ocs/base/common/api/p;Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    return-void
.end method
