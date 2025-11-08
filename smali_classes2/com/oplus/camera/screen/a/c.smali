.class public Lcom/oplus/camera/screen/a/c;
.super Ljava/lang/Object;
.source "OutPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/a/c$b;,
        Lcom/oplus/camera/screen/a/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/screen/out/e;

.field private b:Lcom/oplus/camera/screen/a/c$b;

.field private c:Lcom/airbnb/lottie/LottieAnimationView;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/oplus/camera/screen/a/c;->f:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/screen/a/c;->g:Z

    .line 40
    iput-boolean v0, p0, Lcom/oplus/camera/screen/a/c;->h:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/c;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private static synthetic a(J)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/util/e;->a(IZJ)V

    return-void
.end method

.method private a(Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V
    .locals 2

    const/4 v0, 0x2

    .line 198
    new-array v0, v0, [F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    int-to-float p2, p3

    const/4 p3, 0x1

    aput p2, v0, p3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    .line 199
    iget-object p2, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/oplus/camera/screen/a/-$$Lambda$c$8Y_yUgSg7Bud2SYWxOlWBwpqo-o;

    invoke-direct {p3, p1}, Lcom/oplus/camera/screen/a/-$$Lambda$c$8Y_yUgSg7Bud2SYWxOlWBwpqo-o;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/screen/a/c$2;

    invoke-direct {p2, p0, p4}, Lcom/oplus/camera/screen/a/c$2;-><init>(Lcom/oplus/camera/screen/a/c;Lcom/oplus/camera/screen/a/c$a;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/c;Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/a/c;->a(Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V

    return-void
.end method

.method private synthetic d()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public static synthetic lambda$8Y_yUgSg7Bud2SYWxOlWBwpqo-o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/a/c;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$Cm6Af0vjVb-VKxbX--kENdyNAZE(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/a/c;->a(J)V

    return-void
.end method

.method public static synthetic lambda$ci5aV7K14Bk4rZE3d0tOxljxgVU(Lcom/oplus/camera/screen/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/screen/a/c;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/a/c;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, "com.oplus.feature.out.preview.disable.temperature"

    .line 139
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 140
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->g:Z

    .line 142
    iget-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->g:Z

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p0, v1}, Lcom/oplus/camera/screen/a/c;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/oplus/camera/screen/a/c$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/a/c$1;-><init>(Lcom/oplus/camera/screen/a/c;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070920

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07091e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07091f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    new-instance v1, Lcom/oplus/camera/screen/a/-$$Lambda$c$ci5aV7K14Bk4rZE3d0tOxljxgVU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/a/-$$Lambda$c$ci5aV7K14Bk4rZE3d0tOxljxgVU;-><init>(Lcom/oplus/camera/screen/a/c;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/camera/screen/a/c;->a(Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/screen/a/c$b;)V
    .locals 4

    const-string v0, "OutPreviewManager"

    const-string v1, "switchOutPresentation"

    .line 47
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    .line 51
    iget-object p2, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/c;->a(Z)V

    goto :goto_0

    .line 54
    :cond_0
    iget-boolean p2, p0, Lcom/oplus/camera/screen/a/c;->g:Z

    if-eqz p2, :cond_1

    const-string p0, "switchOutPresentation, highTemperature"

    .line 55
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1001ed

    invoke-static {p0, p1}, Lcom/oplus/camera/util/o;->c(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-boolean p2, p0, Lcom/oplus/camera/screen/a/c;->f:Z

    if-eqz p2, :cond_3

    const-string p2, "switchOutPresentation, enable"

    .line 60
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    if-eqz p2, :cond_2

    .line 63
    invoke-interface {p2}, Lcom/oplus/camera/screen/a/c$b;->c()V

    :cond_2
    const/4 p2, -0x1

    const/4 v1, 0x1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/oplus/camera/util/e;->a(IZJ)V

    const-string p2, "display"

    .line 67
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    const/16 v1, 0x1000

    .line 68
    invoke-virtual {p2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 69
    new-instance v1, Lcom/oplus/camera/screen/out/e;

    invoke-direct {v1, p1, p2}, Lcom/oplus/camera/screen/out/e;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    iget-object p2, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/screen/out/e;->a(Lcom/oplus/camera/screen/a/c$b;)V

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    iget-boolean p2, p0, Lcom/oplus/camera/screen/a/c;->h:Z

    invoke-virtual {p1, p2}, Lcom/oplus/camera/screen/out/e;->a(Z)V

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/out/e;->show()V

    .line 74
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    if-eqz p1, :cond_3

    const-string p1, "switchOutPresentation, onPreviewShow"

    .line 75
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/a/c$b;->a(Lcom/oplus/camera/screen/out/e;)V

    :cond_3
    :goto_0
    const-string p0, "switchOutPresentation X"

    .line 82
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "OutPreviewManager"

    const-string v1, "closeOutPresentation"

    .line 86
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    if-eqz v1, :cond_0

    const-string v1, "closeOutPresentation, onPreviewDismiss"

    .line 90
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    iget-object v2, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    invoke-interface {v1, v2}, Lcom/oplus/camera/screen/a/c$b;->b(Lcom/oplus/camera/screen/out/e;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/out/e;->dismiss()V

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_1

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeOutPresentation, requestDeviceFolded ts: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->e:Landroid/os/Handler;

    new-instance v3, Lcom/oplus/camera/screen/a/-$$Lambda$c$Cm6Af0vjVb-VKxbX--kENdyNAZE;

    invoke-direct {v3, v1, v2}, Lcom/oplus/camera/screen/a/-$$Lambda$c$Cm6Af0vjVb-VKxbX--kENdyNAZE;-><init>(J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "closeOutPresentation, requestDeviceFolded"

    .line 106
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v3, 0x0

    .line 108
    invoke-static {p1, v3, v1, v2}, Lcom/oplus/camera/util/e;->a(IZJ)V

    .line 111
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->g:Z

    if-eqz p1, :cond_2

    .line 112
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1001ed

    invoke-static {p1, v1}, Lcom/oplus/camera/util/o;->c(Landroid/content/Context;I)V

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    if-eqz p1, :cond_2

    const-string p1, "closeOutPresentation, onHighTemperatureDisabled"

    .line 116
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->b:Lcom/oplus/camera/screen/a/c$b;

    invoke-interface {p0}, Lcom/oplus/camera/screen/a/c$b;->b()V

    :cond_2
    const-string p0, "closeOutPresentation X"

    .line 123
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->f:Z

    .line 133
    iget-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/screen/a/c;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/c;->h:Z

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c;->a:Lcom/oplus/camera/screen/out/e;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/e;->a(Z)V

    :cond_0
    return-void
.end method
