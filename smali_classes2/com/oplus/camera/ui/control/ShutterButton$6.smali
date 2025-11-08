.class Lcom/oplus/camera/ui/control/ShutterButton$6;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->setResIdWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/ShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$6;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 390
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 391
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$6;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$6;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 393
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$6;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method
