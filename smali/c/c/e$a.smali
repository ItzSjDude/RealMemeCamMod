.class public final Lc/c/e$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lc/c/e;Lc/c/g$c;)Lc/c/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lc/c/e;",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Lc/c/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    check-cast p1, Lc/c/b;

    invoke-interface {p0}, Lc/c/e;->getKey()Lc/c/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/b;->a(Lc/c/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lc/c/g$b;

    invoke-virtual {p1, p0}, Lc/c/b;->a(Lc/c/g$b;)Lc/c/g$b;

    move-result-object p0

    instance-of p1, p0, Lc/c/g$b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1

    .line 60
    :cond_2
    sget-object v0, Lc/c/e;->a:Lc/c/e$b;

    if-ne v0, p1, :cond_4

    if-eqz p0, :cond_3

    move-object v1, p0

    check-cast v1, Lc/c/g$b;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type E"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static b(Lc/c/e;Lc/c/g$c;)Lc/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/e;",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v0, p1, Lc/c/b;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lc/c/b;

    invoke-interface {p0}, Lc/c/e;->getKey()Lc/c/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/b;->a(Lc/c/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc/c/g$b;

    invoke-virtual {p1, v0}, Lc/c/b;->a(Lc/c/g$b;)Lc/c/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Lc/c/h;->INSTANCE:Lc/c/h;

    :cond_0
    check-cast p0, Lc/c/g;

    return-object p0

    .line 70
    :cond_1
    sget-object v0, Lc/c/e;->a:Lc/c/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Lc/c/h;->INSTANCE:Lc/c/h;

    :cond_2
    check-cast p0, Lc/c/g;

    return-object p0
.end method
