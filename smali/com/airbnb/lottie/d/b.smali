.class public Lcom/airbnb/lottie/d/b;
.super Ljava/lang/Object;
.source "DefaultLottieNetworkFetcher.java"

# interfaces
.implements Lcom/airbnb/lottie/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/airbnb/lottie/d/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p1, "GET"

    .line 15
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 17
    new-instance p1, Lcom/airbnb/lottie/d/a;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/d/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
