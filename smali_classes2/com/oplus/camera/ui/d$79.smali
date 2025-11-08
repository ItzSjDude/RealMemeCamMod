.class Lcom/oplus/camera/ui/d$79;
.super Landroid/os/Handler;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Landroid/os/Looper;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 931
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 932
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 933
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 934
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 935
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 923
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 924
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->y(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    goto/16 :goto_1

    .line 941
    :pswitch_2
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/d;->i(Z)V

    goto/16 :goto_1

    .line 902
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1, v5}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;Z)Z

    .line 903
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    goto/16 :goto_1

    .line 865
    :pswitch_4
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 866
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    .line 869
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v3}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;I)V

    goto/16 :goto_1

    .line 888
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1, v5}, Lcom/oplus/camera/ui/d;->d(Lcom/oplus/camera/ui/d;Z)Z

    .line 889
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    .line 891
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->w(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 892
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 893
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/b;->a()I

    move-result p0

    invoke-interface {p1, p0, v5}, Lcom/oplus/camera/ui/CameraUIListener;->a(IZ)V

    goto/16 :goto_1

    .line 896
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v5}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;Z)Z

    goto/16 :goto_1

    .line 856
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 857
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    .line 860
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v5}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;I)V

    goto/16 :goto_1

    .line 913
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->x(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 914
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->x(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 915
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->x(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 916
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->x(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 917
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 908
    :pswitch_8
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->x(Lcom/oplus/camera/ui/d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    goto/16 :goto_1

    .line 874
    :pswitch_9
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1, v5}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;Z)Z

    .line 875
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    .line 877
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->w(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 878
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 879
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/b;->a()I

    move-result p0

    invoke-interface {p1, p0, v5}, Lcom/oplus/camera/ui/CameraUIListener;->a(IZ)V

    goto/16 :goto_1

    .line 882
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v5}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;Z)Z

    goto/16 :goto_1

    .line 847
    :pswitch_a
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->v(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/b;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 848
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/d;->l(Z)V

    .line 851
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;I)V

    goto/16 :goto_1

    .line 842
    :pswitch_b
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->et()V

    goto/16 :goto_1

    .line 837
    :pswitch_c
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cS()V

    goto/16 :goto_1

    .line 817
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->u(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 818
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 819
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a;->b(I)V

    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 821
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->T()Z

    move-result v0

    if-nez v0, :cond_7

    .line 825
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;I)V

    goto :goto_0

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/d;->d(Lcom/oplus/camera/ui/d;I)V

    .line 831
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;I)I

    goto :goto_1

    .line 806
    :pswitch_e
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->m(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    .line 807
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    .line 808
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    .line 809
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const-string v0, "pref_support_night_process"

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 810
    iget-object p1, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1, v3}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;I)I

    .line 811
    iget-object p0, p0, Lcom/oplus/camera/ui/d$79;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->o(Lcom/oplus/camera/ui/d;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->m(I)V

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
