.class public Lcom/coui/appcompat/dialog/panel/d;
.super Ljava/lang/Object;
.source "COUIPanelAdjustResizeHelper.java"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/View;

.field private k:Z

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/d;->a:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/d;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/d;->d:Z

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/d;->e:Z

    .line 69
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->f:I

    .line 70
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    .line 71
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    .line 73
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    .line 75
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->l:I

    .line 84
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->s:I

    return-void
.end method

.method private a(II)I
    .locals 1

    .line 113
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d;->s:I

    const/16 v0, 0x7f6

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 492
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 490
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    return p0
.end method

.method private a(Landroid/view/View;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    add-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 436
    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IJ)V
    .locals 10

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    .line 330
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    .line 331
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 p2, 0x2

    .line 332
    new-array p2, p2, [I

    aput v0, p2, v1

    const/4 v1, 0x1

    aput v6, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    .line 333
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v0, v6, :cond_1

    .line 335
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/coui/appcompat/dialog/panel/d;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/coui/appcompat/dialog/panel/d;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/dialog/panel/d$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/dialog/panel/d$1;-><init>(Lcom/coui/appcompat/dialog/panel/d;Landroid/view/View;IIII)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/dialog/panel/d$2;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/dialog/panel/d$2;-><init>(Lcom/coui/appcompat/dialog/panel/d;Landroid/view/View;III)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;ILandroid/view/WindowInsets;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_bottom_sheet_margin_bottom_if_need:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 456
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 457
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 458
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, p3

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 460
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v3

    add-int/2addr p3, p2

    if-le p3, v1, :cond_0

    sub-int/2addr p3, v1

    sub-int/2addr p2, p3

    .line 466
    :cond_0
    instance-of p3, p1, Lcom/coui/appcompat/widget/IgnoreWindowInsetsFrameLayout;

    if-eqz p3, :cond_1

    iget p3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p3, :cond_1

    .line 473
    iget p3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p2

    .line 474
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 475
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 476
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 477
    :cond_1
    instance-of p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_2

    .line 478
    iget p3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p2

    .line 479
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 480
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 481
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 274
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    .line 275
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    const/4 v1, 0x0

    .line 276
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    .line 277
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/d;->b(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 278
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    .line 279
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    .line 282
    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 285
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/d;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    .line 287
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    .line 289
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)V
    .locals 3

    .line 122
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 125
    :goto_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/dialog/panel/d;->a(Z)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;I)Z

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 127
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    .line 128
    instance-of v0, p1, Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_3

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;I)V

    .line 130
    check-cast p1, Lcom/coui/appcompat/widget/l;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;F)V

    .line 131
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;F)V

    goto :goto_2

    .line 133
    :cond_3
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->o:I

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;ILandroid/view/WindowInsets;)V

    :goto_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 5

    if-eqz p1, :cond_3

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 298
    instance-of v0, p1, Lcom/coui/appcompat/widget/l;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x42480000    # 50.0f

    if-eqz v0, :cond_1

    .line 299
    check-cast p1, Lcom/coui/appcompat/widget/l;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getMaxHeight()I

    move-result v0

    if-eqz p2, :cond_0

    .line 302
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v1

    goto :goto_0

    .line 304
    :cond_0
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v3

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/d;->m:I

    float-to-long v2, p2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/View;IJ)V

    .line 307
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/coui/appcompat/dialog/panel/d;->a(Lcom/coui/appcompat/widget/l;FJ)V

    goto :goto_2

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/a/m;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz p2, :cond_2

    .line 312
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v1

    goto :goto_1

    .line 314
    :cond_2
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v3

    .line 316
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d;->o:I

    float-to-long v1, p2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/d;->b(Landroid/view/View;IJ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ZI)V
    .locals 0

    .line 141
    invoke-direct {p0, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Z)V

    .line 142
    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;I)Z

    .line 143
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/d;->d:Z

    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/l;FJ)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getTranslationY()F

    move-result v1

    add-float/2addr p2, v1

    .line 363
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x2

    .line 364
    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput p2, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    .line 365
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    cmpg-float p3, v1, p2

    if-gez p3, :cond_1

    .line 367
    iget-object p3, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/coui/appcompat/dialog/panel/d;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p3, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/coui/appcompat/dialog/panel/d;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/coui/appcompat/dialog/panel/d$3;

    invoke-direct {p4, p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d$3;-><init>(Lcom/coui/appcompat/dialog/panel/d;Lcom/coui/appcompat/widget/l;F)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/dialog/panel/d$4;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/dialog/panel/d$4;-><init>(Lcom/coui/appcompat/dialog/panel/d;Lcom/coui/appcompat/widget/l;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/l;Ljava/lang/Boolean;)V
    .locals 10

    .line 219
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 220
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getMaxHeight()I

    move-result v4

    .line 221
    iget v5, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    mul-int/2addr v5, v0

    .line 222
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getTranslationY()F

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v7

    .line 223
    :goto_1
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    .line 224
    iget-boolean v8, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    if-eqz v8, :cond_2

    if-nez v4, :cond_3

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/a/m;->e(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    cmpl-float v4, v6, v7

    if-nez v4, :cond_6

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/d;->l:I

    .line 230
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    :cond_4
    neg-int p1, v5

    int-to-float p1, p1

    .line 232
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    goto :goto_2

    .line 234
    :cond_5
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->l:I

    .line 236
    :goto_2
    iput v5, p0, Lcom/coui/appcompat/dialog/panel/d;->m:I

    goto/16 :goto_7

    .line 238
    :cond_6
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/d;->f:I

    iget v4, p0, Lcom/coui/appcompat/dialog/panel/d;->i:I

    sub-int/2addr v1, v4

    .line 239
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getPaddingBottom()I

    move-result v4

    .line 240
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getHeight()I

    move-result v7

    goto :goto_3

    :cond_7
    move v7, v8

    .line 241
    :goto_3
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_4

    :cond_8
    move p1, v8

    .line 242
    :goto_4
    iget v9, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    if-ne v9, v3, :cond_9

    .line 243
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    add-int/2addr v1, v2

    goto :goto_5

    :cond_9
    if-ne v9, v2, :cond_a

    .line 245
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    sub-int/2addr v1, v2

    .line 247
    :cond_a
    :goto_5
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    add-int/2addr v2, v7

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_b

    if-nez v4, :cond_b

    neg-int p1, v5

    int-to-float p1, p1

    .line 248
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    goto :goto_7

    .line 250
    :cond_b
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    add-int/2addr v2, v7

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    neg-int p1, v4

    mul-int/2addr v0, v2

    .line 251
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->m:I

    .line 252
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    if-ne p1, v3, :cond_c

    add-int/2addr v4, v0

    .line 253
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 254
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    neg-int v0, p2

    sub-int p1, p2, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    sub-float/2addr p1, v6

    .line 255
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    goto :goto_7

    .line 257
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    sub-int/2addr v5, v2

    neg-int p1, v5

    int-to-float p1, p1

    goto :goto_6

    :cond_d
    neg-float p1, v6

    :goto_6
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    :goto_7
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 150
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 152
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    .line 153
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/d;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    goto :goto_0

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/d;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 156
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    .line 159
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/d;->e:Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/d;->b()Z

    .line 167
    instance-of v0, p1, Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_2

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/l;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->getMaxHeight()I

    move-result v1

    .line 170
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/l;->getLayoutAtMaxHeight()Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 177
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 175
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 178
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;)V

    .line 180
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->f:I

    .line 181
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 192
    :cond_3
    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/d;->d:Z

    if-nez p1, :cond_6

    .line 193
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    .line 194
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    goto :goto_1

    .line 187
    :cond_4
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->f:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->f:I

    .line 188
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    sub-int p1, p2, p1

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    .line 189
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    goto :goto_1

    .line 183
    :cond_5
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    .line 184
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    :cond_6
    :goto_1
    return v0
.end method

.method private b(Landroid/view/View;IJ)V
    .locals 3

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 396
    invoke-static {p1, v0}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;I)I

    move-result v0

    const/4 v1, 0x0

    .line 397
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    .line 398
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v2, 0x2

    .line 399
    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v1, 0x1

    aput p2, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 400
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v0, p2, :cond_1

    .line 402
    sget-object p3, Lcom/coui/appcompat/dialog/panel/d;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 404
    :cond_1
    sget-object p3, Lcom/coui/appcompat/dialog/panel/d;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    :goto_0
    new-instance p3, Lcom/coui/appcompat/dialog/panel/d$5;

    invoke-direct {p3, p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d$5;-><init>(Lcom/coui/appcompat/dialog/panel/d;Landroid/view/View;I)V

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    new-instance p2, Lcom/coui/appcompat/dialog/panel/d$6;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/dialog/panel/d$6;-><init>(Lcom/coui/appcompat/dialog/panel/d;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 1

    .line 264
    iget p2, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 265
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    mul-int/2addr p2, v0

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    .line 267
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/d;->o:I

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 0

    .line 502
    instance-of p0, p1, Landroid/widget/ScrollView;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/widget/AbsListView;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroidx/core/h/t;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private f()Landroid/view/View;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/d;->j:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 575
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/d;->s:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;)V
    .locals 4

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$bool;->is_ignore_nav_height_in_panel_ime_adjust:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 88
    invoke-static {p1}, Lcom/coui/appcompat/a/k;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 89
    invoke-static {p1}, Lcom/coui/appcompat/a/k;->c(Landroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 90
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 91
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 92
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)V

    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p3

    invoke-direct {p0, p3, p1}, Lcom/coui/appcompat/dialog/panel/d;->a(II)I

    move-result p1

    if-lez p1, :cond_3

    .line 96
    invoke-direct {p0, p2, v2, p1}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;ZI)V

    goto :goto_2

    .line 97
    :cond_3
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->c:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    .line 98
    iget p1, p0, Lcom/coui/appcompat/dialog/panel/d;->g:I

    invoke-direct {p0, p2, v3, p1}, Lcom/coui/appcompat/dialog/panel/d;->a(Landroid/view/ViewGroup;ZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->p:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->m:I

    const/4 v1, 0x0

    .line 206
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    .line 207
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/d;->o:I

    if-eqz p1, :cond_2

    .line 208
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/d;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/widget/l;

    if-eqz v0, :cond_1

    .line 212
    check-cast p1, Lcom/coui/appcompat/widget/l;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d;->a(Lcom/coui/appcompat/widget/l;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/d;->b(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/coui/appcompat/widget/l;)V
    .locals 3

    .line 519
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/d;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/d;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 521
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d;->l:I

    if-ltz p0, :cond_1

    .line 522
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 525
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/coui/appcompat/widget/l;->setPadding(IIII)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 528
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getBtnBarLayout()Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    move-result-object p0

    .line 529
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDivider()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 531
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setTranslationY(F)V

    :cond_2
    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 536
    :cond_3
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/coui/appcompat/widget/l;->setPadding(IIII)V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x1

    .line 551
    :cond_0
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/d;->q:Landroid/animation/ValueAnimator;

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 557
    :cond_2
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/d;->r:Landroid/animation/ValueAnimator;

    :cond_3
    return v2
.end method

.method public c()I
    .locals 0

    .line 563
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d;->m:I

    return p0
.end method

.method public d()F
    .locals 0

    .line 567
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d;->n:F

    return p0
.end method

.method public e()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d;->o:I

    return p0
.end method
