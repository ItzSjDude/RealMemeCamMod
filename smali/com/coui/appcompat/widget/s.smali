.class public Lcom/coui/appcompat/widget/s;
.super Landroid/widget/PopupWindow;
.source "COUIToolTips.java"


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:I

.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ScrollView;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private final r:[I

.field private s:[I

.field private final t:Landroid/graphics/Point;

.field private u:F

.field private v:F

.field private w:Landroid/view/animation/Interpolator;

.field private x:Z

.field private y:Landroid/view/View$OnLayoutChangeListener;

.field private z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/s;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 192
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/s;->k:Z

    const/4 v0, 0x4

    .line 126
    iput v0, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/4 v0, 0x2

    .line 129
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/s;->r:[I

    .line 130
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->s:[I

    .line 131
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    .line 138
    new-instance v0, Lcom/coui/appcompat/widget/s$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/s$1;-><init>(Lcom/coui/appcompat/widget/s;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->y:Landroid/view/View$OnLayoutChangeListener;

    .line 148
    new-instance v0, Lcom/coui/appcompat/widget/s$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/s$2;-><init>(Lcom/coui/appcompat/widget/s;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->z:Landroid/widget/PopupWindow$OnDismissListener;

    .line 193
    iput-object p1, p0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    .line 194
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/s;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/s;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->l:Landroid/view/View;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2

    .line 337
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 338
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a()V
    .locals 6

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->tool_tips_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    iget v1, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 435
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 437
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 439
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 441
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 442
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/s;->setWidth(I)V

    .line 443
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    .line 444
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v2

    add-int/2addr v0, v2

    .line 445
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x4

    .line 446
    iput v0, p0, Lcom/coui/appcompat/widget/s;->q:I

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->tool_tips_max_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    .line 448
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 449
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 450
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 452
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 453
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/s;->setWidth(I)V

    .line 454
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6

    .line 459
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    .line 461
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 463
    iget v1, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v3, 0x80

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 485
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/s;->k:Z

    .line 486
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/s;->C:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 487
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 489
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getHeight()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 490
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/s;->C:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 493
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 495
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getHeight()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 496
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 464
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->r:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 465
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->r:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 466
    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/s;->r:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 467
    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->r:[I

    aget v3, v4, v3

    sub-int/2addr v1, v3

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->m:Landroid/graphics/drawable/Drawable;

    .line 470
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 471
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 473
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    .line 475
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lt v1, p1, :cond_3

    .line 476
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/s;->k:Z

    .line 478
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/widget/s;->C:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x50

    .line 481
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/widget/s;->C:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 498
    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 423
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/s;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/s;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/s;->x:Z

    return p1
.end method

.method private b()I
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 8

    .line 504
    iget v0, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 506
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 507
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 508
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 510
    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr p1, v3

    goto/16 :goto_2

    :cond_0
    if-lt v2, v3, :cond_1

    .line 512
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_1
    if-le v1, v2, :cond_2

    .line 514
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 515
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    goto/16 :goto_2

    .line 517
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 518
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 523
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 524
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 526
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    if-lt v1, v3, :cond_5

    .line 528
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_5
    if-le v1, v2, :cond_6

    .line 530
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 531
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    goto :goto_2

    .line 533
    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 534
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/s;->setHeight(I)V

    goto :goto_2

    :cond_7
    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 537
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_8
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 538
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    .line 548
    :goto_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->r:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 549
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->r:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 550
    aget v1, v1, v4

    .line 551
    iget-object v5, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/s;->r:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 552
    iget-object v5, p0, Lcom/coui/appcompat/widget/s;->r:[I

    aget v6, v5, v2

    .line 553
    aget v5, v5, v4

    .line 554
    iget-object v7, p0, Lcom/coui/appcompat/widget/s;->s:[I

    sub-int/2addr v3, v6

    aput v3, v7, v2

    sub-int/2addr v1, v5

    .line 555
    aput v1, v7, v4

    .line 556
    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    aget v3, v7, v2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 557
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v3, v3, v4

    sub-int/2addr p1, v3

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    .line 558
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 556
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/s;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->g()V

    return-void
.end method

.method private c()I
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/s;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/s;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 590
    iget v0, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 591
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->s:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 592
    iput v3, p0, Lcom/coui/appcompat/widget/s;->u:F

    goto :goto_1

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    .line 595
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/coui/appcompat/widget/s;->u:F

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 597
    iput v0, p0, Lcom/coui/appcompat/widget/s;->u:F

    .line 599
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    if-lt v0, v4, :cond_3

    .line 600
    iput v2, p0, Lcom/coui/appcompat/widget/s;->v:F

    goto :goto_2

    .line 602
    :cond_3
    iput v3, p0, Lcom/coui/appcompat/widget/s;->v:F

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    move v2, v3

    .line 605
    :cond_5
    iput v2, p0, Lcom/coui/appcompat/widget/s;->u:F

    .line 606
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->s:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/s;->v:F

    :goto_2
    return-void
.end method

.method private e()V
    .locals 10

    .line 611
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/coui/appcompat/widget/s;->u:F

    iget v8, p0, Lcom/coui/appcompat/widget/s;->v:F

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 612
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 613
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 614
    iget-object v2, p0, Lcom/coui/appcompat/widget/s;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    .line 615
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 616
    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 617
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 618
    new-instance v0, Lcom/coui/appcompat/widget/s$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/s$5;-><init>(Lcom/coui/appcompat/widget/s;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 634
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private f()V
    .locals 12

    .line 638
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 639
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v9, p0, Lcom/coui/appcompat/widget/s;->u:F

    iget v11, p0, Lcom/coui/appcompat/widget/s;->v:F

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 640
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v3, 0x12c

    .line 641
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 642
    iget-object v3, p0, Lcom/coui/appcompat/widget/s;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 643
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 644
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 645
    new-instance v0, Lcom/coui/appcompat/widget/s$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/s$6;-><init>(Lcom/coui/appcompat/widget/s;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 663
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private g()V
    .locals 0

    .line 677
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 678
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->i()V

    .line 679
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 700
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->i()V

    .line 701
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->y:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private i()V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->y:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 205
    iput v1, v0, Lcom/coui/appcompat/widget/s;->b:I

    if-nez v1, :cond_0

    .line 207
    sget v2, Lcoui/support/appcompat/R$attr;->couiToolTipsStyle:I

    .line 208
    sget v3, Lcoui/support/appcompat/R$style;->COUIToolTips:I

    goto :goto_0

    .line 210
    :cond_0
    sget v2, Lcoui/support/appcompat/R$attr;->couiToolTipsDetailFloatingStyle:I

    .line 211
    sget v3, Lcoui/support/appcompat/R$style;->COUIToolTips_DetailFloating:I

    .line 213
    :goto_0
    iget-object v4, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIToolTips:[I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 215
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsBackground:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    .line 216
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 217
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowUpDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/s;->m:Landroid/graphics/drawable/Drawable;

    .line 218
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowDownDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/s;->n:Landroid/graphics/drawable/Drawable;

    .line 219
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowLeftDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/s;->o:Landroid/graphics/drawable/Drawable;

    .line 220
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowRightDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/s;->p:Landroid/graphics/drawable/Drawable;

    .line 221
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/s;->C:I

    .line 222
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsMinWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 223
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutGravity:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 224
    sget v8, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginStart:I

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 225
    sget v9, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginTop:I

    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 226
    sget v10, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginEnd:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 227
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginBottom:I

    invoke-virtual {v2, v11, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 228
    sget v12, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 229
    sget v13, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetStart:I

    invoke-virtual {v2, v13, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 230
    sget v14, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetTop:I

    invoke-virtual {v2, v14, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 231
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetEnd:I

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 232
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetBottom:I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 233
    iget-object v5, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v16, v6

    sget v6, Lcoui/support/appcompat/R$dimen;->couiToolTipsCancelButtonInsects:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 234
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    move/from16 v17, v13

    const v13, 0x3dcccccd    # 0.1f

    move/from16 v18, v14

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v19, v15

    const v15, 0x3e99999a    # 0.3f

    invoke-direct {v2, v15, v6, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, v0, Lcom/coui/appcompat/widget/s;->w:Landroid/view/animation/Interpolator;

    .line 238
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcoui/support/appcompat/R$layout;->coui_tool_tips_layout:I

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    .line 239
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 242
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/widget/s;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    .line 243
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 245
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->contentTv:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    .line 246
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/s;->i:Landroid/widget/ScrollView;

    .line 247
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->i:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 251
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 252
    iget-object v3, v0, Lcom/coui/appcompat/widget/s;->i:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x4

    .line 256
    iget-object v4, v0, Lcom/coui/appcompat/widget/s;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_1

    sget v6, Lcoui/support/appcompat/R$dimen;->tool_tips_content_text_size:I

    goto :goto_1

    :cond_1
    sget v6, Lcoui/support/appcompat/R$dimen;->detail_floating_content_text_size:I

    :goto_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 258
    invoke-static {v4, v2, v3}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result v2

    float-to-int v2, v2

    .line 259
    iget-object v3, v0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    iget-object v2, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->dismissIv:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 264
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    new-instance v1, Lcom/coui/appcompat/widget/s$3;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/s$3;-><init>(Lcom/coui/appcompat/widget/s;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 272
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    :goto_2
    new-instance v1, Lcom/coui/appcompat/widget/s$4;

    invoke-direct {v1, v0, v2, v5}, Lcom/coui/appcompat/widget/s$4;-><init>(Lcom/coui/appcompat/widget/s;Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 285
    iget-object v1, v0, Lcom/coui/appcompat/widget/s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/s;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v5, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    goto :goto_3

    :cond_3
    move/from16 v5, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    .line 293
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/s;->e:Landroid/graphics/Rect;

    :goto_3
    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/s;->setClippingEnabled(Z)V

    .line 302
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/s;->setAnimationStyle(I)V

    .line 303
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/s;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v1, v0, Lcom/coui/appcompat/widget/s;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/s;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/s;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/s;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 4

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    iput p2, p0, Lcom/coui/appcompat/widget/s;->q:I

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    .line 387
    iget p2, p0, Lcom/coui/appcompat/widget/s;->q:I

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    const/16 v1, 0x40

    if-ne p2, v1, :cond_5

    .line 388
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->b(Landroid/view/View;)Z

    move-result p2

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    .line 389
    iget p2, p0, Lcom/coui/appcompat/widget/s;->q:I

    if-ne p2, v0, :cond_2

    move v1, v2

    :cond_2
    iput v1, p0, Lcom/coui/appcompat/widget/s;->q:I

    goto :goto_1

    .line 391
    :cond_3
    iget p2, p0, Lcom/coui/appcompat/widget/s;->q:I

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/widget/s;->q:I

    .line 394
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/coui/appcompat/widget/s;->l:Landroid/view/View;

    .line 395
    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 396
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->h()V

    .line 397
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    .line 398
    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 399
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    .line 400
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x2

    .line 402
    new-array p1, p1, [I

    .line 403
    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 404
    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 405
    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    aget v1, p1, v0

    aget p1, p1, v2

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 407
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 408
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 409
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 410
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->d:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/s;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 412
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->a()V

    .line 413
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/s;->b(Landroid/graphics/Rect;)V

    .line 414
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->A:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/widget/s;->a(Landroid/graphics/Rect;Z)V

    .line 415
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setContentView(Landroid/view/View;)V

    .line 416
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->d()V

    .line 417
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->e()V

    .line 418
    iget-object p1, p0, Lcom/coui/appcompat/widget/s;->c:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/coui/appcompat/widget/s;->t:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/coui/appcompat/widget/s;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x4

    .line 358
    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/widget/s;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/coui/appcompat/widget/s;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 689
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setTouchable(Z)V

    .line 690
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setFocusable(Z)V

    .line 691
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setOutsideTouchable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 693
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setFocusable(Z)V

    .line 694
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/s;->setOutsideTouchable(Z)V

    .line 696
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/s;->update()V

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 0

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dismiss()V
    .locals 1

    .line 668
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/s;->x:Z

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->f()V

    goto :goto_0

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/s;->g()V

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/s;->x:Z

    :goto_0
    return-void
.end method
