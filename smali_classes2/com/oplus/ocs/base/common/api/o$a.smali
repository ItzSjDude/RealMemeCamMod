.class final Lcom/oplus/ocs/base/common/api/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/o;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/o;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/o$a;->a:Lcom/oplus/ocs/base/common/api/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/o;B)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/o$a;-><init>(Lcom/oplus/ocs/base/common/api/o;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 163
    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/o$a;->a:Lcom/oplus/ocs/base/common/api/o;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/o;->b(Lcom/oplus/ocs/base/common/api/o;)Lcom/oplus/ocs/base/common/api/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/o$a;->a:Lcom/oplus/ocs/base/common/api/o;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/o;->b(Lcom/oplus/ocs/base/common/api/o;)Lcom/oplus/ocs/base/common/api/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/o$a;->a:Lcom/oplus/ocs/base/common/api/o;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/o;->c(Lcom/oplus/ocs/base/common/api/o;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/o$a;->a:Lcom/oplus/ocs/base/common/api/o;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/o;->d(Lcom/oplus/ocs/base/common/api/o;)Landroid/content/ServiceConnection;

    return-void
.end method
