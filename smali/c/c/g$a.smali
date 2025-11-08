.class public final Lc/c/g$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lc/c/g;Lc/c/g;)Lc/c/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lc/c/h;->INSTANCE:Lc/c/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lc/c/g$a$a;->INSTANCE:Lc/c/g$a$a;

    check-cast v0, Lc/f/a/m;

    invoke-interface {p1, p0, v0}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/g;

    :goto_0
    return-object p0
.end method
