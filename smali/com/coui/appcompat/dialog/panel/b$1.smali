.class Lcom/coui/appcompat/dialog/panel/b$1;
.super Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 3

    .line 390
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 391
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget p1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->h:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 397
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 398
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 399
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(II)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    const/16 p1, 0x1e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 378
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    .line 381
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->dismiss()V

    goto/16 :goto_0

    .line 369
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    if-lt p2, p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 370
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 372
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 373
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    .line 375
    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0, v1}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    goto/16 :goto_0

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 365
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->f(Lcom/coui/appcompat/dialog/panel/b;)V

    goto :goto_0

    .line 344
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 345
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 346
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->b()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 347
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 348
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 349
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 350
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$1;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object p2

    new-instance v0, Lcom/coui/appcompat/dialog/panel/b$1$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/b$1$1;-><init>(Lcom/coui/appcompat/dialog/panel/b$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/coui/appcompat/dialog/panel/f;->a(Landroid/view/View;Lcom/coui/appcompat/dialog/panel/f$a;)V

    :cond_6
    :goto_0
    return-void
.end method
