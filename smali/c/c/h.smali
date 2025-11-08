.class public final Lc/c/h;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lc/c/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lc/c/h;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lc/c/h;

    invoke-direct {v0}, Lc/c/h;-><init>()V

    sput-object v0, Lc/c/h;->INSTANCE:Lc/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    .line 97
    sget-object p0, Lc/c/h;->INSTANCE:Lc/c/h;

    return-object p0
.end method


# virtual methods
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

    const-string p0, "operation"

    invoke-static {p2, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

    const-string p0, "key"

    invoke-static {p1, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public minusKey(Lc/c/g$c;)Lc/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    check-cast p0, Lc/c/g;

    return-object p0
.end method

.method public plus(Lc/c/g;)Lc/c/g;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
