.class final Lcom/oplus/ocs/base/common/api/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 82
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/j$1;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/j$1;->a:Lcom/oplus/ocs/base/common/api/j;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/j;->a(Lcom/oplus/ocs/base/common/api/j;)V

    return-void
.end method
