.class public Lcom/airbnb/lottie/a/b/b;
.super Lcom/airbnb/lottie/a/b/f;
.source "ColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/a/b/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/a<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/b/b;->c(Lcom/airbnb/lottie/g/a;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/airbnb/lottie/g/a;F)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/a<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 24
    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    iget-object v1, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    iget-object v2, p0, Lcom/airbnb/lottie/a/b/b;->c:Lcom/airbnb/lottie/g/c;

    if-eqz v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/airbnb/lottie/a/b/b;->c:Lcom/airbnb/lottie/g/c;

    iget v4, p1, Lcom/airbnb/lottie/g/a;->f:F

    iget-object p1, p1, Lcom/airbnb/lottie/g/a;->g:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->d()F

    move-result v9

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->h()F

    move-result v10

    move v8, p2

    .line 32
    invoke-virtual/range {v3 .. v10}, Lcom/airbnb/lottie/g/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    invoke-static {p2, p0, p1}, Lcom/airbnb/lottie/f/g;->b(FFF)F

    move-result p0

    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/f/b;->a(FII)I

    move-result p0

    return p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->c()Lcom/airbnb/lottie/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->e()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/a/b/b;->c(Lcom/airbnb/lottie/g/a;F)I

    move-result p0

    return p0
.end method
