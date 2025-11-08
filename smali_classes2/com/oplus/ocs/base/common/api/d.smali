.class public Lcom/oplus/ocs/base/common/api/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/oplus/ocs/base/IAuthenticationListener;

.field private i:Landroid/os/Handler;

.field private j:Lcom/oplus/ocs/base/common/api/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLcom/oplus/ocs/base/IAuthenticationListener;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZLcom/oplus/ocs/base/IAuthenticationListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZLcom/oplus/ocs/base/IAuthenticationListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/oplus/ocs/base/common/api/d;->f:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->b:Landroid/content/Context;

    .line 50
    iput-object p7, p0, Lcom/oplus/ocs/base/common/api/d;->h:Lcom/oplus/ocs/base/IAuthenticationListener;

    .line 51
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/d;->d:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/oplus/ocs/base/common/api/d;->e:I

    .line 54
    iput-boolean p5, p0, Lcom/oplus/ocs/base/common/api/d;->f:Z

    .line 55
    iput-boolean p6, p0, Lcom/oplus/ocs/base/common/api/d;->g:Z

    .line 56
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "internal"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 58
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/d;->i:Landroid/os/Handler;

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->i:Landroid/os/Handler;

    .line 63
    :goto_0
    invoke-static {}, Lcom/oplus/ocs/base/common/api/k;->a()Lcom/oplus/ocs/base/common/api/k;

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/d;->h:Lcom/oplus/ocs/base/IAuthenticationListener;

    invoke-static {p1, p0, p2}, Lcom/oplus/ocs/base/common/api/k;->a(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/d;Lcom/oplus/ocs/base/IAuthenticationListener;)Lcom/oplus/ocs/base/common/api/n;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->j:Lcom/oplus/ocs/base/common/api/n;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "bind_type"

    const/4 p2, 0x1

    .line 69
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->d:Ljava/lang/String;

    const-string p2, "internal_third_packagename"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    const-string p2, "internal_capability_client"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget p1, p0, Lcom/oplus/ocs/base/common/api/d;->e:I

    const-string p2, "internal_third_pid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-boolean p1, p0, Lcom/oplus/ocs/base/common/api/d;->f:Z

    const-string p2, "internal_active_write_permits"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "internal_base_version"

    const-string p2, "1.0.11"

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-boolean p1, p0, Lcom/oplus/ocs/base/common/api/d;->g:Z

    const-string p2, "internal_wait_service"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "internal_service_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method a()V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->i:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "bind_type"

    const/4 p2, 0x2

    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->d:Ljava/lang/String;

    const-string p2, "internal_third_packagename"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    const-string p2, "internal_capability_client"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "internal_service_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public b()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->j:Lcom/oplus/ocs/base/common/api/n;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/n;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->j:Lcom/oplus/ocs/base/common/api/n;

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/n;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 110
    sget-object v0, Lcom/oplus/ocs/base/common/api/d;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "current thread - %s and what - %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->j:Lcom/oplus/ocs/base/common/api/n;

    if-eqz p0, :cond_1

    .line 114
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/n;->c()V

    :cond_1
    :goto_0
    return v3
.end method
