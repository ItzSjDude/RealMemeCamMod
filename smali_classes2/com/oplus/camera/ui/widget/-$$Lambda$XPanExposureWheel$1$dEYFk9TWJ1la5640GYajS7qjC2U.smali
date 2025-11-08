.class public final synthetic Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;->f$0:Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;->f$0:Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$XPanExposureWheel$1$dEYFk9TWJ1la5640GYajS7qjC2U;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;->lambda$dEYFk9TWJ1la5640GYajS7qjC2U(Lcom/oplus/camera/ui/widget/XPanExposureWheel$1;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
