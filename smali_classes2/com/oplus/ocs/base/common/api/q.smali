.class Lcom/oplus/ocs/base/common/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/common/api/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/oplus/ocs/base/IAuthenticationListener;

.field private e:Lcom/oplus/ocs/base/common/api/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/d;Lcom/oplus/ocs/base/IAuthenticationListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/oplus/ocs/base/common/api/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/q;->e:Lcom/oplus/ocs/base/common/api/d;

    .line 40
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/q;)Lcom/oplus/ocs/base/common/api/d;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->e:Lcom/oplus/ocs/base/common/api/d;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/ocs/base/common/api/q;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/ocs/base/common/api/q;)Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    new-instance v2, Lcom/oplus/ocs/base/common/api/q$a;

    invoke-direct {v2, p0, v1}, Lcom/oplus/ocs/base/common/api/q$a;-><init>(Lcom/oplus/ocs/base/common/api/q;B)V

    iput-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    .line 50
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    .line 1132
    iget-object v4, p0, Lcom/oplus/ocs/base/common/api/q;->e:Lcom/oplus/ocs/base/common/api/d;

    const-string v5, "com.oplus.ocs.openauthenticate"

    const-string v6, "com.oplus.ocs"

    const-string v7, "com.oplus.ocs.service.OpenAuthenticateService"

    invoke-virtual {v4, v5, v6, v7}, Lcom/oplus/ocs/base/common/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 1134
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "internal_binder"

    .line 1135
    invoke-interface {v3}, Lcom/oplus/ocs/base/IAuthenticationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "internal_bundle"

    .line 1136
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    const-string v4, "connect state - "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_3

    .line 55
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    .line 57
    :try_start_2
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_0

    .line 66
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    const/16 v3, 0x3f1

    invoke-interface {v2, v3}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move v3, v1

    .line 74
    :goto_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "in bind get an exception %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :catch_2
    :cond_3
    :goto_1
    return v2
.end method

.method public final b()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Lcom/oplus/ocs/base/common/api/q$a;

    invoke-direct {v2, p0, v1}, Lcom/oplus/ocs/base/common/api/q$a;-><init>(Lcom/oplus/ocs/base/common/api/q;B)V

    iput-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    .line 85
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->e:Lcom/oplus/ocs/base/common/api/d;

    const-string v4, "com.oplus.ocs.openauthenticate"

    const-string v5, "com.oplus.ocs"

    const-string v6, "com.oplus.ocs.service.OpenAuthenticateService"

    invoke-virtual {v3, v4, v5, v6}, Lcom/oplus/ocs/base/common/api/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    const-string v4, "connect stat state - "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 90
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 95
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/q;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    const/16 v3, 0x3f1

    invoke-interface {v2, v3}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v3

    move v2, v1

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "in bind get an exception %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v2
.end method

.method public final c()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    const-string v0, "mServiceConnectionImpl is null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/q;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 121
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/q;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "in unbind get an exception %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
