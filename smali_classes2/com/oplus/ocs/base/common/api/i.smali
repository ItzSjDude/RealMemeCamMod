.class public Lcom/oplus/ocs/base/common/api/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/i$a;,
        Lcom/oplus/ocs/base/common/api/i$b;,
        Lcom/oplus/ocs/base/common/api/i$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Looper;

.field private c:Lcom/oplus/ocs/base/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/oplus/ocs/base/common/api/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/i$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/oplus/ocs/base/common/api/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/oplus/ocs/base/common/api/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/i<",
            "TT;>.c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/oplus/ocs/base/a/b;Lcom/oplus/ocs/base/common/api/i$b;Lcom/oplus/ocs/base/common/api/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/oplus/ocs/base/a/b<",
            "TT;>;",
            "Lcom/oplus/ocs/base/common/api/i$b<",
            "TT;>;",
            "Lcom/oplus/ocs/base/common/api/i$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/oplus/ocs/base/common/api/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/i;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/i;->b:Landroid/os/Looper;

    .line 35
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/i;->c:Lcom/oplus/ocs/base/a/b;

    .line 36
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/i;->e:Lcom/oplus/ocs/base/common/api/i$b;

    .line 37
    iput-object p4, p0, Lcom/oplus/ocs/base/common/api/i;->f:Lcom/oplus/ocs/base/common/api/i$a;

    .line 38
    new-instance p1, Lcom/oplus/ocs/base/common/api/i$c;

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/i;->b:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/oplus/ocs/base/common/api/i$c;-><init>(Lcom/oplus/ocs/base/common/api/i;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/i;->g:Lcom/oplus/ocs/base/common/api/i$c;

    return-void
.end method

.method static synthetic a(Lcom/oplus/ocs/base/common/api/i;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1067
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/i;->e:Lcom/oplus/ocs/base/common/api/i$b;

    if-eqz p1, :cond_1

    .line 1068
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/i;->c:Lcom/oplus/ocs/base/a/b;

    invoke-interface {p1, p0}, Lcom/oplus/ocs/base/common/api/i$b;->a(Lcom/oplus/ocs/base/a/b;)V

    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/i;->f:Lcom/oplus/ocs/base/common/api/i$a;

    if-eqz v0, :cond_1

    .line 1072
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/i;->c:Lcom/oplus/ocs/base/a/b;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/ocs/base/common/api/i$a;->a(Lcom/oplus/ocs/base/a/b;ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/oplus/ocs/base/common/api/i;->d:I

    .line 59
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 60
    iput v0, p1, Landroid/os/Message;->what:I

    .line 61
    iget v0, p0, Lcom/oplus/ocs/base/common/api/i;->d:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/i;->g:Lcom/oplus/ocs/base/common/api/i$c;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/i$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
