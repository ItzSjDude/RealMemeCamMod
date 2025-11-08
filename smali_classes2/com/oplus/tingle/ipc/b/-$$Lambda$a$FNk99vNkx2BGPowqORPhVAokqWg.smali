.class public final synthetic Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tingle/ipc/b/a;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/b/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;->f$0:Lcom/oplus/tingle/ipc/b/a;

    iput-object p2, p0, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;->f$0:Lcom/oplus/tingle/ipc/b/a;

    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/-$$Lambda$a$FNk99vNkx2BGPowqORPhVAokqWg;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/b/a;->lambda$FNk99vNkx2BGPowqORPhVAokqWg(Lcom/oplus/tingle/ipc/b/a;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
