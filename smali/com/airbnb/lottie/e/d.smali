.class public Lcom/airbnb/lottie/e/d;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method public static a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/airbnb/lottie/c/a/b;

    if-eqz p2, :cond_0

    .line 32
    invoke-static {}, Lcom/airbnb/lottie/f/h;->a()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/airbnb/lottie/e/i;->a:Lcom/airbnb/lottie/e/i;

    invoke-static {p0, p2, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/airbnb/lottie/c/a/c;

    new-instance v1, Lcom/airbnb/lottie/e/l;

    invoke-direct {v1, p2}, Lcom/airbnb/lottie/e/l;-><init>(I)V

    .line 69
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/airbnb/lottie/e/a/c;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/e/a/c;",
            "F",
            "Lcom/airbnb/lottie/d;",
            "Lcom/airbnb/lottie/e/aj<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p2, p1, p3, v0}, Lcom/airbnb/lottie/e/r;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/aj;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/e/a/c;",
            "Lcom/airbnb/lottie/d;",
            "Lcom/airbnb/lottie/e/aj<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, p1, v0, p2, v1}, Lcom/airbnb/lottie/e/r;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/aj;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/airbnb/lottie/c/a/d;

    sget-object v1, Lcom/airbnb/lottie/e/o;->a:Lcom/airbnb/lottie/e/o;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static c(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/airbnb/lottie/c/a/f;

    invoke-static {}, Lcom/airbnb/lottie/f/h;->a()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/e/y;->a:Lcom/airbnb/lottie/e/y;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/airbnb/lottie/e/r;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/aj;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/airbnb/lottie/c/a/g;

    sget-object v1, Lcom/airbnb/lottie/e/ac;->a:Lcom/airbnb/lottie/e/ac;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static e(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/airbnb/lottie/c/a/h;

    .line 53
    invoke-static {}, Lcom/airbnb/lottie/f/h;->a()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/e/ad;->a:Lcom/airbnb/lottie/e/ad;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static f(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/airbnb/lottie/c/a/j;

    sget-object v1, Lcom/airbnb/lottie/e/h;->a:Lcom/airbnb/lottie/e/h;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/airbnb/lottie/c/a/a;

    sget-object v1, Lcom/airbnb/lottie/e/f;->a:Lcom/airbnb/lottie/e/f;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Lcom/airbnb/lottie/e/a/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/aj;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
