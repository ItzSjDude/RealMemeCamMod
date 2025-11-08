.class Landroidx/room/e$5;
.super Landroidx/room/d$b;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/d;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/room/e;


# direct methods
.method constructor <init>(Landroidx/room/e;[Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Landroidx/room/e$5;->b:Landroidx/room/e;

    invoke-direct {p0, p2}, Landroidx/room/d$b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroidx/room/e$5;->b:Landroidx/room/e;

    iget-object v0, v0, Landroidx/room/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/e$5;->b:Landroidx/room/e;

    iget-object v0, v0, Landroidx/room/e;->f:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_1

    .line 181
    iget-object p0, p0, Landroidx/room/e$5;->b:Landroidx/room/e;

    iget p0, p0, Landroidx/room/e;->c:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroidx/room/IMultiInstanceInvalidationService;->a(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ROOM"

    const-string v0, "Cannot broadcast invalidation"

    .line 184
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
