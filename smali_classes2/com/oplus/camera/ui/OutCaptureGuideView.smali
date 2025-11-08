.class public Lcom/oplus/camera/ui/OutCaptureGuideView;
.super Landroid/widget/RelativeLayout;
.source "OutCaptureGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/OutCaptureGuideView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/ui/OutCaptureGuideView;

.field private b:Lcom/airbnb/lottie/LottieAnimationView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/animation/Animation;

.field private e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 15
    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->c:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;

    .line 22
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OutCaptureGuideView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 15
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->c:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    .line 18
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;

    .line 27
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OutCaptureGuideView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 15
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->c:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    .line 18
    iput-object p2, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;

    .line 32
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OutCaptureGuideView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/OutCaptureGuideView;)Lcom/oplus/camera/ui/OutCaptureGuideView;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/OutCaptureGuideView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0100b7

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    new-instance v1, Lcom/oplus/camera/ui/OutCaptureGuideView$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/OutCaptureGuideView$1;-><init>(Lcom/oplus/camera/ui/OutCaptureGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    iget-object p0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0100b6

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    iget-object v1, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OutCaptureGuideView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->d:Landroid/view/animation/Animation;

    new-instance v1, Lcom/oplus/camera/ui/OutCaptureGuideView$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/OutCaptureGuideView$2;-><init>(Lcom/oplus/camera/ui/OutCaptureGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090152

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView$a;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0902a1

    .line 46
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/OutCaptureGuideView;

    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 47
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->a:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902a2

    .line 48
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const v0, 0x7f090152

    .line 50
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->c:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/oplus/camera/ui/OutCaptureGuideView$a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/ui/OutCaptureGuideView;->e:Lcom/oplus/camera/ui/OutCaptureGuideView$a;

    return-void
.end method
