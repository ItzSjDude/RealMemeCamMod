.class final Lcom/oplus/ocs/base/common/api/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/common/api/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/u;->a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/internal/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/g;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/u;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/base/common/api/u;Lcom/oplus/ocs/base/common/api/g;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/u$1;->b:Lcom/oplus/ocs/base/common/api/u;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/u$1;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/u$1;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/g;->getApi()Lcom/oplus/ocs/base/common/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/a;->b()Lcom/oplus/ocs/base/common/api/a$f;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/u;->a(Lcom/oplus/ocs/base/common/api/a$f;)V

    return-void
.end method
