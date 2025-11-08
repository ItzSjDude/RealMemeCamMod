.class final Lcom/airbnb/lottie/a/b/a$e;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/a/b/a$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 237
    iput v0, p0, Lcom/airbnb/lottie/a/b/a$e;->b:F

    const/4 v0, 0x0

    .line 240
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/g/a;

    iput-object p1, p0, Lcom/airbnb/lottie/a/b/a$e;->a:Lcom/airbnb/lottie/g/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(F)Z
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/airbnb/lottie/a/b/a$e;->a:Lcom/airbnb/lottie/g/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->e()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public b()Lcom/airbnb/lottie/g/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/airbnb/lottie/a/b/a$e;->a:Lcom/airbnb/lottie/g/a;

    return-object p0
.end method

.method public b(F)Z
    .locals 1

    .line 270
    iget v0, p0, Lcom/airbnb/lottie/a/b/a$e;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 273
    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/a/b/a$e;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public c()F
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/airbnb/lottie/a/b/a$e;->a:Lcom/airbnb/lottie/g/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->c()F

    move-result p0

    return p0
.end method

.method public d()F
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/airbnb/lottie/a/b/a$e;->a:Lcom/airbnb/lottie/g/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->d()F

    move-result p0

    return p0
.end method
