.class Lcom/oplus/camera/util/Util$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ZFFLandroid/animation/TimeInterpolator;JLandroid/animation/TimeInterpolator;JLandroid/animation/Animator$AnimatorListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Z


# direct methods
.method constructor <init>(ZLandroid/view/View;FFZ)V
    .locals 0

    .line 2370
    iput-boolean p1, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    iput-object p2, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iput p3, p0, Lcom/oplus/camera/util/Util$6;->c:F

    iput p4, p0, Lcom/oplus/camera/util/Util$6;->d:F

    iput-boolean p5, p0, Lcom/oplus/camera/util/Util$6;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 2385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationCancel, view: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", visible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Util"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2390
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const v0, 0x7f09005a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 2392
    instance-of v0, p1, Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 2393
    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    check-cast p1, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2394
    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 2396
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/util/Util$6;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2397
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/util/Util$6;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2400
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2401
    invoke-static {}, Lcom/oplus/camera/util/Util;->aW()Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, view: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", visible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Util"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    iget-boolean p1, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    if-nez p1, :cond_0

    .line 2409
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2414
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const v0, 0x7f09005a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 2416
    instance-of v0, p1, Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 2417
    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    check-cast p1, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2418
    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 2420
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/util/Util$6;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2421
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget v0, p0, Lcom/oplus/camera/util/Util$6;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2424
    :goto_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->aW()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    iget-boolean p0, p0, Lcom/oplus/camera/util/Util$6;->e:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2373
    iget-boolean p1, p0, Lcom/oplus/camera/util/Util$6;->a:Z

    if-eqz p1, :cond_0

    .line 2374
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2376
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2379
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object p0, p0, Lcom/oplus/camera/util/Util$6;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
