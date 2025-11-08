.class Lcom/oplus/camera/professional/v$18$1;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v$18;->a(Lcom/oplus/camera/ui/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v$18;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v$18;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v0, v0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 572
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v0, v0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->j(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    .line 574
    new-instance v2, Lcom/oplus/camera/p$a;

    invoke-direct {v2}, Lcom/oplus/camera/p$a;-><init>()V

    if-eqz v1, :cond_0

    .line 577
    iget-object v3, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v3, v3, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v3}, Lcom/oplus/camera/professional/v;->k(Lcom/oplus/camera/professional/v;)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v4, v4, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v4}, Lcom/oplus/camera/professional/v;->l(Lcom/oplus/camera/professional/v;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/p$a;II)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->n(Lcom/oplus/camera/professional/v;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v3, v3, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 581
    invoke-static {v3}, Lcom/oplus/camera/professional/v;->m(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1002be

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    .line 580
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 584
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 586
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->o(Lcom/oplus/camera/professional/v;)I

    move-result v1

    add-int/2addr v1, v0

    iget v3, v2, Lcom/oplus/camera/p$a;->b:I

    if-le v1, v3, :cond_1

    .line 587
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->o(Lcom/oplus/camera/professional/v;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Lcom/oplus/camera/p$a;->b:I

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "square"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v0, v0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    .line 591
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->p(Lcom/oplus/camera/professional/v;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v0, v0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->q(Lcom/oplus/camera/professional/v;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v0, v0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->o(Lcom/oplus/camera/professional/v;)I

    move-result v1

    add-int/2addr v0, v1

    .line 598
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->r(Lcom/oplus/camera/professional/v;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 599
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1, v4}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;Z)Z

    .line 600
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1, v0}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;I)V

    .line 601
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v2, v2, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v2}, Lcom/oplus/camera/professional/v;->s(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p$a;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    goto :goto_2

    .line 602
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->t(Lcom/oplus/camera/professional/v;)I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 603
    iget-object v1, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v1, v1, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    iget-object v2, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object v2, v2, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v2}, Lcom/oplus/camera/professional/v;->t(Lcom/oplus/camera/professional/v;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;II)V

    .line 606
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/professional/v$18$1;->a:Lcom/oplus/camera/professional/v$18;

    iget-object p0, p0, Lcom/oplus/camera/professional/v$18;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0, v0}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;I)I

    return-void
.end method
