.class Lcom/oplus/camera/ag$15;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 2599
    iput-object p1, p0, Lcom/oplus/camera/ag$15;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2602
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2603
    iget-object v0, p0, Lcom/oplus/camera/ag$15;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->F(Lcom/oplus/camera/ag;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2605
    iget-object v0, p0, Lcom/oplus/camera/ag$15;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2606
    iget-object p0, p0, Lcom/oplus/camera/ag$15;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ag$a;->c(F)V

    :cond_0
    return-void
.end method
