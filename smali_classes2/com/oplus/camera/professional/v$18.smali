.class Lcom/oplus/camera/professional/v$18;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->g(Lcom/oplus/camera/professional/v;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;I)I

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10e

    iget-object v2, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 618
    invoke-static {v2}, Lcom/oplus/camera/professional/v;->u(Lcom/oplus/camera/professional/v;)I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 619
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 620
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->g(Lcom/oplus/camera/professional/v;)I

    move-result v0

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 624
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->v(Lcom/oplus/camera/professional/v;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->v(Lcom/oplus/camera/professional/v;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 625
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->v(Lcom/oplus/camera/professional/v;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 628
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1, v1}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;I)V

    .line 629
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object v0

    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->s(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p$a;

    move-result-object v1

    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->w(Lcom/oplus/camera/professional/v;)Z

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->x(Lcom/oplus/camera/professional/v;)Z

    move-result v3

    const-wide/16 v4, 0x96

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/b;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10e

    iget-object v1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 559
    invoke-static {v1}, Lcom/oplus/camera/professional/v;->e(Lcom/oplus/camera/professional/v;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 560
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    iget p1, p1, Lcom/oplus/camera/ui/a/b;->a:I

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;I)I

    .line 565
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->h(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->g(Lcom/oplus/camera/professional/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object p1, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 567
    new-instance v0, Lcom/oplus/camera/professional/v$18$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/v$18$1;-><init>(Lcom/oplus/camera/professional/v$18;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method
