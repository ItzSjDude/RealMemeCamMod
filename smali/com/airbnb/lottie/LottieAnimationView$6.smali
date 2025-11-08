.class Lcom/airbnb/lottie/LottieAnimationView$6;
.super Lcom/airbnb/lottie/g/c;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/g/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/g/e;

.field final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/g/e;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$6;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$6;->a:Lcom/airbnb/lottie/g/e;

    invoke-direct {p0}, Lcom/airbnb/lottie/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 944
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView$6;->a:Lcom/airbnb/lottie/g/e;

    invoke-interface {p0, p1}, Lcom/airbnb/lottie/g/e;->getValue(Lcom/airbnb/lottie/g/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
