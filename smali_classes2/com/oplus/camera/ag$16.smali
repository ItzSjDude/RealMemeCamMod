.class Lcom/oplus/camera/ag$16;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->c(Landroid/view/ViewGroup;)V
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

    .line 587
    iput-object p1, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ag$16;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->t(Lcom/oplus/camera/ag;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->u(Lcom/oplus/camera/ag;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setFromClickView(Z)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setFromClickView(Z)V

    .line 603
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, p1, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    :cond_2
    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 609
    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/j;->g()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;F)F

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/oplus/camera/ag;->a:F

    .line 617
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FZ)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/oplus/camera/ag;->a:F

    .line 620
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-static {v0, v1, p2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FZ)V

    .line 625
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 627
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    .line 628
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    if-nez v0, :cond_5

    .line 629
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    .line 630
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->v()Z

    move-result v0

    if-nez v0, :cond_5

    .line 631
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1, p2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FZ)V

    .line 635
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 636
    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->q()V

    :cond_6
    return-void
.end method

.method public a()Z
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b()V
    .locals 1

    .line 652
    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ag$a;->b(F)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/oplus/camera/ag$16;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p0

    return p0
.end method
