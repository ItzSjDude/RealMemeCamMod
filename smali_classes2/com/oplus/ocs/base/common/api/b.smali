.class public abstract Lcom/oplus/ocs/base/common/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oplus/ocs/base/common/api/a$e;
.implements Lcom/oplus/ocs/base/common/api/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IBinder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/ocs/base/common/api/a$e;",
        "Lcom/oplus/ocs/base/common/api/t;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "b"


# instance fields
.field volatile b:I

.field c:Lcom/oplus/ocs/base/common/CapabilityInfo;

.field d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/oplus/ocs/base/common/api/i;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/oplus/ocs/base/common/api/s;

.field f:Lcom/oplus/ocs/base/common/api/r;

.field g:Lcom/oplus/ocs/base/common/api/m;

.field h:Lcom/oplus/ocs/base/common/api/n;

.field private i:Landroid/content/Context;

.field private j:Landroid/os/Looper;

.field private k:Lcom/oplus/ocs/base/common/api/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->d:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    if-eqz p1, :cond_1

    .line 52
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->i:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 53
    check-cast p2, Landroid/os/Looper;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/b;->j:Landroid/os/Looper;

    .line 54
    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/b;)Lcom/oplus/ocs/base/common/api/l;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->k:Lcom/oplus/ocs/base/common/api/l;

    .line 55
    invoke-static {}, Lcom/oplus/ocs/base/common/api/k;->a()Lcom/oplus/ocs/base/common/api/k;

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->i:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->getClientName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->k:Lcom/oplus/ocs/base/common/api/l;

    invoke-static {p1, p2, v0, p0}, Lcom/oplus/ocs/base/common/api/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/t;)Lcom/oplus/ocs/base/common/api/n;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->h:Lcom/oplus/ocs/base/common/api/n;

    return-void

    .line 1031
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Looper must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1025
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/oplus/ocs/base/common/api/i;Z)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->connect()V

    :cond_0
    return-void
.end method

.method static b(I)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 7

    .line 319
    new-instance v6, Lcom/oplus/ocs/base/common/AuthResult;

    const/4 v0, 0x0

    new-array v5, v0, [B

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/AuthResult;-><init>(Ljava/lang/String;III[B)V

    .line 320
    new-instance p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/oplus/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;)V

    return-object p0
.end method


# virtual methods
.method final a(I)V
    .locals 2

    .line 293
    sget-object v0, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string v1, "handleAuthenticateFailure"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/b;->a(Landroid/os/Handler;)V

    .line 297
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    .line 298
    iput v1, v0, Landroid/os/Message;->what:I

    .line 299
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 300
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/m;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Landroid/os/Handler;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 140
    new-instance p1, Lcom/oplus/ocs/base/common/api/m;

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->j:Landroid/os/Looper;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/b;->k:Lcom/oplus/ocs/base/common/api/l;

    invoke-direct {p1, v0, v1}, Lcom/oplus/ocs/base/common/api/m;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/l;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/common/api/m;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/b;->k:Lcom/oplus/ocs/base/common/api/l;

    invoke-direct {v0, p1, v1}, Lcom/oplus/ocs/base/common/api/m;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/l;)V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/api/m;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq p0, p1, :cond_2

    .line 147
    sget-object p0, Lcom/oplus/ocs/base/common/api/b;->a:Ljava/lang/String;

    const-string p1, "the new handler looper is not the same as the old one."

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/oplus/ocs/base/common/api/i;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 258
    invoke-virtual {p1, p0}, Lcom/oplus/ocs/base/common/api/i;->a(I)V

    return-void

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/base/common/api/i;->a(I)V

    :cond_1
    return-void
.end method

.method public addQueue(Lcom/oplus/ocs/base/common/api/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/b;->a(Lcom/oplus/ocs/base/common/api/i;)V

    return-void

    .line 2216
    :cond_0
    iget v0, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 224
    invoke-direct {p0, p1, v2}, Lcom/oplus/ocs/base/common/api/b;->a(Lcom/oplus/ocs/base/common/api/i;Z)V

    return-void

    .line 226
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/oplus/ocs/base/common/api/b;->a(Lcom/oplus/ocs/base/common/api/i;Z)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->h:Lcom/oplus/ocs/base/common/api/n;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/n;->a()Z

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1073
    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/b;->b(I)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 1074
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/b;->a(I)V

    .line 1075
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->e:Lcom/oplus/ocs/base/common/api/s;

    if-eqz p0, :cond_1

    .line 1076
    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/s;->a()V

    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->h:Lcom/oplus/ocs/base/common/api/n;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/n;->c()V

    return-void
.end method

.method public getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method public abstract getClientName()Ljava/lang/String;
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->j:Landroid/os/Looper;

    return-object p0
.end method

.method public getMinApkVersion()I
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/b;->a()V

    .line 118
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getVersion()I

    move-result p0

    return p0
.end method

.method public getRemoteService()Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/b;->a()V

    .line 107
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    .line 207
    iget p0, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnecting()Z
    .locals 1

    .line 212
    iget p0, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChange(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/oplus/ocs/base/common/api/b;->b:I

    return-void
.end method

.method public setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/r;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->f:Lcom/oplus/ocs/base/common/api/r;

    return-void
.end method

.method public setOnClearListener(Lcom/oplus/ocs/base/common/api/s;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/b;->e:Lcom/oplus/ocs/base/common/api/s;

    return-void
.end method

.method public setOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 180
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 182
    new-instance p2, Lcom/oplus/ocs/base/common/a;

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    invoke-direct {p2, p0}, Lcom/oplus/ocs/base/common/a;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/oplus/ocs/base/common/api/e;->a(Lcom/oplus/ocs/base/common/a;)V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/ocs/base/common/api/b;->a(Landroid/os/Handler;)V

    .line 186
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    .line 2036
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/m;->b:Lcom/oplus/ocs/base/common/api/e;

    :cond_1
    return-void
.end method

.method public setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/b;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    .line 157
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/f;->a()V

    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/common/api/b$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/ocs/base/common/api/b$1;-><init>(Lcom/oplus/ocs/base/common/api/b;Lcom/oplus/ocs/base/common/api/f;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 171
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oplus/ocs/base/common/api/b;->a(Landroid/os/Handler;)V

    .line 172
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/b;->g:Lcom/oplus/ocs/base/common/api/m;

    .line 2032
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/m;->a:Lcom/oplus/ocs/base/common/api/f;

    :cond_2
    return-void
.end method
