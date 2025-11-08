.class Lcom/oplus/camera/screen/a/c$1;
.super Ljava/lang/Object;
.source "OutPreviewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/a/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/a/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/a/c;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/screen/a/c$1;->a:Lcom/oplus/camera/screen/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c$1;->a:Lcom/oplus/camera/screen/a/c;

    invoke-static {p0}, Lcom/oplus/camera/screen/a/c;->a(Lcom/oplus/camera/screen/a/c;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$d-bpmb5zncn0a7E3oaDGzHV4Am8(Lcom/oplus/camera/screen/a/c$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/screen/a/c$1;->a()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c$1;->a:Lcom/oplus/camera/screen/a/c;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/c;->a(Lcom/oplus/camera/screen/a/c;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/screen/a/-$$Lambda$c$1$d-bpmb5zncn0a7E3oaDGzHV4Am8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/a/-$$Lambda$c$1$d-bpmb5zncn0a7E3oaDGzHV4Am8;-><init>(Lcom/oplus/camera/screen/a/c$1;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v2, v1}, Lcom/oplus/camera/screen/a/c;->a(Lcom/oplus/camera/screen/a/c;Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
