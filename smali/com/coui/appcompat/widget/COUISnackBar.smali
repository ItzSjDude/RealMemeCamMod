.class public Lcom/coui/appcompat/widget/COUISnackBar;
.super Landroid/widget/RelativeLayout;
.source "COUISnackBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISnackBar$b;,
        Lcom/coui/appcompat/widget/COUISnackBar$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/PathInterpolator;

.field private static final b:Landroid/view/animation/PathInterpolator;

.field private static final c:Landroid/view/animation/PathInterpolator;

.field private static final d:Landroid/view/animation/PathInterpolator;

.field private static m:I


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/Runnable;

.field private y:Lcom/coui/appcompat/widget/COUISnackBar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->a:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->b:Landroid/view/animation/PathInterpolator;

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->c:Landroid/view/animation/PathInterpolator;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->d:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->e:I

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->f:I

    .line 54
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->g:I

    .line 55
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_child_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    .line 56
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->i:I

    .line 57
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->j:I

    .line 58
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->k:I

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_off_screen_width_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->l:I

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->e:I

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->f:I

    .line 54
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->g:I

    .line 55
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_child_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    .line 56
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->i:I

    .line 57
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->j:I

    .line 58
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->k:I

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_off_screen_width_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->l:I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUISnackBar;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 348
    sget v0, Lcoui/support/appcompat/R$layout;->coui_snack_bar_item:I

    invoke-static {p1, v0, p0}, Lcom/coui/appcompat/widget/COUISnackBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->snack_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->o:Landroid/view/ViewGroup;

    .line 350
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->tv_snack_bar_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->tv_snack_bar_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    .line 352
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->iv_snack_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    .line 354
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 355
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sput v0, Lcom/coui/appcompat/widget/COUISnackBar;->m:I

    const/16 v0, 0x8

    .line 357
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->setVisibility(I)V

    .line 359
    new-instance v0, Lcom/coui/appcompat/widget/COUISnackBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUISnackBar$a;-><init>(Lcom/coui/appcompat/widget/COUISnackBar;Lcom/coui/appcompat/widget/COUISnackBar$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    .line 361
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUISnackBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 363
    :try_start_0
    sget p2, Lcoui/support/appcompat/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 365
    sget p2, Lcoui/support/appcompat/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 366
    sget p2, Lcoui/support/appcompat/R$styleable;->COUISnackBar_snackBarDisappearTime:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->setDuration(I)V

    .line 368
    :cond_0
    sget p2, Lcoui/support/appcompat/R$styleable;->COUISnackBar_couiSnackBarIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 369
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "COUISnackBar"

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure setting COUISnackBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 373
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;)I

    move-result p0

    if-eq p0, p2, :cond_0

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 598
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 599
    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 600
    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->n:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUISnackBar;)Lcom/coui/appcompat/widget/COUISnackBar$b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->y:Lcom/coui/appcompat/widget/COUISnackBar$b;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->s:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/coui/appcompat/widget/COUISnackBar;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 381
    new-instance v1, Lcom/coui/appcompat/widget/COUISnackBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISnackBar$2;-><init>(Lcom/coui/appcompat/widget/COUISnackBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private e()Z
    .locals 4

    .line 514
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->t:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->j:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 518
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    mul-int/lit8 v1, v1, 0x3

    :goto_0
    add-int/2addr v0, v1

    .line 520
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->o:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->o:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v3

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v3, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    return v3

    .line 532
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->t:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->v:I

    if-le v0, v1, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    return v3

    .line 537
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->f:I

    if-lt v0, p0, :cond_7

    move p0, v3

    goto :goto_4

    :cond_7
    move p0, v2

    :goto_4
    if-eqz p0, :cond_8

    return v3

    :cond_8
    return v2
.end method

.method private f()V
    .locals 3

    .line 546
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->g:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->k:I

    add-int/2addr v1, v2

    .line 553
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 554
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->i:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 555
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;)I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;)I

    move-result v1

    .line 561
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 562
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;)I

    move-result v3

    .line 564
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    .line 567
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    .line 569
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    .line 570
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    .line 573
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    .line 577
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private getMaxWidth()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->l:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setActionText(Ljava/lang/String;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setParent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->n:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 502
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->j:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    .line 503
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 504
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->f()V

    goto :goto_1

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->g()V

    :goto_1
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionView()Landroid/widget/TextView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->u:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 462
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 463
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 633
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 634
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->n:Landroid/view/ViewGroup;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 470
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 471
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getMaxWidth()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 476
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 478
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->t:I

    .line 479
    iget p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->e:I

    iget p2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->h:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    .line 481
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->v:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_2

    .line 616
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 617
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/coui/appcompat/widget/COUISnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 609
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 610
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public setContentText(I)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->w:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->u:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->x:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setIconDrawable(I)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/coui/appcompat/widget/COUISnackBar$b;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->y:Lcom/coui/appcompat/widget/COUISnackBar$b;

    return-void
.end method
