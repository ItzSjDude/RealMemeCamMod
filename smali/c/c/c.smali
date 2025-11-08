.class public final Lc/c/c;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lc/c/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/c$a;
    }
.end annotation


# instance fields
.field private final element:Lc/c/g$b;

.field private final left:Lc/c/g;


# direct methods
.method public constructor <init>(Lc/c/g;Lc/c/g$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/c;->left:Lc/c/g;

    iput-object p2, p0, Lc/c/c;->element:Lc/c/g$b;

    return-void
.end method

.method private final contains(Lc/c/g$b;)Z
    .locals 1

    .line 153
    invoke-interface {p1}, Lc/c/g$b;->getKey()Lc/c/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/c;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final containsAll(Lc/c/c;)Z
    .locals 1

    .line 158
    :goto_0
    iget-object v0, p1, Lc/c/c;->element:Lc/c/g$b;

    invoke-direct {p0, v0}, Lc/c/c;->contains(Lc/c/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 159
    :cond_0
    iget-object p1, p1, Lc/c/c;->left:Lc/c/g;

    .line 160
    instance-of v0, p1, Lc/c/c;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Lc/c/c;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 163
    check-cast p1, Lc/c/g$b;

    invoke-direct {p0, p1}, Lc/c/c;->contains(Lc/c/g$b;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final size()I
    .locals 2

    .line 144
    check-cast p0, Lc/c/c;

    const/4 v0, 0x2

    .line 147
    :goto_0
    iget-object p0, p0, Lc/c/c;->left:Lc/c/g;

    instance-of v1, p0, Lc/c/c;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lc/c/c;

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 179
    invoke-direct {p0}, Lc/c/c;->size()I

    move-result v0

    .line 180
    new-array v1, v0, [Lc/c/g;

    .line 181
    new-instance v2, Lc/f/b/j$a;

    invoke-direct {v2}, Lc/f/b/j$a;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lc/f/b/j$a;->element:I

    .line 182
    sget-object v4, Lc/s;->a:Lc/s;

    new-instance v5, Lc/c/c$c;

    invoke-direct {v5, v1, v2}, Lc/c/c$c;-><init>([Lc/c/g;Lc/f/b/j$a;)V

    check-cast v5, Lc/f/a/m;

    invoke-virtual {p0, v4, v5}, Lc/c/c;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    .line 183
    iget p0, v2, Lc/f/b/j$a;->element:I

    if-ne p0, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 185
    new-instance p0, Lc/c/c$a;

    invoke-direct {p0, v1}, Lc/c/c$a;-><init>([Lc/c/g;)V

    return-object p0

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 169
    move-object v0, p0

    check-cast v0, Lc/c/c;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lc/c/c;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/c;

    invoke-direct {p1}, Lc/c/c;->size()I

    move-result v0

    invoke-direct {p0}, Lc/c/c;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lc/c/c;->containsAll(Lc/c/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "operation"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lc/c/c;->left:Lc/c/g;

    invoke-interface {v0, p1, p2}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lc/c/c;->element:Lc/c/g$b;

    invoke-interface {p2, p1, p0}, Lc/f/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lc/c/g$c;)Lc/c/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    check-cast p0, Lc/c/c;

    .line 120
    :goto_0
    iget-object v0, p0, Lc/c/c;->element:Lc/c/g$b;

    invoke-interface {v0, p1}, Lc/c/g$b;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 121
    :cond_0
    iget-object p0, p0, Lc/c/c;->left:Lc/c/g;

    .line 122
    instance-of v0, p0, Lc/c/c;

    if-eqz v0, :cond_1

    .line 123
    check-cast p0, Lc/c/c;

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {p0, p1}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    iget-object v0, p0, Lc/c/c;->left:Lc/c/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lc/c/c;->element:Lc/c/g$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
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

    .line 134
    iget-object v0, p0, Lc/c/c;->element:Lc/c/g$b;

    invoke-interface {v0, p1}, Lc/c/g$b;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc/c/c;->left:Lc/c/g;

    return-object p0

    .line 135
    :cond_0
    iget-object v0, p0, Lc/c/c;->left:Lc/c/g;

    invoke-interface {v0, p1}, Lc/c/g;->minusKey(Lc/c/g$c;)Lc/c/g;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lc/c/c;->left:Lc/c/g;

    if-ne p1, v0, :cond_1

    check-cast p0, Lc/c/g;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lc/c/h;->INSTANCE:Lc/c/h;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lc/c/c;->element:Lc/c/g$b;

    check-cast p0, Lc/c/g;

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Lc/c/c;

    iget-object p0, p0, Lc/c/c;->element:Lc/c/g$b;

    invoke-direct {v0, p1, p0}, Lc/c/c;-><init>(Lc/c/g;Lc/c/g$b;)V

    move-object p0, v0

    check-cast p0, Lc/c/g;

    :goto_0
    return-object p0
.end method

.method public plus(Lc/c/g;)Lc/c/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1}, Lc/c/g$a;->a(Lc/c/g;Lc/c/g;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/c/c$b;->INSTANCE:Lc/c/c$b;

    check-cast v1, Lc/f/a/m;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lc/c/c;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
