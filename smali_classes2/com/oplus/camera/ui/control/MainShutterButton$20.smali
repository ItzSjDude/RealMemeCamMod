.class Lcom/oplus/camera/ui/control/MainShutterButton$20;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/MainShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 2830
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$20;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2833
    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$20;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;F)F

    .line 2834
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$20;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method
