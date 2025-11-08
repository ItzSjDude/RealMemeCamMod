.class final Lcom/oplus/ocs/base/common/api/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/q;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/q;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/q$a;->a:Lcom/oplus/ocs/base/common/api/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/q;B)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/q$a;-><init>(Lcom/oplus/ocs/base/common/api/q;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 146
    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/q$a;->a:Lcom/oplus/ocs/base/common/api/q;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/q;->a(Lcom/oplus/ocs/base/common/api/q;)Lcom/oplus/ocs/base/common/api/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q$a;->a:Lcom/oplus/ocs/base/common/api/q;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/q;->a(Lcom/oplus/ocs/base/common/api/q;)Lcom/oplus/ocs/base/common/api/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/q$a;->a:Lcom/oplus/ocs/base/common/api/q;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/q;->b(Lcom/oplus/ocs/base/common/api/q;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q$a;->a:Lcom/oplus/ocs/base/common/api/q;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/q;->c(Lcom/oplus/ocs/base/common/api/q;)Landroid/content/ServiceConnection;

    return-void
.end method
