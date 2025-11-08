.class public Lcom/coui/appcompat/widget/COUILunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "COUILunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;,
        Lcom/coui/appcompat/widget/COUILunarDatePicker$a;,
        Lcom/coui/appcompat/widget/COUILunarDatePicker$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "COUILunarDatePicker"

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Calendar;

.field private static e:Ljava/util/Calendar;


# instance fields
.field private final f:Landroid/widget/LinearLayout;

.field private final g:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final h:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final i:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private j:Ljava/util/Locale;

.field private k:Lcom/coui/appcompat/widget/COUILunarDatePicker$b;

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

.field private o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    .line 75
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b:[Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    .line 83
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    const/16 v2, 0x776

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 88
    sget-object v7, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    const/16 v8, 0x7f4

    const/16 v9, 0xb

    const/16 v10, 0x1f

    const/16 v11, 0x17

    const/16 v12, 0x3b

    invoke-virtual/range {v7 .. v12}, Ljava/util/Calendar;->set(IIIII)V

    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;
    .locals 0

    if-nez p1, :cond_0

    .line 457
    new-instance p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;-><init>(Ljava/util/Locale;)V

    return-object p0

    .line 459
    :cond_0
    new-instance p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;-><init>(Ljava/util/Locale;)V

    .line 460
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 461
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a()J

    move-result-wide p1

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(J)V

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    return-object p0
.end method

.method private static a(IIII)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p1, :cond_3

    const/high16 v1, -0x80000000

    const-string v2, "\u6708"

    if-eq p0, v1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p2}, Lcom/coui/appcompat/widget/k;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2

    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p2}, Lcom/coui/appcompat/widget/k;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v1

    const/4 v2, 0x2

    .line 254
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    .line 255
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    .line 257
    invoke-static {v1, v3, p0}, Lcom/coui/appcompat/widget/k;->a(III)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 259
    aget v1, p0, v1

    aget v0, p0, v0

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {v1, v0, v2, p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    .line 472
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 475
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 476
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private a()V
    .locals 2

    .line 620
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method private a(III)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(III)V

    .line 608
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a()V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 555
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 554
    invoke-static {p2, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getChildMeasureSpec(III)I

    move-result p2

    .line 557
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 556
    invoke-static {p3, v1, p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getChildMeasureSpec(III)I

    move-result p0

    .line 559
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUILunarDatePicker;Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setDate(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    return-object p0
.end method

.method private b()V
    .locals 16

    move-object/from16 v0, p0

    .line 625
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v1

    .line 626
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 627
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v5

    .line 628
    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/widget/k;->a(III)[I

    move-result-object v3

    const/4 v5, 0x0

    .line 629
    aget v7, v3, v5

    invoke-static {v7}, Lcom/coui/appcompat/widget/k;->c(I)I

    move-result v7

    .line 630
    aget v8, v3, v2

    .line 631
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-static {v9}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_0

    :goto_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    if-ge v8, v7, :cond_1

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    .line 638
    sget-object v10, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 v10, -0x80000000

    if-ne v1, v10, :cond_3

    const/4 v11, 0x3

    .line 642
    aget v11, v3, v11

    if-nez v11, :cond_3

    add-int/lit8 v8, v8, 0xc

    :cond_3
    const/16 v11, 0xd

    const/16 v12, 0x18

    const/16 v13, 0xc

    if-ne v1, v10, :cond_4

    .line 648
    iput v12, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    .line 650
    iput v11, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    move v14, v2

    goto :goto_3

    .line 653
    :cond_5
    iput v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    :goto_2
    move v14, v5

    .line 656
    :goto_3
    aget v15, v3, v5

    aget v6, v3, v2

    invoke-static {v15, v6}, Lcom/coui/appcompat/widget/k;->a(II)I

    move-result v6

    if-eqz v7, :cond_6

    if-ne v8, v7, :cond_6

    .line 657
    sget-object v15, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    .line 658
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 659
    aget v6, v3, v5

    invoke-static {v6}, Lcom/coui/appcompat/widget/k;->b(I)I

    move-result v6

    .line 663
    :cond_6
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object v15, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->c(Ljava/util/Calendar;)Z

    move-result v9

    const/4 v15, 0x0

    if-eqz v9, :cond_7

    .line 664
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 665
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v11, v3, v4

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 666
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 667
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 668
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 669
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 670
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 671
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    .line 672
    :cond_7
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object v11, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->e(Ljava/util/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 673
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 674
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 675
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v9, v3, v4

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 676
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 677
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 678
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 679
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 680
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    .line 682
    :cond_8
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 683
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 684
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 685
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 686
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 687
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 688
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 689
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 692
    :goto_4
    iget v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->m:I

    new-array v9, v6, [Ljava/lang/String;

    .line 693
    new-array v6, v6, [Ljava/lang/String;

    if-ne v1, v10, :cond_a

    move v1, v5

    :goto_5
    if-ge v1, v12, :cond_e

    if-ge v1, v13, :cond_9

    .line 697
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v9, v1

    goto :goto_6

    .line 699
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    add-int/lit8 v10, v1, -0xc

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-eqz v14, :cond_d

    move v1, v5

    :goto_7
    if-ge v1, v7, :cond_b

    .line 705
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    aget-object v9, v9, v1

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 707
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/2addr v1, v2

    const/16 v7, 0xd

    :goto_8
    if-ge v1, v7, :cond_c

    .line 710
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 712
    :cond_c
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 713
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    .line 712
    invoke-static {v6, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    goto :goto_9

    .line 715
    :cond_d
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->l:[Ljava/lang/String;

    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 716
    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v6

    iget-object v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    .line 715
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 718
    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 720
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v1

    .line 721
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v6

    sub-int v7, v1, v6

    add-int/2addr v7, v2

    .line 722
    new-array v7, v7, [Ljava/lang/String;

    move v9, v6

    :goto_a
    if-gt v9, v1, :cond_f

    sub-int v10, v9, v6

    .line 725
    invoke-static {v9}, Lcom/coui/appcompat/widget/k;->d(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 727
    :cond_f
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 731
    sget-object v6, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 732
    sget-object v7, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 733
    invoke-static {v1, v6, v7}, Lcom/coui/appcompat/widget/k;->a(III)[I

    move-result-object v1

    .line 736
    sget-object v6, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 737
    sget-object v7, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 738
    invoke-static {v6, v7, v7}, Lcom/coui/appcompat/widget/k;->a(III)[I

    move-result-object v6

    .line 742
    iget-object v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v1, v1, v5

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 743
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 744
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 746
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v2, v3, v5

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 747
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 748
    iget-object v0, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v1, v3, v4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->k:Lcom/coui/appcompat/widget/COUILunarDatePicker$b;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$b;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker;III)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b()V

    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c()V

    return-void
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d()V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->j:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->j:Ljava/util/Locale;

    .line 449
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    .line 450
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    .line 451
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    .line 452
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V

    .line 616
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 390
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    .line 392
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->q:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->p:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->q:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 394
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->p:I

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

    .line 393
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 395
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCalendarViewShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 778
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    return p0
.end method

.method public getLeapMonth()I
    .locals 1

    .line 838
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/widget/k;->c(I)I

    move-result p0

    return p0
.end method

.method public getLunarDate()[I
    .locals 4

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    .line 816
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 817
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    .line 818
    invoke-static {v0, v2, p0}, Lcom/coui/appcompat/widget/k;->a(III)[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 326
    sget-object p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 296
    sget-object p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .line 769
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    return p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/widget/COUILunarDatePicker$b;
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->k:Lcom/coui/appcompat/widget/COUILunarDatePicker$b;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 760
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->r:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .line 524
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

    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 529
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 530
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 531
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 533
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 534
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 535
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 536
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Landroid/view/View;II)V

    .line 537
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Landroid/view/View;II)V

    .line 538
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Landroid/view/View;II)V

    .line 539
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 541
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 542
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    .line 548
    :cond_1
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 375
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 379
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 578
    check-cast p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    .line 579
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 580
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1100(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(III)V

    .line 581
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b()V

    .line 582
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 571
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 572
    new-instance v6, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getMonth()I

    move-result v3

    .line 573
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/widget/COUILunarDatePicker$1;)V

    return-object v6
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 364
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->r:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(J)V

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v2, 0x6

    .line 337
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 338
    sget-object p1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMaxDate failed!:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    .line 339
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 343
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object p2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->d(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object p2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(J)V

    .line 345
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c()V

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(J)V

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    const/4 v2, 0x6

    .line 307
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 308
    sget-object p1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMinDate failed!:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->n:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    .line 309
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 313
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object p2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->b(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->o:Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    sget-object p2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(J)V

    .line 315
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c()V

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1248
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1250
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->i:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p0, :cond_2

    .line 1251
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/widget/COUILunarDatePicker$b;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->k:Lcom/coui/appcompat/widget/COUILunarDatePicker$b;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
