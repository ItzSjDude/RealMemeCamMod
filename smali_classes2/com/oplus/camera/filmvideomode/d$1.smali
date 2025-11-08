.class Lcom/oplus/camera/filmvideomode/d$1;
.super Ljava/lang/Object;
.source "FilmMainBarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/d;->setItemTitleImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/filmvideomode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/d;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d$1;->b:Lcom/oplus/camera/filmvideomode/d;

    iput p2, p0, Lcom/oplus/camera/filmvideomode/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d$1;->b:Lcom/oplus/camera/filmvideomode/d;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/d;->a(Lcom/oplus/camera/filmvideomode/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d$1;->b:Lcom/oplus/camera/filmvideomode/d;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/d;->a(Lcom/oplus/camera/filmvideomode/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/d$1;->a:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d$1;->b:Lcom/oplus/camera/filmvideomode/d;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/d;->a(Lcom/oplus/camera/filmvideomode/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->measure(II)V

    :cond_0
    return-void
.end method
