.class Lcom/oplus/camera/professional/h$17$1;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h$17;->a(Lcom/oplus/camera/ui/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h$17;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h$17;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v0, v0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 557
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v0, v0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->k(Lcom/oplus/camera/professional/h;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 558
    invoke-static {v1}, Lcom/oplus/camera/professional/h;->j(Lcom/oplus/camera/professional/h;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 557
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "square"

    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v0, v0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    .line 561
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->l(Lcom/oplus/camera/professional/h;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v0, v0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->m(Lcom/oplus/camera/professional/h;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v0, v0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->n(Lcom/oplus/camera/professional/h;)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->o(Lcom/oplus/camera/professional/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;Z)Z

    .line 569
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1, v0}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;I)V

    .line 570
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v3, v3, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v3}, Lcom/oplus/camera/professional/h;->p(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p$a;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v2}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    goto :goto_1

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v1}, Lcom/oplus/camera/professional/h;->q(Lcom/oplus/camera/professional/h;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 572
    iget-object v1, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v1, v1, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    iget-object v2, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object v2, v2, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v2}, Lcom/oplus/camera/professional/h;->q(Lcom/oplus/camera/professional/h;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;II)V

    .line 575
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h$17$1;->a:Lcom/oplus/camera/professional/h$17;

    iget-object p0, p0, Lcom/oplus/camera/professional/h$17;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0, v0}, Lcom/oplus/camera/professional/h;->c(Lcom/oplus/camera/professional/h;I)I

    return-void
.end method
