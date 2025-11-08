.class public Lcom/coui/appcompat/widget/COUINumberPicker;
.super Landroid/widget/LinearLayout;
.source "COUINumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUINumberPicker$h;,
        Lcom/coui/appcompat/widget/COUINumberPicker$i;,
        Lcom/coui/appcompat/widget/COUINumberPicker$a;,
        Lcom/coui/appcompat/widget/COUINumberPicker$b;,
        Lcom/coui/appcompat/widget/COUINumberPicker$g;,
        Lcom/coui/appcompat/widget/COUINumberPicker$c;,
        Lcom/coui/appcompat/widget/COUINumberPicker$d;,
        Lcom/coui/appcompat/widget/COUINumberPicker$e;,
        Lcom/coui/appcompat/widget/COUINumberPicker$f;
    }
.end annotation


# instance fields
.field private A:Lcom/coui/appcompat/widget/COUINumberPicker$c;

.field private B:J

.field private C:[I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

.field private I:F

.field private J:J

.field private K:F

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Lcom/coui/appcompat/widget/COUINumberPicker$a;

.field a:I

.field private aA:F

.field private aB:F

.field private aC:Ljava/lang/String;

.field private aD:Ljava/lang/String;

.field private aE:Z

.field private aF:Z

.field private aG:F

.field private aH:F

.field private aI:F

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:I

.field private aR:Z

.field private aS:Landroid/graphics/Paint;

.field private aa:I

.field private ab:Landroid/view/accessibility/AccessibilityManager;

.field private ac:Lcom/coui/appcompat/a/q;

.field private ad:Landroid/os/HandlerThread;

.field private ae:Landroid/os/Handler;

.field private af:J

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field b:I

.field c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/widget/Scroller;

.field private final m:Landroid/widget/Scroller;

.field private final n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

.field private o:I

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/coui/appcompat/widget/COUINumberPicker$f;

.field private v:Lcom/coui/appcompat/widget/COUINumberPicker$e;

.field private w:Lcom/coui/appcompat/widget/COUINumberPicker$d;

.field private x:Lcom/coui/appcompat/widget/COUINumberPicker$i;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 400
    sget v0, Lcoui/support/appcompat/R$attr;->couiNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 424
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    const/4 p4, 0x1

    .line 220
    iput-boolean p4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->y:Z

    const-wide/16 v0, 0x12c

    .line 235
    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->B:J

    const/high16 v0, -0x80000000

    .line 250
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    const/4 v1, -0x1

    .line 334
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aa:I

    .line 386
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aR:Z

    .line 425
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 426
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    .line 427
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ab:Landroid/view/accessibility/AccessibilityManager;

    .line 428
    invoke-static {}, Lcom/coui/appcompat/a/q;->a()Lcom/coui/appcompat/a/q;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ac:Lcom/coui/appcompat/a/q;

    .line 429
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ac:Lcom/coui/appcompat/a/q;

    sget v3, Lcoui/support/appcompat/R$raw;->coui_numberpicker_click:I

    invoke-virtual {v2, p1, v3}, Lcom/coui/appcompat/a/q;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aj:I

    if-eqz p2, :cond_0

    .line 432
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->a:I

    .line 434
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->a:I

    if-nez v2, :cond_1

    .line 435
    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->a:I

    .line 438
    :cond_1
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUINumberPicker:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 439
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerRowNumber:I

    const/4 v2, 0x5

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ah:I

    .line 440
    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ah:I

    div-int/lit8 v2, p3, 0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    .line 441
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    .line 442
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMinHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->d:I

    .line 444
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMaxHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->e:I

    .line 446
    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->d:I

    if-eq p3, v1, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->e:I

    if-eq v2, v1, :cond_3

    if-gt p3, v2, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_3
    :goto_0
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->f:I

    .line 453
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->o:I

    .line 455
    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->f:I

    if-eq p3, v1, :cond_5

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->o:I

    if-eq v2, v1, :cond_5

    if-gt p3, v2, :cond_4

    goto :goto_1

    .line 457
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_5
    :goto_1
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerAlignPosition:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->av:I

    .line 461
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_focusTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aw:I

    .line 462
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_startTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    .line 463
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerVisualWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->au:I

    .line 464
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    .line 465
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingRight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    .line 466
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->b:I

    .line 467
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiFocusTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->c:I

    .line 468
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerBackgroundColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aJ:I

    .line 469
    sget p3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerTouchEffectInterval:I

    const/16 v1, 0x64

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ag:I

    .line 470
    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->b:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->c:I

    invoke-virtual {p0, p3, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(II)V

    .line 471
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aG:F

    .line 474
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aH:F

    .line 475
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aI:F

    .line 476
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_number_picker_unit_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aN:I

    .line 477
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_unit_textSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ax:I

    .line 478
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_number_picker_text_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    .line 479
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_number_picker_text_margin_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aQ:I

    .line 480
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->f:I

    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aN:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aQ:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aP:I

    .line 481
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 482
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->M:I

    .line 483
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->N:I

    .line 484
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->O:I

    .line 487
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 488
    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 490
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 491
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    const-string v1, "sys-sans-en"

    .line 492
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 493
    iget v1, p3, Landroid/graphics/Paint$FontMetrics;->top:F

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aA:F

    .line 494
    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aB:F

    .line 495
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    .line 496
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->k:Landroid/graphics/Paint;

    .line 497
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_textSize_big:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 498
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    .line 499
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, p3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    .line 500
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_6

    .line 501
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setImportantForAccessibility(I)V

    .line 503
    :cond_6
    new-instance p2, Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    .line 504
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWillNotDraw(Z)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVerticalScrollBarEnabled(Z)V

    .line 506
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    .line 507
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 508
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ax:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->c:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aK:I

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aL:I

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    .line 514
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aS:Landroid/graphics/Paint;

    .line 515
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aS:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aJ:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(IIIII)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1332
    iget v5, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iget v6, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    iget v7, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 1334
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v7

    add-int/2addr v8, v5

    int-to-double v9, v4

    int-to-double v11, v6

    int-to-double v13, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    sub-double v13, v11, v13

    cmpl-double v13, v9, v13

    const/high16 v14, 0x40000000    # 2.0f

    if-lez v13, :cond_0

    move v13, v8

    int-to-double v7, v7

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    cmpg-double v7, v9, v11

    if-gez v7, :cond_1

    int-to-float v2, v1

    sub-int v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-int v3, v4, v6

    .line 1336
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v0, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    return v2

    :cond_0
    move v13, v8

    .line 1338
    :cond_1
    iget v0, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    sub-int v1, v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-gt v4, v1, :cond_2

    int-to-float v1, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-int v3, v4, v5

    int-to-float v3, v3

    :goto_0
    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    return v1

    :cond_2
    add-int/2addr v6, v0

    if-lt v4, v6, :cond_3

    int-to-float v1, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-int v8, v13, v4

    int-to-float v3, v8

    goto :goto_0

    :cond_3
    int-to-float v0, v3

    return v0
.end method

.method private a(IIF)I
    .locals 0

    sub-int p0, p2, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    sub-int/2addr p2, p0

    return p2
.end method

.method private a(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1405
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1406
    invoke-static {p0, p3, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUINumberPicker;I)I
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->e(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUINumberPicker;J)J
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->af:J

    return-wide p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .line 519
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(IZ)V
    .locals 1

    .line 1441
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    if-ne v0, p1, :cond_0

    .line 1442
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    return-void

    .line 1447
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-eqz v0, :cond_1

    .line 1448
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->e(I)I

    move-result p1

    goto :goto_0

    .line 1450
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1451
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1454
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    .line 1455
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    if-eqz p2, :cond_2

    .line 1458
    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->e(II)V

    .line 1459
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ae:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1460
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ae:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1462
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ab:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1463
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 1464
    iput v0, p2, Landroid/os/Message;->what:I

    .line 1465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1466
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ae:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1472
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    .line 1473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void
.end method

.method private a(Z)V
    .locals 13

    .line 1497
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1500
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    if-eqz p1, :cond_1

    .line 1502
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1506
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    if-nez v0, :cond_0

    .line 1681
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$b;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$b;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1685
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$b;->a(Lcom/coui/appcompat/widget/COUINumberPicker$b;Z)V

    .line 1686
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1620
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1621
    aget v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->f(I)V

    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 574
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 575
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 576
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    rem-int/2addr p1, v2

    .line 577
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 579
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 587
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUINumberPicker;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->U:Z

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->U:Z

    return p1
.end method

.method private b(I)I
    .locals 2

    .line 1323
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/2addr p1, p0

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->S:I

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUINumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1536
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->k()Z

    const/4 p1, 0x0

    .line 1538
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(I)V

    goto :goto_0

    .line 1540
    :cond_0
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    :goto_0
    return-void
.end method

.method private b([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1631
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1632
    aget v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1634
    :cond_0
    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->V:Z

    return p1
.end method

.method private c(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1379
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 1398
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1396
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1385
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1387
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aN:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 1388
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v0, p1

    .line 1392
    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aP:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aN:I

    sub-int v1, p1, v1

    add-int/2addr v1, p1

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 1394
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 4

    .line 1043
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1044
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->y:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 1552
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1555
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    .line 1556
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->w:Lcom/coui/appcompat/widget/COUINumberPicker$d;

    if-eqz v0, :cond_1

    .line 1557
    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$d;->a(Lcom/coui/appcompat/widget/COUINumberPicker;I)V

    .line 1559
    :cond_1
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    if-nez p1, :cond_2

    .line 1560
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->v:Lcom/coui/appcompat/widget/COUINumberPicker$e;

    if-eqz p0, :cond_2

    .line 1562
    invoke-interface {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$e;->a()V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUINumberPicker;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUINumberPicker;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->V:Z

    return p0
.end method

.method private d(II)I
    .locals 4

    .line 1600
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, -0x1

    .line 1605
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aE:Z

    add-int/2addr v1, v3

    sub-int/2addr p1, v2

    add-int/2addr p1, p2

    .line 1606
    invoke-static {p1, v1}, Lcom/coui/appcompat/a/j;->a(II)I

    move-result p1

    .line 1608
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x1

    if-ge p1, p2, :cond_2

    add-int/2addr p0, p1

    return p0

    :cond_2
    return v0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->R:I

    return p0
.end method

.method private d()V
    .locals 5

    .line 1413
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1414
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    .line 1415
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1416
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1418
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    sub-int v3, v2, v3

    .line 1419
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aE:Z

    if-eqz v4, :cond_0

    .line 1420
    invoke-direct {p0, v1, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(II)I

    move-result v3

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    .line 1425
    :goto_1
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-eqz v4, :cond_1

    .line 1426
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->e(I)I

    move-result v3

    .line 1429
    :cond_1
    aput v3, v0, v2

    .line 1430
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->f(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1573
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    if-lez p1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1578
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1581
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void
.end method

.method private e(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1588
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(II)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/COUINumberPicker;)J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->B:J

    return-wide v0
.end method

.method private e()V
    .locals 8

    .line 1486
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ac:Lcom/coui/appcompat/a/q;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aj:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/a/q;->a(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private e(II)V
    .locals 1

    .line 1669
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->u:Lcom/coui/appcompat/widget/COUINumberPicker$f;

    if-eqz p2, :cond_0

    .line 1670
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    invoke-interface {p2, p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker$f;->a(Lcom/coui/appcompat/widget/COUINumberPicker;II)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    return p0
.end method

.method private f()V
    .locals 1

    const/16 v0, 0x134

    .line 1490
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12e

    .line 1492
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1642
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    .line 1643
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1647
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->q:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 1652
    aget-object p0, v2, p0

    goto :goto_1

    .line 1654
    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->g(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 1657
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private g(I)Ljava/lang/String;
    .locals 0

    .line 1661
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->A:Lcom/coui/appcompat/widget/COUINumberPicker$c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$c;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private g()V
    .locals 4

    .line 1510
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    .line 1511
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    .line 1512
    array-length v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    mul-int/2addr v1, v2

    .line 1513
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1514
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1515
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->p:I

    .line 1516
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    const/4 v0, 0x0

    .line 1518
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 1520
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->R:I

    .line 1521
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->S:I

    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/COUINumberPicker;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    return p0
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    return p0
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1526
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private i()V
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    if-eqz v0, :cond_0

    .line 1694
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/coui/appcompat/widget/COUINumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->q:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    return p0
.end method

.method private j()V
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->H:Lcom/coui/appcompat/widget/COUINumberPicker$b;

    if-eqz v0, :cond_0

    .line 1703
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1705
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a()V

    return-void
.end method

.method static synthetic k(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ab:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private k()Z
    .locals 7

    .line 1716
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1718
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    .line 1719
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 1722
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1723
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static synthetic l(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aC:Ljava/lang/String;

    return-object p0
.end method

.method private l()V
    .locals 11

    .line 1780
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    int-to-double v1, v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    int-to-double v4, v3

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v9

    mul-double/2addr v4, v7

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ak:I

    int-to-double v0, v0

    int-to-double v2, v3

    int-to-double v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1781
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->al:I

    return-void
.end method

.method static synthetic m(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->e()V

    return-void
.end method

.method static synthetic n(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->f()V

    return-void
.end method

.method static synthetic o(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/util/SparseArray;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic p(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    return p0
.end method

.method static synthetic q(Lcom/coui/appcompat/widget/COUINumberPicker;)Lcom/coui/appcompat/widget/COUINumberPicker$e;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->v:Lcom/coui/appcompat/widget/COUINumberPicker$e;

    return-object p0
.end method

.method static synthetic r(Lcom/coui/appcompat/widget/COUINumberPicker;)J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->af:J

    return-wide v0
.end method

.method static synthetic s(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ag:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 568
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    .line 569
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    .line 570
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestLayout()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1038
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(II)V

    .line 1039
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->x:Lcom/coui/appcompat/widget/COUINumberPicker$i;

    if-nez v0, :cond_0

    .line 948
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$i;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$i;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->x:Lcom/coui/appcompat/widget/COUINumberPicker$i;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->x:Lcom/coui/appcompat/widget/COUINumberPicker$i;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->A:Lcom/coui/appcompat/widget/COUINumberPicker$c;

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1736
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->am:I

    .line 1737
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aq:I

    .line 1738
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->an:I

    .line 1739
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ar:I

    .line 1740
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ao:I

    .line 1741
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->as:I

    .line 1742
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ap:I

    .line 1743
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->at:I

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    .line 829
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    .line 831
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 836
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 837
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    if-nez v2, :cond_1

    .line 838
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    :cond_1
    const/4 v2, 0x0

    .line 840
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    .line 841
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->G:I

    .line 842
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 900
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 890
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 895
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ab:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 780
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->R:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 782
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->S:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 788
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 790
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker$a;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_4

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 816
    :cond_2
    invoke-virtual {v1, v0, v4}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->a(II)V

    .line 818
    iput v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->T:I

    goto :goto_1

    .line 794
    :cond_3
    invoke-virtual {v1, v0, v7}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->a(II)V

    .line 796
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->T:I

    .line 797
    invoke-virtual {v1, v0, v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 802
    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->T:I

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_5

    .line 804
    invoke-virtual {v1, p1, v4}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->a(II)V

    .line 807
    invoke-virtual {v1, v0, v7}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->a(II)V

    .line 809
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->T:I

    .line 810
    invoke-virtual {v1, v0, v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 728
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 751
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aa:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    .line 752
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aa:I

    return v3

    .line 739
    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    .line 758
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 741
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestFocus()Z

    .line 742
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aa:I

    .line 743
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 744
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 745
    :goto_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 723
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 770
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->W:Lcom/coui/appcompat/widget/COUINumberPicker$a;

    if-nez v0, :cond_0

    .line 1353
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$a;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->W:Lcom/coui/appcompat/widget/COUINumberPicker$a;

    .line 1355
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->W:Lcom/coui/appcompat/widget/COUINumberPicker$a;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 1319
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aJ:I

    return p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1117
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->q:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1082
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1006
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    return p0
.end method

.method public getNumberPickerPaddingLeft()I
    .locals 0

    .line 555
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    return p0
.end method

.method public getNumberPickerPaddingRight()I
    .locals 0

    .line 564
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    return p0
.end method

.method public getTextSize()F
    .locals 0

    .line 1365
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getTouchEffectInterval()I
    .locals 0

    .line 2508
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ag:I

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 972
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1053
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .line 1311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1170
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ad:Landroid/os/HandlerThread;

    .line 1171
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ad:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1172
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$h;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ad:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker$h;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ae:Landroid/os/Handler;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1178
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 1179
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ad:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1181
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ad:Landroid/os/HandlerThread;

    .line 1183
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ae:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 1184
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 1191
    iget-boolean v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aR:Z

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1192
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aL:I

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aK:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWidth()I

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aL:I

    sub-int/2addr v0, v1

    int-to-float v10, v0

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aK:I

    int-to-float v2, v1

    add-float v11, v0, v2

    int-to-float v12, v1

    int-to-float v13, v1

    iget-object v14, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aS:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    .line 1192
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 1196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    sub-int/2addr v0, v1

    const/4 v7, 0x2

    div-int/2addr v0, v7

    int-to-float v0, v0

    .line 1197
    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1198
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aP:I

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    div-int/2addr v1, v7

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 1203
    :cond_1
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 1205
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->au:I

    const/4 v3, -0x1

    const/4 v8, 0x1

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_4

    .line 1206
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->av:I

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    goto :goto_1

    .line 1211
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->au:I

    sub-int/2addr v0, v2

    div-int/2addr v2, v7

    add-int/2addr v0, v2

    goto :goto_0

    .line 1208
    :cond_3
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->au:I

    div-int/2addr v0, v7

    :goto_0
    int-to-float v0, v0

    .line 1218
    :cond_4
    :goto_1
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    if-eqz v2, :cond_5

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_5
    move v9, v0

    .line 1223
    iget-object v10, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v13, v0

    move v12, v1

    move v11, v2

    .line 1225
    :goto_2
    array-length v0, v10

    if-ge v11, v0, :cond_b

    .line 1226
    aget v14, v10, v11

    .line 1232
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ak:I

    if-le v12, v0, :cond_6

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->al:I

    if-ge v12, v0, :cond_6

    .line 1233
    invoke-direct {v6, v12}, Lcom/coui/appcompat/widget/COUINumberPicker;->b(I)I

    move-result v0

    .line 1234
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->am:I

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aq:I

    int-to-float v0, v0

    invoke-direct {v6, v1, v2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IIF)I

    move-result v1

    .line 1235
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->an:I

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ar:I

    invoke-direct {v6, v2, v3, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IIF)I

    move-result v2

    .line 1236
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ao:I

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->as:I

    invoke-direct {v6, v3, v4, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IIF)I

    move-result v3

    .line 1237
    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ap:I

    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->at:I

    invoke-direct {v6, v4, v5, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IIF)I

    move-result v0

    goto :goto_3

    .line 1239
    :cond_6
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->am:I

    .line 1240
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->an:I

    .line 1241
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ao:I

    .line 1242
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ap:I

    .line 1244
    :goto_3
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 1246
    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aw:I

    move-object/from16 v0, p0

    move v1, v4

    move v3, v4

    move v7, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IIIII)F

    move-result v0

    .line 1247
    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1248
    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1249
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aF:Z

    if-nez v2, :cond_7

    .line 1250
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1251
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 1255
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1256
    iput-boolean v8, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aF:Z

    :cond_7
    const/high16 v2, -0x80000000

    if-eq v14, v2, :cond_9

    .line 1262
    iget-object v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1263
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    if-ne v11, v2, :cond_8

    add-int v2, v12, v12

    .line 1264
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v0

    div-float v2, v2, v16

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    const/4 v3, 0x2

    div-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_4

    :cond_8
    add-int v0, v12, v12

    .line 1266
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aA:F

    sub-float/2addr v0, v2

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aB:F

    sub-float/2addr v0, v2

    div-float v0, v0, v16

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1268
    :goto_4
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->g:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1269
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1270
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v2

    div-float v3, v3, v16

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    .line 1271
    iget-object v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {v15, v1, v9, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v13, v2

    goto :goto_6

    .line 1273
    :cond_9
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aw:I

    int-to-float v1, v1

    div-float v7, v0, v1

    const/high16 v0, -0x41000000    # -0.5f

    move v14, v0

    :goto_5
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v0, v14, v17

    if-gez v0, :cond_a

    .line 1276
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aG:F

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aI:F

    add-float/2addr v1, v0

    mul-float/2addr v1, v14

    mul-float/2addr v1, v7

    mul-float/2addr v0, v7

    .line 1278
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aH:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v9

    div-float v0, v0, v16

    sub-float v3, v1, v0

    int-to-float v4, v12

    .line 1279
    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    int-to-float v8, v5

    div-float v8, v8, v16

    add-float/2addr v8, v4

    div-float v2, v2, v16

    sub-float/2addr v8, v2

    const/high16 v18, 0x42070000    # 33.75f

    add-float v8, v8, v18

    add-float v19, v1, v0

    int-to-float v0, v5

    div-float v0, v0, v16

    add-float/2addr v4, v0

    add-float/2addr v4, v2

    add-float v4, v4, v18

    iget-object v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v8

    move/from16 v3, v19

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v14, v14, v17

    const/4 v8, 0x1

    goto :goto_5

    .line 1289
    :cond_a
    :goto_6
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1292
    :cond_b
    iget-object v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1294
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    int-to-float v0, v0

    add-float/2addr v9, v0

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    int-to-float v0, v0

    sub-float/2addr v9, v0

    .line 1296
    :cond_c
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v9, v0

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aQ:I

    int-to-float v0, v0

    add-float/2addr v9, v0

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v9

    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v9, v0, v1

    .line 1300
    :cond_d
    iget-object v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->ax:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1301
    iget-object v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->j:Landroid/graphics/Paint;

    invoke-virtual {v15, v0, v9, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 595
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    .line 602
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->I:F

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->K:F

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->J:J

    .line 605
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->Q:Z

    .line 606
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->I:F

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->R:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 607
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    if-nez p1, :cond_2

    .line 608
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a(I)V

    goto :goto_0

    .line 611
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->S:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 612
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    if-nez p1, :cond_2

    .line 613
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a(I)V

    .line 617
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 618
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 619
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 620
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 621
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(I)V

    goto :goto_1

    .line 622
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 623
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->l:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 624
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->m:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 625
    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->I:F

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->R:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 627
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 626
    invoke-direct {p0, v1, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(ZJ)V

    goto :goto_1

    .line 628
    :cond_5
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->S:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 630
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 629
    invoke-direct {p0, v2, v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(ZJ)V

    goto :goto_1

    .line 632
    :cond_6
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->Q:Z

    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->g()V

    .line 526
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->h()V

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->l()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 535
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->o:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(II)I

    move-result v0

    .line 536
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->e:I

    invoke-direct {p0, p2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(II)I

    move-result v1

    .line 537
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 539
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aP:I

    .line 542
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->f:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(III)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 544
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->d:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(III)I

    move-result p2

    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 641
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 645
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_4

    .line 667
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->k()Z

    goto/16 :goto_4

    .line 651
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 652
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->P:I

    if-eq v0, v3, :cond_4

    .line 653
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->I:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 654
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->M:I

    if-le v0, v1, :cond_5

    .line 655
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->j()V

    .line 656
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(I)V

    goto :goto_0

    .line 659
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->K:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 660
    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    .line 661
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 663
    :cond_5
    :goto_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->K:F

    goto/16 :goto_4

    .line 671
    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->i()V

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->a()V

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 674
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->O:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 675
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 676
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->N:I

    if-le v4, v5, :cond_7

    mul-int/2addr v0, v2

    .line 677
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d(I)V

    .line 678
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(I)V

    goto :goto_3

    .line 680
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 681
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->I:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->J:J

    sub-long/2addr v5, v7

    .line 683
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->M:I

    if-gt v4, p1, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_b

    .line 684
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->Q:Z

    if-eqz p1, :cond_8

    .line 685
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->Q:Z

    .line 686
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performClick()Z

    goto :goto_2

    .line 688
    :cond_8
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 691
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Z)V

    .line 692
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->b(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_a

    .line 695
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(Z)V

    .line 696
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->n:Lcom/coui/appcompat/widget/COUINumberPicker$g;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker$g;->b(I)V

    .line 699
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->k()Z

    goto :goto_2

    .line 702
    :cond_b
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->k()Z

    .line 704
    :goto_2
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->c(I)V

    .line 706
    :goto_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 707
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->L:Landroid/view/VelocityTracker;

    :goto_4
    return v3
.end method

.method public scrollBy(II)V
    .locals 5

    .line 851
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    .line 852
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 854
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget v1, p1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    if-gt v1, v2, :cond_0

    .line 856
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    return-void

    .line 859
    :cond_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget v1, p1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    if-lt v1, v2, :cond_1

    .line 861
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    return-void

    .line 865
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 866
    :cond_2
    :goto_0
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->p:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    .line 867
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 868
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->b([I)V

    .line 869
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IZ)V

    .line 870
    iget-boolean p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    if-gt p2, v1, :cond_2

    .line 871
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    goto :goto_0

    .line 874
    :cond_3
    :goto_1
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->p:I

    neg-int v2, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aM:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_4

    .line 875
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->D:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    .line 876
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->a([I)V

    .line 877
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IZ)V

    .line 878
    iget-boolean p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->z:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    if-lt p2, v1, :cond_3

    .line 879
    iget p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->E:I

    iput p2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->F:I

    goto :goto_1

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p1, 0x0

    .line 884
    invoke-virtual {p0, p1, p2, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public setAlignPosition(I)V
    .locals 0

    .line 1154
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->av:I

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->q:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1133
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->q:[Ljava/lang/String;

    .line 1134
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    return-void
.end method

.method public setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$c;)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->A:Lcom/coui/appcompat/widget/COUINumberPicker$c;

    if-ne p1, v0, :cond_0

    return-void

    .line 939
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->A:Lcom/coui/appcompat/widget/COUINumberPicker$c;

    .line 940
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    return-void
.end method

.method public setHasBackground(Z)V
    .locals 0

    .line 1315
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aR:Z

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 1

    .line 1799
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aE:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1802
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aE:Z

    .line 1804
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    .line 1805
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1096
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1102
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    .line 1103
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->s:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    if-ge p1, v0, :cond_1

    .line 1104
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    .line 1107
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    .line 1108
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void

    .line 1100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1020
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1026
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    .line 1027
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->r:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    if-le p1, v0, :cond_1

    .line 1028
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->t:I

    .line 1030
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->d()V

    .line 1031
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    return-void

    .line 1024
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 2497
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->b:I

    if-eq v0, p1, :cond_0

    .line 2498
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->b:I

    .line 2499
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->b:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(II)V

    :cond_0
    return-void
.end method

.method public setNumberPickerPaddingLeft(I)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ay:I

    .line 551
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestLayout()V

    return-void
.end method

.method public setNumberPickerPaddingRight(I)V
    .locals 0

    .line 559
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->az:I

    .line 560
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestLayout()V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 963
    iput-wide p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->B:J

    return-void
.end method

.method public setOnScrollListener(Lcom/coui/appcompat/widget/COUINumberPicker$d;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->w:Lcom/coui/appcompat/widget/COUINumberPicker$d;

    return-void
.end method

.method public setOnScrollingStopListener(Lcom/coui/appcompat/widget/COUINumberPicker$e;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->v:Lcom/coui/appcompat/widget/COUINumberPicker$e;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$f;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->u:Lcom/coui/appcompat/widget/COUINumberPicker$f;

    return-void
.end method

.method public setPickerFocusColor(I)V
    .locals 1

    .line 1764
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aq:I

    .line 1765
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ar:I

    .line 1766
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->as:I

    .line 1767
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->at:I

    return-void
.end method

.method public setPickerNormalColor(I)V
    .locals 1

    .line 1752
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->am:I

    .line 1753
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->an:I

    .line 1754
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ao:I

    .line 1755
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ap:I

    return-void
.end method

.method public setPickerRowNumber(I)V
    .locals 0

    .line 1143
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ah:I

    .line 1144
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ai:I

    .line 1145
    iget p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ah:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->C:[I

    return-void
.end method

.method public setSelectedValueWidth(I)V
    .locals 0

    .line 997
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aO:I

    return-void
.end method

.method public setTouchEffectInterval(I)V
    .locals 0

    .line 2504
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->ag:I

    return-void
.end method

.method public setUnitText(Ljava/lang/String;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->aD:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 979
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->a(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1072
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->y:Z

    .line 1073
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->c()V

    return-void
.end method
