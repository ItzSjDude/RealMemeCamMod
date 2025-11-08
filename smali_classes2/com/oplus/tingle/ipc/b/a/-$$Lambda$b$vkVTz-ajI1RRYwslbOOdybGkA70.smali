.class public final synthetic Lcom/oplus/tingle/ipc/b/a/-$$Lambda$b$vkVTz-ajI1RRYwslbOOdybGkA70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tingle/ipc/b/a/b;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/b/a/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$b$vkVTz-ajI1RRYwslbOOdybGkA70;->f$0:Lcom/oplus/tingle/ipc/b/a/b;

    iput-object p2, p0, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$b$vkVTz-ajI1RRYwslbOOdybGkA70;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$b$vkVTz-ajI1RRYwslbOOdybGkA70;->f$0:Lcom/oplus/tingle/ipc/b/a/b;

    iget-object p0, p0, Lcom/oplus/tingle/ipc/b/a/-$$Lambda$b$vkVTz-ajI1RRYwslbOOdybGkA70;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/b/a/b;->lambda$vkVTz-ajI1RRYwslbOOdybGkA70(Lcom/oplus/tingle/ipc/b/a/b;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
