.class Lcom/oplus/camera/ui/preview/ai$9;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ai;->getEnterAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ai;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ai;)V
    .locals 0

    .line 3510
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3513
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/ai;->g(Lcom/oplus/camera/ui/preview/ai;F)F

    .line 3515
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->invalidate()V

    .line 3517
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    iget p1, p1, Lcom/oplus/camera/ui/preview/ai;->aS:F

    const/4 v0, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/ag;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3518
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$9;->a:Lcom/oplus/camera/ui/preview/ai;

    iget p1, p0, Lcom/oplus/camera/ui/preview/ai;->aS:F

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->d(Lcom/oplus/camera/ui/preview/ai;F)V

    :cond_0
    return-void
.end method
