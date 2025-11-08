.class Lc/j/f;
.super Lc/j/e;
.source "Sequences.kt"


# direct methods
.method public static final a(Lc/j/b;)Lc/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/j/b<",
            "+TT;>;)",
            "Lc/j/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    instance-of v0, p0, Lc/j/a;

    if-eqz v0, :cond_0

    check-cast p0, Lc/j/a;

    goto :goto_0

    :cond_0
    new-instance v0, Lc/j/a;

    invoke-direct {v0, p0}, Lc/j/a;-><init>(Lc/j/b;)V

    move-object p0, v0

    :goto_0
    check-cast p0, Lc/j/b;

    return-object p0
.end method

.method public static final a(Ljava/util/Iterator;)Lc/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lc/j/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asSequence"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lc/j/f$a;

    invoke-direct {v0, p0}, Lc/j/f$a;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Lc/j/b;

    invoke-static {v0}, Lc/j/c;->a(Lc/j/b;)Lc/j/b;

    move-result-object p0

    return-object p0
.end method
