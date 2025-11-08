.class public Lcom/oplus/camera/screen/out/c;
.super Landroid/app/Presentation;
.source "InnerPresentation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/out/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airbnb/lottie/LottieAnimationView;

.field private c:Landroid/widget/Button;

.field private d:Lcom/oplus/camera/screen/out/c$a;

.field private e:Z

.field private f:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->a:Landroid/view/View;

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->c:Landroid/widget/Button;

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->d:Lcom/oplus/camera/screen/out/c$a;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/screen/out/c;->e:Z

    .line 32
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->f:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/out/c;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/screen/out/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/screen/out/c;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/screen/out/c;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/oplus/camera/screen/out/c$a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->d:Lcom/oplus/camera/screen/out/c$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/oplus/camera/screen/out/c;->e:Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/screen/out/c;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 132
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090152

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/screen/out/c;->d:Lcom/oplus/camera/screen/out/c$a;

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Lcom/oplus/camera/screen/out/c$a;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "InnerPresentation"

    const-string v1, "onCreate"

    .line 44
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1604

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 52
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0143

    .line 54
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/c;->setContentView(I)V

    const p1, 0x7f0902f8

    .line 55
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->a:Landroid/view/View;

    const p1, 0x7f0901ee

    .line 56
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    iget-object p1, p0, Lcom/oplus/camera/screen/out/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f003a

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const p1, 0x7f090152

    .line 58
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oplus/camera/screen/out/c;->c:Landroid/widget/Button;

    .line 59
    iget-object p1, p0, Lcom/oplus/camera/screen/out/c;->c:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/oplus/camera/screen/out/c;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/oplus/camera/screen/out/c;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0100b7

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 63
    new-instance v1, Lcom/oplus/camera/screen/out/c$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/out/c$1;-><init>(Lcom/oplus/camera/screen/out/c;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    iget-object v1, p0, Lcom/oplus/camera/screen/out/c;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, schedule ts: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/screen/out/c;->f:Ljava/util/Timer;

    new-instance v0, Lcom/oplus/camera/screen/out/c$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/screen/out/c$2;-><init>(Lcom/oplus/camera/screen/out/c;J)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
