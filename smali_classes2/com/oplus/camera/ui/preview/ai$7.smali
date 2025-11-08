.class Lcom/oplus/camera/ui/preview/ai$7;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ai;->K()V
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

    .line 3458
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3467
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, p1, Lcom/oplus/camera/ui/preview/ai;->aQ:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setCenterPointIndex(I)V

    .line 3468
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v0, p1, Lcom/oplus/camera/ui/preview/ai;->cV:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/camera/ui/preview/ai;->cW:Ljava/lang/String;

    .line 3469
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, p1, Lcom/oplus/camera/ui/preview/ai;->aR:F

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->d(Lcom/oplus/camera/ui/preview/ai;F)V

    .line 3470
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, p1, Lcom/oplus/camera/ui/preview/ai;->aS:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 3472
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->k()V

    .line 3473
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->e(Lcom/oplus/camera/ui/preview/ai;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3461
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->k()V

    .line 3462
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$7;->a:Lcom/oplus/camera/ui/preview/ai;

    iget p1, p0, Lcom/oplus/camera/ui/preview/ai;->aR:F

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->f(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->a(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai;->cY:Ljava/lang/String;

    return-void
.end method
