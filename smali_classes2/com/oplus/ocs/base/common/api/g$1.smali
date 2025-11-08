.class Lcom/oplus/ocs/base/common/api/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/g;->addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/f;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/g;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/common/api/f;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$1;->b:Lcom/oplus/ocs/base/common/api/g;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/g$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/f;->a()V

    return-void
.end method
