.class final Lcom/oplus/ocs/base/common/api/a$3;
.super Lcom/coloros/ocs/base/IAuthenticationListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/j;->d()V
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

    .line 176
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/a$3;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-direct {p0}, Lcom/coloros/ocs/base/IAuthenticationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$3;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;I)V

    return-void
.end method

.method public final a(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 181
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$3;->a:Lcom/oplus/ocs/base/common/api/j;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;I)V

    return-void

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$3;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    return-void
.end method
