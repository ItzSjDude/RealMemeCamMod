.class final Lc/c/c$c;
.super Lc/f/b/i;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lc/f/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/f/b/i;",
        "Lc/f/a/m<",
        "Lc/s;",
        "Lc/c/g$b;",
        "Lc/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lc/c/g;

.field final synthetic $index:Lc/f/b/j$a;


# direct methods
.method constructor <init>([Lc/c/g;Lc/f/b/j$a;)V
    .locals 0

    iput-object p1, p0, Lc/c/c$c;->$elements:[Lc/c/g;

    iput-object p2, p0, Lc/c/c$c;->$index:Lc/f/b/j$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lc/f/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Lc/s;

    check-cast p2, Lc/c/g$b;

    invoke-virtual {p0, p1, p2}, Lc/c/c$c;->invoke(Lc/s;Lc/c/g$b;)V

    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0
.end method

.method public final invoke(Lc/s;Lc/c/g$b;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lc/c/c$c;->$elements:[Lc/c/g;

    iget-object p0, p0, Lc/c/c$c;->$index:Lc/f/b/j$a;

    iget v0, p0, Lc/f/b/j$a;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/f/b/j$a;->element:I

    check-cast p2, Lc/c/g;

    aput-object p2, p1, v0

    return-void
.end method
