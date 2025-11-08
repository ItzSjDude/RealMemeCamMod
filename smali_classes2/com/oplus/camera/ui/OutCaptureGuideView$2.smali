.class Lcom/oplus/camera/ui/OutCaptureGuideView$2;
.super Ljava/lang/Object;
.source "OutCaptureGuideView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/OutCaptureGuideView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/OutCaptureGuideView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/OutCaptureGuideView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/OutCaptureGuideView$2;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/OutCaptureGuideView$2;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-static {p1}, Lcom/oplus/camera/ui/OutCaptureGuideView;->a(Lcom/oplus/camera/ui/OutCaptureGuideView;)Lcom/oplus/camera/ui/OutCaptureGuideView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->setVisibility(I)V

    .line 95
    iget-object p0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView$2;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-static {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->b(Lcom/oplus/camera/ui/OutCaptureGuideView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
