.class Lcom/oplus/camera/ui/preview/p$6;
.super Ljava/lang/Object;
.source "GradienterAssistView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 507
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 509
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p;->o(Lcom/oplus/camera/ui/preview/p;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/p$a;

    if-nez v0, :cond_0

    const-string p0, "GradienterAssistView"

    const-string p1, "startTransitionAnimation, attitude list is empty."

    .line 512
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/p;->m(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/p;->l(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, p1, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    .line 518
    invoke-static {v5}, Lcom/oplus/camera/ui/preview/p;->p(Lcom/oplus/camera/ui/preview/p;)F

    move-result v5

    .line 517
    invoke-static {v1, v2, v0, v4, v5}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;FF)V

    .line 527
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    .line 532
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->l(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    .line 533
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->o(Lcom/oplus/camera/ui/preview/p;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 536
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->q(Lcom/oplus/camera/ui/preview/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p$a;->b(Lcom/oplus/camera/ui/preview/p$a;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 537
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$6;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/p;->invalidate()V

    :cond_3
    return-void
.end method
