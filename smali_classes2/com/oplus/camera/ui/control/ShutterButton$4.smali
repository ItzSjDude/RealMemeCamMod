.class Lcom/oplus/camera/ui/control/ShutterButton$4;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->c(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/control/ShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ShutterButton;ZZ)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->c:Lcom/oplus/camera/ui/control/ShutterButton;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->a:Z

    iput-boolean p3, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 308
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 310
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->a:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->c:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->c:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->b:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->c:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$4;->c:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method
