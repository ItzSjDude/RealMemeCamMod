.class public Lcom/coui/appcompat/widget/COUITimeLimitPicker;
.super Landroid/widget/FrameLayout;
.source "COUITimeLimitPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;,
        Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;
    }
.end annotation


# static fields
.field static final synthetic c:Z

.field private static final d:Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;


# instance fields
.field a:I

.field b:I

.field private final e:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final f:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final g:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private h:Landroid/widget/LinearLayout;

.field private final i:Landroid/widget/Button;

.field private final j:[Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;

.field private q:Ljava/util/Calendar;

.field private r:Ljava/util/Locale;

.field private s:I

.field private t:I

.field private u:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->c:Z

    .line 58
    new-instance v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->d:Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 418
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 417
    invoke-static {p2, v1, v2}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getChildMeasureSpec(III)I

    move-result p2

    .line 420
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 419
    invoke-static {p3, v1, p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getChildMeasureSpec(III)I

    move-result p0

    .line 422
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 560
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 562
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->b()V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 569
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 573
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->i:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 580
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->l:Z

    xor-int/lit8 v0, v0, 0x1

    .line 581
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 582
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 583
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->i:Landroid/widget/Button;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->j:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->i:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->p:Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;->a(Lcom/coui/appcompat/widget/COUITimeLimitPicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->r:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->r:Ljava/util/Locale;

    .line 310
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->q:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->k:Z

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 292
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    .line 294
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->t:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->s:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->t:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 296
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->s:I

    int-to-float v5, v2

    add-float/2addr v5, v0

    int-to-float v6, v2

    int-to-float v8, v2

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 295
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getBaseline()I
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    .line 441
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->l:Z

    if-eqz p0, :cond_1

    .line 444
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 446
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->o:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .line 597
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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 380
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, -0x1

    .line 383
    iput v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    const/4 v3, 0x0

    .line 384
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 386
    instance-of v5, v4, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v5, :cond_1

    .line 387
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 388
    iget v5, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    if-ne v5, v2, :cond_0

    .line 389
    iput v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    .line 391
    :cond_0
    iput v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b:I

    .line 392
    move-object v5, v4

    check-cast v5, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 393
    invoke-direct {p0, v4, p1, p2}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a(Landroid/view/View;II)V

    .line 394
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_2
    div-int/lit8 v1, v1, 0x2

    .line 400
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 401
    iget p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    .line 402
    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    .line 403
    iput p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b:I

    .line 405
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p1, :cond_4

    .line 406
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p1, :cond_5

    .line 409
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    .line 411
    :cond_5
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 546
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 548
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->j:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->j:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 549
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->k:Z

    if-eqz v1, :cond_1

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->u:Landroid/content/Context;

    sget v2, Lcoui/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->u:Landroid/content/Context;

    sget v1, Lcoui/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 552
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->u:Landroid/content/Context;

    sget v2, Lcoui/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->u:Landroid/content/Context;

    sget v0, Lcoui/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 554
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 370
    check-cast p1, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;

    .line 371
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 372
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 373
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 364
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/coui/appcompat/widget/COUITimeLimitPicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->l:Z

    .line 464
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->l:Z

    .line 469
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 473
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->c()V

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 476
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->d()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 530
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->d()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->o:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->k:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->k:Z

    .line 492
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->b()V

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 495
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->c()V

    .line 497
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestLayout()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 664
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p0, :cond_2

    .line 665
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->p:Lcom/coui/appcompat/widget/COUITimeLimitPicker$a;

    return-void
.end method

.method public setRowNumber(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->e:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    .line 617
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    .line 618
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    :cond_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->m:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->m:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
