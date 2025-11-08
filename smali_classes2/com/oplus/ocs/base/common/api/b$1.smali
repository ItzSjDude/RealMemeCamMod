.class final Lcom/oplus/ocs/base/common/api/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/b;->setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/f;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/b;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/base/common/api/b;Lcom/oplus/ocs/base/common/api/f;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b$1;->b:Lcom/oplus/ocs/base/common/api/b;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/b$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/f;->a()V

    return-void
.end method
