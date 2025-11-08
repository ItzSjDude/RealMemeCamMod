.class public abstract Lorg/a/a;
.super Ljava/lang/Object;
.source "BaseDescription.java"

# interfaces
.implements Lorg/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lorg/a/d;"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/a/b/d;

    invoke-direct {v0, p4}, Lorg/a/b/d;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/a/d;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 62
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 65
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/a/h;",
            ">;)",
            "Lorg/a/d;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, p2}, Lorg/a/a;->b(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/h;

    invoke-virtual {p0, p1}, Lorg/a/a;->a(Lorg/a/h;)Lorg/a/d;

    const/4 p1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, p3}, Lorg/a/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method private b(C)V
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lorg/a/a;->a(C)V

    goto :goto_0

    :cond_0
    const-string p1, "\\\""

    .line 129
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\\r"

    .line 135
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\\n"

    .line 132
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\\t"

    .line 138
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x22

    .line 119
    invoke-virtual {p0, v0}, Lorg/a/a;->a(C)V

    const/4 v1, 0x0

    .line 120
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/a/a;->b(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lorg/a/a;->a(C)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/a/d;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 31
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/a/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    .line 35
    invoke-virtual {p0, v0}, Lorg/a/a;->a(C)V

    .line 36
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {p0, p1}, Lorg/a/a;->b(C)V

    .line 37
    invoke-virtual {p0, v0}, Lorg/a/a;->a(C)V

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    const/16 v1, 0x3c

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Lorg/a/a;->a(C)V

    .line 40
    invoke-direct {p0, p1}, Lorg/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    const-string p1, "s>"

    .line 41
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p0, v1}, Lorg/a/a;->a(C)V

    .line 44
    invoke-direct {p0, p1}, Lorg/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    const-string p1, "L>"

    .line 45
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0, v1}, Lorg/a/a;->a(C)V

    .line 48
    invoke-direct {p0, p1}, Lorg/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    const-string p1, "F>"

    .line 49
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lorg/a/b/a;

    invoke-direct {v0, p1}, Lorg/a/b/a;-><init>(Ljava/lang/Object;)V

    const-string p1, "["

    const-string v1, ", "

    const-string v2, "]"

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/a/d;

    goto :goto_0

    .line 53
    :cond_6
    invoke-virtual {p0, v1}, Lorg/a/a;->a(C)V

    .line 54
    invoke-direct {p0, p1}, Lorg/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    const/16 p1, 0x3e

    .line 55
    invoke-virtual {p0, p1}, Lorg/a/a;->a(C)V

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/a/d;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lorg/a/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/a/h;",
            ">;)",
            "Lorg/a/d;"
        }
    .end annotation

    .line 85
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/a/d;

    move-result-object p0

    return-object p0
.end method

.method public a(Lorg/a/h;)Lorg/a/d;
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Lorg/a/h;->describeTo(Lorg/a/d;)V

    return-object p0
.end method

.method protected abstract a(C)V
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/a/a;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
