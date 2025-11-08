.class final Lc/c/g$a$a;
.super Lc/f/b/i;
.source "CoroutineContext.kt"

# interfaces
.implements Lc/f/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/g$a;->a(Lc/c/g;Lc/c/g;)Lc/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/f/b/i;",
        "Lc/f/a/m<",
        "Lc/c/g;",
        "Lc/c/g$b;",
        "Lc/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc/c/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/g$a$a;

    invoke-direct {v0}, Lc/c/g$a$a;-><init>()V

    sput-object v0, Lc/c/g$a$a;->INSTANCE:Lc/c/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/f/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lc/c/g;Lc/c/g$b;)Lc/c/g;
    .locals 2

    const-string p0, "acc"

    invoke-static {p1, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Lc/c/g$b;->getKey()Lc/c/g$c;

    move-result-object p0

    invoke-interface {p1, p0}, Lc/c/g;->minusKey(Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    .line 34
    sget-object p1, Lc/c/h;->INSTANCE:Lc/c/h;

    if-ne p0, p1, :cond_0

    check-cast p2, Lc/c/g;

    goto :goto_1

    .line 36
    :cond_0
    sget-object p1, Lc/c/e;->a:Lc/c/e$b;

    check-cast p1, Lc/c/g$c;

    invoke-interface {p0, p1}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object p1

    check-cast p1, Lc/c/e;

    if-nez p1, :cond_1

    .line 37
    new-instance p1, Lc/c/c;

    invoke-direct {p1, p0, p2}, Lc/c/c;-><init>(Lc/c/g;Lc/c/g$b;)V

    move-object p0, p1

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lc/c/e;->a:Lc/c/e$b;

    check-cast v0, Lc/c/g$c;

    invoke-interface {p0, v0}, Lc/c/g;->minusKey(Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    .line 39
    sget-object v0, Lc/c/h;->INSTANCE:Lc/c/h;

    if-ne p0, v0, :cond_2

    new-instance p0, Lc/c/c;

    check-cast p2, Lc/c/g;

    check-cast p1, Lc/c/g$b;

    invoke-direct {p0, p2, p1}, Lc/c/c;-><init>(Lc/c/g;Lc/c/g$b;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Lc/c/c;

    new-instance v1, Lc/c/c;

    invoke-direct {v1, p0, p2}, Lc/c/c;-><init>(Lc/c/g;Lc/c/g$b;)V

    check-cast v1, Lc/c/g;

    check-cast p1, Lc/c/g$b;

    invoke-direct {v0, v1, p1}, Lc/c/c;-><init>(Lc/c/g;Lc/c/g$b;)V

    move-object p0, v0

    .line 37
    :goto_0
    move-object p2, p0

    check-cast p2, Lc/c/g;

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lc/c/g;

    check-cast p2, Lc/c/g$b;

    invoke-virtual {p0, p1, p2}, Lc/c/g$a$a;->invoke(Lc/c/g;Lc/c/g$b;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method
