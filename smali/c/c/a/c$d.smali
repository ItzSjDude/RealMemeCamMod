.class public final Lc/c/a/c$d;
.super Lc/c/b/a/c;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/c;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)Lc/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completion:Lc/c/d;

.field final synthetic $context:Lc/c/g;

.field final synthetic $receiver$inlined:Ljava/lang/Object;

.field final synthetic $this_createCoroutineUnintercepted$inlined:Lc/f/a/m;

.field private label:I


# direct methods
.method public constructor <init>(Lc/c/d;Lc/c/g;Lc/c/d;Lc/c/g;Lc/f/a/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/c$d;->$completion:Lc/c/d;

    iput-object p2, p0, Lc/c/a/c$d;->$context:Lc/c/g;

    iput-object p5, p0, Lc/c/a/c$d;->$this_createCoroutineUnintercepted$inlined:Lc/f/a/m;

    iput-object p6, p0, Lc/c/a/c$d;->$receiver$inlined:Ljava/lang/Object;

    .line 186
    invoke-direct {p0, p3, p4}, Lc/c/b/a/c;-><init>(Lc/c/d;Lc/c/g;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 190
    iget v0, p0, Lc/c/a/c$d;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 197
    iput v1, p0, Lc/c/a/c$d;->label:I

    .line 198
    invoke-static {p1}, Lc/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 192
    :cond_1
    iput v2, p0, Lc/c/a/c$d;->label:I

    .line 193
    invoke-static {p1}, Lc/n;->a(Ljava/lang/Object;)V

    .line 194
    move-object p1, p0

    check-cast p1, Lc/c/d;

    .line 205
    iget-object v0, p0, Lc/c/a/c$d;->$this_createCoroutineUnintercepted$inlined:Lc/f/a/m;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lc/f/b/m;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f/a/m;

    iget-object p0, p0, Lc/c/a/c$d;->$receiver$inlined:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lc/f/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
