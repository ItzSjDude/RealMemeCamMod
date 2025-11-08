.class public Lcom/oplus/ocs/base/common/api/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/a$d;,
        Lcom/oplus/ocs/base/common/api/a$a;,
        Lcom/oplus/ocs/base/common/api/a$c;,
        Lcom/oplus/ocs/base/common/api/a$b;,
        Lcom/oplus/ocs/base/common/api/a$f;,
        Lcom/oplus/ocs/base/common/api/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/oplus/ocs/base/common/api/a$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/ocs/base/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private b:Lcom/oplus/ocs/base/common/api/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/a$f<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/a$a;Lcom/oplus/ocs/base/common/api/a$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/oplus/ocs/base/common/api/a$e;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/base/common/api/a$a<",
            "TC;TO;>;",
            "Lcom/oplus/ocs/base/common/api/a$f<",
            "TC;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/ocs/base/common/api/a;-><init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/a$a;Lcom/oplus/ocs/base/common/api/a$f;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/a$a;Lcom/oplus/ocs/base/common/api/a$f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/oplus/ocs/base/common/api/a$e;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/base/common/api/a$a<",
            "TC;TO;>;",
            "Lcom/oplus/ocs/base/common/api/a$f<",
            "TC;>;Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "can not construct whit the null AbstractClientBuilder"

    .line 34
    invoke-static {p2, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "can not construct with the null ClientKey"

    .line 35
    invoke-static {p3, v0}, Lcom/oplus/ocs/base/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/a;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/a;->a:Lcom/oplus/ocs/base/common/api/a$a;

    .line 38
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/a;->b:Lcom/oplus/ocs/base/common/api/a$f;

    .line 39
    iput-boolean p4, p0, Lcom/oplus/ocs/base/common/api/a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/ocs/base/common/api/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/a;->a:Lcom/oplus/ocs/base/common/api/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ClientBuilder is null"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/d;->a(ZLjava/lang/Object;)V

    .line 48
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a;->a:Lcom/oplus/ocs/base/common/api/a$a;

    return-object p0
.end method

.method public b()Lcom/oplus/ocs/base/common/api/a$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/a$f<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a;->b:Lcom/oplus/ocs/base/common/api/a$f;

    if-eqz p0, :cond_0

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This API was constructed with null clientKey."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oplus/ocs/base/common/api/a;->d:Z

    return p0
.end method
