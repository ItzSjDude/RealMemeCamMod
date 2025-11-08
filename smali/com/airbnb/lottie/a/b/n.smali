.class public Lcom/airbnb/lottie/a/b/n;
.super Lcom/airbnb/lottie/a/b/f;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/a/b/f<",
        "Lcom/airbnb/lottie/c/b;",
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
            "Lcom/airbnb/lottie/c/b;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/b/n;->b(Lcom/airbnb/lottie/g/a;F)Lcom/airbnb/lottie/c/b;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/airbnb/lottie/g/a;F)Lcom/airbnb/lottie/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/a<",
            "Lcom/airbnb/lottie/c/b;",
            ">;F)",
            "Lcom/airbnb/lottie/c/b;"
        }
    .end annotation

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_1

    .line 14
    iget-object p0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/c/b;

    return-object p0

    .line 15
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/airbnb/lottie/g/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/c/b;

    return-object p0
.end method
