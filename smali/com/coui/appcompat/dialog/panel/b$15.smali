.class Lcom/coui/appcompat/dialog/panel/b$15;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->m()V
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

    .line 643
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->o(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->p(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;)V

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_common_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_2

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->p(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$bool;->is_coui_bottom_sheet_ime_adjust_in_constraint_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 659
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;)V

    .line 660
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/d;->c()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/b;->d()Lcom/coui/appcompat/dialog/panel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/d;->e()I

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;I)I

    .line 663
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0, p2}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 664
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 665
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$15;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->r(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
