.class Lcom/oplus/camera/professional/h$17;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 582
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->g(Lcom/oplus/camera/professional/h;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/h;->c(Lcom/oplus/camera/professional/h;I)I

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10e

    iget-object v2, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 587
    invoke-static {v2}, Lcom/oplus/camera/professional/h;->r(Lcom/oplus/camera/professional/h;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 588
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 589
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->g(Lcom/oplus/camera/professional/h;)I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->s(Lcom/oplus/camera/professional/h;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->s(Lcom/oplus/camera/professional/h;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 594
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->s(Lcom/oplus/camera/professional/h;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 597
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1, v1}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;I)V

    .line 598
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object v0

    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->p(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p$a;

    move-result-object v1

    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->t(Lcom/oplus/camera/professional/h;)Z

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->u(Lcom/oplus/camera/professional/h;)Z

    move-result v3

    const-wide/16 v4, 0x96

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/b;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10e

    iget-object v1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 543
    invoke-static {v1}, Lcom/oplus/camera/professional/h;->e(Lcom/oplus/camera/professional/h;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 544
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    iget p1, p1, Lcom/oplus/camera/ui/a/b;->a:I

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;I)I

    .line 549
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->h(Lcom/oplus/camera/professional/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->g(Lcom/oplus/camera/professional/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object p1, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 551
    new-instance v0, Lcom/oplus/camera/professional/h$17$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/h$17$1;-><init>(Lcom/oplus/camera/professional/h$17;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
