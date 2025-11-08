.class public Lcom/oplus/camera/screen/out/f;
.super Landroid/app/Presentation;
.source "ReEntryPresentation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/out/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airbnb/lottie/LottieAnimationView;

.field private c:Landroid/view/View;

.field private d:Lcom/oplus/camera/screen/out/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->a:Landroid/view/View;

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->c:Landroid/view/View;

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->d:Lcom/oplus/camera/screen/out/f$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/out/f;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/screen/out/f;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/oplus/camera/screen/out/f$a;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->d:Lcom/oplus/camera/screen/out/f$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090152

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/screen/out/f;->d:Lcom/oplus/camera/screen/out/f$a;

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0}, Lcom/oplus/camera/screen/out/f$a;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "ReEntryPresentation"

    const-string v1, "onCreate"

    .line 42
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/f;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1604

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/f;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0145

    .line 52
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/f;->setContentView(I)V

    const p1, 0x7f0902f8

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->a:Landroid/view/View;

    const p1, 0x7f0901b2

    .line 54
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 55
    iget-object p1, p0, Lcom/oplus/camera/screen/out/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0038

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 56
    iget-object p1, p0, Lcom/oplus/camera/screen/out/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    const p1, 0x7f090152

    .line 57
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/f;->c:Landroid/view/View;

    .line 58
    iget-object p1, p0, Lcom/oplus/camera/screen/out/f;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, schedule ts: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/oplus/camera/screen/out/f$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/screen/out/f$1;-><init>(Lcom/oplus/camera/screen/out/f;J)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
