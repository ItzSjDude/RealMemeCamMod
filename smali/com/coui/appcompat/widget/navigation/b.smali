.class public Lcom/coui/appcompat/widget/navigation/b;
.super Landroid/view/ViewGroup;
.source "COUINavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:[Lcom/coui/appcompat/widget/navigation/a;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/content/res/ColorStateList;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:Z

.field private n:I

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/navigation/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

.field private q:Landroidx/appcompat/view/menu/h;


# direct methods
.method private c()Z
    .locals 3

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private getNewItem()Lcom/coui/appcompat/widget/navigation/a;
    .locals 2

    .line 497
    new-instance v0, Lcom/coui/appcompat/widget/navigation/a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/coui/appcompat/widget/navigation/b;->e:I

    invoke-direct {v0, v1, p0}, Lcom/coui/appcompat/widget/navigation/a;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->removeAllViews()V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 323
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    .line 324
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    return-void

    .line 328
    :cond_1
    new-array v2, v0, [Lcom/coui/appcompat/widget/navigation/a;

    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 330
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/j;

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    goto :goto_1

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->getNewItem()Lcom/coui/appcompat/widget/navigation/a;

    move-result-object v4

    .line 335
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    aput-object v4, v5, v2

    .line 336
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 337
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 338
    iget v5, p0, Lcom/coui/appcompat/widget/navigation/b;->j:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/a;->setTextSize(I)V

    .line 339
    iget v5, p0, Lcom/coui/appcompat/widget/navigation/b;->i:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/a;->setItemBackground(I)V

    .line 340
    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/widget/navigation/a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 341
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/navigation/a;->setItemPosition(I)V

    .line 342
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/b;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/b;->o:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/navigation/b$a;

    if-eqz v3, :cond_3

    .line 347
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/navigation/b$a;->a()I

    move-result v5

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/navigation/b$a;->b()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/coui/appcompat/widget/navigation/a;->a(II)V

    .line 351
    :cond_3
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/navigation/b;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    .line 354
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method a(I)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 401
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 402
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 403
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    .line 404
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    const/4 p0, 0x1

    .line 405
    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b()V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->a()V

    return-void

    .line 364
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 367
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 368
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    .line 370
    iput v3, p0, Lcom/coui/appcompat/widget/navigation/b;->h:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_2
    iget v3, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    if-eq v1, v3, :cond_3

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez v1, :cond_4

    return-void

    :cond_4
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_6

    .line 385
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    aget-object v3, v3, v1

    if-nez v3, :cond_5

    goto :goto_2

    .line 388
    :cond_5
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/b;->p:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->a(Z)V

    .line 389
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v3, v4, v2}, Lcom/coui/appcompat/widget/navigation/a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 390
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/b;->p:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->a(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .locals 0

    .line 298
    iget p0, p0, Lcom/coui/appcompat/widget/navigation/b;->i:I

    return p0
.end method

.method public getItemLayoutType()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/coui/appcompat/widget/navigation/b;->e:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->c:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 395
    iget p0, p0, Lcom/coui/appcompat/widget/navigation/b;->g:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/h;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/b;->q:Landroidx/appcompat/view/menu/h;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 565
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 566
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/a/l;->a(Landroid/content/Context;)I

    move-result p1

    .line 567
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/b;->n:I

    if-eq p1, v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->a()V

    .line 569
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->n:I

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 174
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/navigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    sub-int v2, p4, v0

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 183
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 124
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/b;->getChildCount()I

    move-result p2

    .line 126
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/b;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p2

    .line 127
    :goto_0
    div-int v3, p1, v3

    mul-int v4, v3, p2

    sub-int/2addr p1, v4

    const/4 v4, 0x0

    move v5, p1

    move p1, v4

    :goto_1
    if-ge p1, p2, :cond_2

    .line 130
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/b;->l:[I

    aput v3, v6, p1

    if-lez v5, :cond_1

    .line 132
    aget v7, v6, p1

    add-int/2addr v7, v2

    aput v7, v6, p1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v4

    move v3, p1

    :goto_2
    if-ge p1, p2, :cond_b

    .line 138
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    goto/16 :goto_8

    :cond_3
    if-ne p2, v2, :cond_4

    .line 143
    iget v6, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/b;->l:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_4
    if-nez p1, :cond_7

    .line 147
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    iget v6, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    :goto_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->c()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/b;->l:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_7
    add-int/lit8 v6, p2, -0x1

    if-ne p1, v6, :cond_a

    .line 150
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->c()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    goto :goto_5

    :cond_8
    move v6, v4

    :goto_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/b;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v4

    goto :goto_6

    :cond_9
    iget v7, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    :goto_6
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/b;->l:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/b;->k:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 153
    :cond_a
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/b;->l:[I

    aget v6, v6, p1

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    .line 157
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 158
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 163
    :cond_b
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 162
    invoke-static {v3, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/widget/navigation/b;->f:I

    .line 164
    invoke-static {p2, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/navigation/b;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/b;->d:Landroid/content/res/ColorStateList;

    .line 200
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez p0, :cond_0

    return-void

    .line 203
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 204
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/navigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    .line 276
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->i:I

    .line 277
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez p0, :cond_0

    return-void

    .line 280
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 281
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/navigation/a;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->f:I

    return-void
.end method

.method public setItemLayoutType(I)V
    .locals 3

    .line 233
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->e:I

    .line 234
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 238
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/navigation/a;->setItemLayoutType(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 223
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/b;->c:Landroid/content/res/ColorStateList;

    .line 224
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez p0, :cond_0

    return-void

    .line 227
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 228
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 3

    .line 252
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/b;->j:I

    .line 253
    iget-object p0, p0, Lcom/coui/appcompat/widget/navigation/b;->b:[Lcom/coui/appcompat/widget/navigation/a;

    if-nez p0, :cond_0

    return-void

    .line 256
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 257
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/navigation/a;->setTextSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setNeedTextAnim(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/navigation/b;->m:Z

    return-void
.end method

.method public setPresenter(Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/b;->p:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    return-void
.end method
