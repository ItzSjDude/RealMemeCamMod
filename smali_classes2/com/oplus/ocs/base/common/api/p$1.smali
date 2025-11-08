.class final Lcom/oplus/ocs/base/common/api/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 82
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/p$1;->a:Lcom/oplus/ocs/base/common/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 85
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/p$1;->a:Lcom/oplus/ocs/base/common/api/p;

    .line 1091
    new-instance v8, Lcom/oplus/ocs/base/common/api/d;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/p;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/p;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/p;->e:Ljava/lang/String;

    .line 1092
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance v7, Lcom/oplus/ocs/base/common/api/g$2;

    invoke-direct {v7, p0}, Lcom/oplus/ocs/base/common/api/g$2;-><init>(Lcom/oplus/ocs/base/common/api/p;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZLcom/oplus/ocs/base/IAuthenticationListener;)V

    .line 1106
    invoke-virtual {v8}, Lcom/oplus/ocs/base/common/api/d;->b()Z

    return-void
.end method
