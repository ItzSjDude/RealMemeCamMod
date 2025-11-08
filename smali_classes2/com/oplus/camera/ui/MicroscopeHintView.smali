.class public Lcom/oplus/camera/ui/MicroscopeHintView;
.super Landroid/widget/RelativeLayout;
.source "MicroscopeHintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/MicroscopeHintView$a;,
        Lcom/oplus/camera/ui/MicroscopeHintView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/airbnb/lottie/LottieAnimationView;

.field private b:Lcom/oplus/camera/ui/CameraUIInterface;

.field private c:Lcom/oplus/camera/ComboPreferences;

.field private d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

.field private e:I

.field private f:Z

.field private g:Lcom/oplus/camera/ui/MicroscopeHintView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->c:Lcom/oplus/camera/ComboPreferences;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    .line 45
    iput-boolean v1, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->g:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->c:Lcom/oplus/camera/ComboPreferences;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    .line 45
    iput-boolean v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    .line 46
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->g:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 55
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->c:Lcom/oplus/camera/ComboPreferences;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    const/4 p3, 0x0

    .line 44
    iput p3, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    .line 45
    iput-boolean p3, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    .line 46
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->g:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 60
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.oplus.feature.micro.guide.anim.type"

    .line 64
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    .line 65
    new-instance v0, Lcom/oplus/camera/ui/MicroscopeHintView$b;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/MicroscopeHintView$b;-><init>(Lcom/oplus/camera/ui/MicroscopeHintView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/MicroscopeHintView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/MicroscopeHintView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->g:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/MicroscopeHintView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->c:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/MicroscopeHintView;)Lcom/oplus/camera/ui/MicroscopeHintView$b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/MicroscopeHintView$a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ComboPreferences;)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    .line 94
    iput-object p2, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 95
    iput-object p3, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->c:Lcom/oplus/camera/ComboPreferences;

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->g:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->d:Lcom/oplus/camera/ui/MicroscopeHintView$b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/MicroscopeHintView$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->f:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090248

    .line 71
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/MicroscopeHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    iget v0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->e:I

    const v1, 0x7f0f0034

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/MicroscopeHintView;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :goto_0
    return-void
.end method
