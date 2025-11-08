.class public Lcom/airbnb/lottie/e/ac;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements Lcom/airbnb/lottie/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/e/aj<",
        "Lcom/airbnb/lottie/g/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/airbnb/lottie/e/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/airbnb/lottie/e/ac;

    invoke-direct {v0}, Lcom/airbnb/lottie/e/ac;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e/ac;->a:Lcom/airbnb/lottie/e/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/e/a/c;F)Lcom/airbnb/lottie/g/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->f()Lcom/airbnb/lottie/e/a/c$b;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/e/a/c$b;->BEGIN_ARRAY:Lcom/airbnb/lottie/e/a/c$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->a()V

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->k()D

    move-result-wide v0

    double-to-float v0, v0

    .line 22
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->k()D

    move-result-wide v1

    double-to-float v1, v1

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->m()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/airbnb/lottie/e/a/c;->b()V

    .line 29
    :cond_3
    new-instance p0, Lcom/airbnb/lottie/g/d;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/g/d;-><init>(FF)V

    return-object p0
.end method

.method public synthetic b(Lcom/airbnb/lottie/e/a/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/e/ac;->a(Lcom/airbnb/lottie/e/a/c;F)Lcom/airbnb/lottie/g/d;

    move-result-object p0

    return-object p0
.end method
