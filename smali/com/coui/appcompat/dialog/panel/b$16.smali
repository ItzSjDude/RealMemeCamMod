.class Lcom/coui/appcompat/dialog/panel/b$16;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;I)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 5

    .line 708
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->s(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->w(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->w(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 713
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_4

    .line 714
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v2

    if-eqz v2, :cond_4

    if-lez v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/b;->v(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;)V

    goto :goto_2

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/panel/d;->a(Lcom/coui/appcompat/widget/l;)V

    .line 723
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 724
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 726
    :cond_5
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    .line 681
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 682
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$bool;->is_coui_bottom_sheet_ime_adjust_in_constraint_layout:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 683
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 684
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 685
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->s(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 686
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/a/m;->a(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;I)I

    :cond_3
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 693
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    move p2, v0

    .line 694
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/a/m;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->t(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    if-le p2, v1, :cond_1

    const/4 v0, 0x1

    .line 695
    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p2}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->s(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 697
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->u(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 698
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2, p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 699
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p2}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->v(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->w(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p2, v0, v1, p0}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;)V

    goto :goto_1

    .line 701
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$16;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :goto_1
    return-object p1
.end method
