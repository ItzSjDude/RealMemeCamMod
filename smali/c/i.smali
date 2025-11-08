.class Lc/i;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static final a(Lc/f/a/a;)Lc/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/f/a/a<",
            "+TT;>;)",
            "Lc/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lc/o;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lc/o;-><init>(Lc/f/a/a;Ljava/lang/Object;ILc/f/b/f;)V

    check-cast v0, Lc/g;

    return-object v0
.end method
