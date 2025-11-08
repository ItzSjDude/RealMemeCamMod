.class Lcom/coui/appcompat/dialog/panel/b$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->u()Landroid/animation/Animator$AnimatorListener;
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

    .line 1397
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1407
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->L(Lcom/coui/appcompat/dialog/panel/b;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1409
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->M(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1410
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 1413
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->N(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 1414
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    .line 1415
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->o(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->c(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1417
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1400
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1401
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$8;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(I)V

    :cond_0
    return-void
.end method
