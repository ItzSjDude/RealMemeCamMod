.class public Lcom/coui/appcompat/widget/navigation/COUINavigationView;
.super Landroid/widget/FrameLayout;
.source "COUINavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$a;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$b;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$c;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Landroidx/appcompat/view/menu/h;

.field private final d:Lcom/coui/appcompat/widget/navigation/b;

.field private final e:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

.field private f:Landroid/view/MenuInflater;

.field private g:Landroid/animation/Animator;

.field private h:Landroid/animation/Animator;

.field private i:I

.field private j:Lcom/coui/appcompat/widget/navigation/COUINavigationView$c;

.field private k:Lcom/coui/appcompat/widget/navigation/COUINavigationView$b;

.field private l:Lcom/coui/appcompat/widget/navigation/COUINavigationView$a;

.field private m:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 86
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->a:[I

    .line 87
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->b:[I

    return-void
.end method

.method private a()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 211
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->i:I

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/b;->setItemHeight(I)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->f:Landroid/view/MenuInflater;

    .line 563
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->f:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public getDividerView()Landroid/view/View;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->m:Landroid/view/View;

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->c:Landroidx/appcompat/view/menu/h;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->a()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 577
    instance-of v0, p1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    if-nez v0, :cond_0

    .line 578
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 581
    :cond_0
    check-cast p1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    .line 582
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 583
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->c:Landroidx/appcompat/view/menu/h;

    iget-object p1, p1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 568
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 569
    new-instance v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 571
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->c:Landroidx/appcompat/view/menu/h;

    iget-object v0, v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAnimationType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 405
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->g:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 407
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->h:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/b;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/b;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .locals 1

    .line 335
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->i:I

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/b;->setItemLayoutType(I)V

    .line 337
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->a()V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/b;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->d:Lcom/coui/appcompat/widget/navigation/b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/b;->setNeedTextAnim(Z)V

    return-void
.end method

.method public setOnAnimatorListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$a;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->l:Lcom/coui/appcompat/widget/navigation/COUINavigationView$a;

    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$b;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->k:Lcom/coui/appcompat/widget/navigation/COUINavigationView$b;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$c;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->j:Lcom/coui/appcompat/widget/navigation/COUINavigationView$c;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->c:Landroidx/appcompat/view/menu/h;

    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->e:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 393
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
