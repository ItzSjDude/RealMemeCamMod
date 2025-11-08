.class Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;
.super Lcom/oplus/camera/ui/widget/f$a;
.source "XPanExposureWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/widget/XPanExposureWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/f$a;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eq p2, p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 80
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->setValue(I)V

    return-void
.end method

.method public static synthetic lambda$dEYFk9TWJ1la5640GYajS7qjC2U(Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/widget/f;IZ)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/widget/f$a;->a(Lcom/oplus/camera/ui/widget/f;IZ)V

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {p0, p2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;I)V

    return-void
.end method

.method public b(Lcom/oplus/camera/ui/widget/f;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {v0}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 72
    invoke-static {}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch() - showValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {v3}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 73
    new-array v1, v1, [F

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->a:Lcom/oplus/camera/ui/widget/XPanExposureWheel;

    invoke-static {v2}, Lcom/oplus/camera/ui/widget/XPanExposureWheel;->a(Lcom/oplus/camera/ui/widget/XPanExposureWheel;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    new-instance v1, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;-><init>(Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/widget/f$a;->b(Lcom/oplus/camera/ui/widget/f;)V

    return-void
.end method
