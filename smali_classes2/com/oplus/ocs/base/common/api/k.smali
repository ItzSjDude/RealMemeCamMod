.class public Lcom/oplus/ocs/base/common/api/k;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/oplus/ocs/base/common/api/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/oplus/ocs/base/common/api/k;
    .locals 2

    .line 19
    sget-object v0, Lcom/oplus/ocs/base/common/api/k;->a:Lcom/oplus/ocs/base/common/api/k;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/oplus/ocs/base/common/api/k;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/base/common/api/k;->a:Lcom/oplus/ocs/base/common/api/k;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/oplus/ocs/base/common/api/k;

    invoke-direct {v1}, Lcom/oplus/ocs/base/common/api/k;-><init>()V

    sput-object v1, Lcom/oplus/ocs/base/common/api/k;->a:Lcom/oplus/ocs/base/common/api/k;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/base/common/api/k;->a:Lcom/oplus/ocs/base/common/api/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/d;Lcom/oplus/ocs/base/IAuthenticationListener;)Lcom/oplus/ocs/base/common/api/n;
    .locals 1

    const-string v0, "com.oplus.ocs"

    .line 44
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/oplus/ocs/base/common/api/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/q;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/d;Lcom/oplus/ocs/base/IAuthenticationListener;)V

    return-object v0

    :cond_0
    const-string v0, "com.coloros.ocs.opencapabilityservice"

    .line 47
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/oplus/ocs/base/common/api/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/o;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/d;Lcom/oplus/ocs/base/IAuthenticationListener;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/t;)Lcom/oplus/ocs/base/common/api/n;
    .locals 1

    const-string v0, "com.oplus.ocs"

    .line 34
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/oplus/ocs/base/common/api/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/ocs/base/common/api/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/t;)V

    return-object v0

    :cond_0
    const-string v0, "com.coloros.ocs.opencapabilityservice"

    .line 37
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/oplus/ocs/base/common/api/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/ocs/base/common/api/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/t;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
