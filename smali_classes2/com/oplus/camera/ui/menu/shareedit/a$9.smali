.class Lcom/oplus/camera/ui/menu/shareedit/a$9;
.super Lcom/oplus/camera/ui/menu/shareedit/a$a;
.source "ShareEditThumbMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/a$a;-><init>()V

    const/4 p1, 0x0

    .line 548
    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->a:F

    .line 549
    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->b:F

    return-void
.end method


# virtual methods
.method a(FLandroid/view/animation/Transformation;)V
    .locals 8

    .line 553
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1, p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/menu/shareedit/a;F)V

    .line 554
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;I)V

    .line 555
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->m(Lcom/oplus/camera/ui/menu/shareedit/a;)F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->b:F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->m(Lcom/oplus/camera/ui/menu/shareedit/a;)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->a:F

    .line 556
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->n(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 557
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->o(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 558
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->p(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageAlpha(I)V

    .line 559
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->q(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->n(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->r(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v5}, Lcom/oplus/camera/ui/menu/shareedit/a;->s(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v5

    const/4 v7, 0x0

    move v6, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    .line 560
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->t(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->o(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->u(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v5}, Lcom/oplus/camera/ui/menu/shareedit/a;->v(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v5

    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    .line 562
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->w(Lcom/oplus/camera/ui/menu/shareedit/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->x(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->p(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->r(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->s(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/shareedit/a;->x(Lcom/oplus/camera/ui/menu/shareedit/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/shareedit/a;->p(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/shareedit/a;->y(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->z(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;IIFZ)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/view/animation/Animation;)V
    .locals 0

    .line 571
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/shareedit/a$a;->a(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected b(Landroid/view/animation/Animation;)V
    .locals 1

    .line 576
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->A(Lcom/oplus/camera/ui/menu/shareedit/a;)I

    move-result p1

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->c(Lcom/oplus/camera/ui/menu/shareedit/a;Z)V

    .line 581
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->B(Lcom/oplus/camera/ui/menu/shareedit/a;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->C(Lcom/oplus/camera/ui/menu/shareedit/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->D(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    .line 583
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/shareedit/a;->E(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    .line 584
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->d(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z

    .line 585
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->e(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z

    .line 588
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$9;->c:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a()V

    return-void
.end method
