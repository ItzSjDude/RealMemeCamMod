.class public final Lkotlinx/coroutines/w;
.super Lc/c/a;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/bl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a;",
        "Lkotlinx/coroutines/bl<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/w$a;


# instance fields
.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/w$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lkotlinx/coroutines/w;->a:Lkotlinx/coroutines/w$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 62
    sget-object v0, Lkotlinx/coroutines/w;->a:Lkotlinx/coroutines/w$a;

    check-cast v0, Lc/c/g$c;

    invoke-direct {p0, v0}, Lc/c/a;-><init>(Lc/c/g$c;)V

    iput-wide p1, p0, Lkotlinx/coroutines/w;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lkotlinx/coroutines/w;->b:J

    return-wide v0
.end method

.method public a(Lc/c/g;)Ljava/lang/String;
    .locals 8

    .line 67
    sget-object v0, Lkotlinx/coroutines/x;->a:Lkotlinx/coroutines/x$a;

    check-cast v0, Lc/c/g$c;

    invoke-interface {p1, v0}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/x;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/x;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "coroutine"

    .line 68
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, " @"

    invoke-static/range {v2 .. v7}, Lc/k/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-wide p0, p0, Lkotlinx/coroutines/w;->b:J

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    sget-object p0, Lc/s;->a:Lc/s;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v1

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic a(Lc/c/g;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/w;->a(Lc/c/g;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lc/c/g;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Lc/c/g;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/w;->a(Lc/c/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/w;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/w;

    iget-wide v0, p0, Lkotlinx/coroutines/w;->b:J

    iget-wide p0, p1, Lkotlinx/coroutines/w;->b:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/bl$a;->a(Lkotlinx/coroutines/bl;Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lc/c/g$c;)Lc/c/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lkotlinx/coroutines/bl$a;->a(Lkotlinx/coroutines/bl;Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/w;->b:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public minusKey(Lc/c/g$c;)Lc/c/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lkotlinx/coroutines/bl$a;->b(Lkotlinx/coroutines/bl;Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lc/c/g;)Lc/c/g;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lkotlinx/coroutines/bl$a;->a(Lkotlinx/coroutines/bl;Lc/c/g;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/w;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
