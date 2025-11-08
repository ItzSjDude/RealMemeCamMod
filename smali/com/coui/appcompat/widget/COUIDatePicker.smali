.class public Lcom/coui/appcompat/widget/COUIDatePicker;
.super Landroid/widget/FrameLayout;
.source "COUIDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIDatePicker$a;,
        Lcom/coui/appcompat/widget/COUIDatePicker$b;,
        Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;,
        Lcom/coui/appcompat/widget/COUIDatePicker$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "COUIDatePicker"

.field private static d:[C


# instance fields
.field a:I

.field b:I

.field private final e:Landroid/widget/LinearLayout;

.field private final f:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final g:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final h:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private i:Landroid/content/Context;

.field private j:Ljava/util/Locale;

.field private k:Lcom/coui/appcompat/widget/COUIDatePicker$c;

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

.field private o:Ljava/util/Calendar;

.field private p:Ljava/util/Calendar;

.field private q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

.field private r:Z

.field private s:Lcom/coui/appcompat/widget/COUIDatePicker$a;

.field private t:Lcom/coui/appcompat/widget/COUIDatePicker$a;

.field private u:Lcom/coui/appcompat/widget/COUIDatePicker$a;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/widget/COUIDatePicker;->d:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x4ds
        0x79s
    .end array-data
.end method

.method private a(Lcom/coui/appcompat/widget/COUIDatePicker$b;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$b;
    .locals 0

    if-nez p1, :cond_0

    .line 495
    new-instance p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;-><init>(Ljava/util/Locale;)V

    return-object p0

    .line 497
    :cond_0
    new-instance p0, Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;-><init>(Ljava/util/Locale;)V

    .line 498
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->c(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a()J

    move-result-wide p1

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(J)V

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->c(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->i:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->i:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b(Lcom/coui/appcompat/widget/COUIDatePicker$b;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x18

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    .line 510
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 512
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 513
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 514
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private a(III)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(III)V

    .line 676
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->c()V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 602
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 601
    invoke-static {p2, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker;->getChildMeasureSpec(III)I

    move-result p2

    .line 604
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 603
    invoke-static {p3, v1, p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getChildMeasureSpec(III)I

    move-result p0

    .line 606
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIDatePicker;Lcom/coui/appcompat/widget/COUIDatePicker$b;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setDate(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V

    return-void
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 382
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->v:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 385
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->v:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 388
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->w:I

    if-eq v0, v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    .line 390
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->w:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->w:I

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 692
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->t:Lcom/coui/appcompat/widget/COUIDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$c;)V

    .line 693
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 694
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 695
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 696
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 697
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_3

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 699
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 700
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 701
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 702
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    .line 703
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 705
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 706
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 707
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 708
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    .line 709
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 708
    :goto_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 711
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 713
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 717
    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 718
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 719
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 720
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 721
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 722
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 723
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    .line 724
    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 725
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 726
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 727
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 728
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 729
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 730
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_a

    move v3, v1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    .line 731
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 732
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 733
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 734
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 735
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 736
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 737
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    .line 738
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_c

    move v3, v1

    .line 737
    :cond_c
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    .line 740
    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 741
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 742
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 747
    :goto_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->l:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 748
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 747
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 753
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 754
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 755
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->s:Lcom/coui/appcompat/widget/COUIDatePicker$a;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$c;)V

    .line 757
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 759
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 760
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->u:Lcom/coui/appcompat/widget/COUIDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$c;)V

    const/16 v0, 0x1b

    .line 762
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    if-le v1, v0, :cond_e

    .line 763
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    :cond_e
    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object p0
.end method

.method private e()V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->k:Lcom/coui/appcompat/widget/COUIDatePicker$c;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$c;->a(Lcom/coui/appcompat/widget/COUIDatePicker;III)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->d()V

    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->e()V

    return-void
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->f()V

    return-void
.end method

.method static synthetic i(Lcom/coui/appcompat/widget/COUIDatePicker;)Ljava/util/Date;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->z:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic j(Lcom/coui/appcompat/widget/COUIDatePicker;)Ljava/util/Locale;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->j:Ljava/util/Locale;

    return-object p0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->j:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 484
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->j:Ljava/util/Locale;

    .line 485
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Lcom/coui/appcompat/widget/COUIDatePicker$b;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 486
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    .line 487
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    .line 488
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Lcom/coui/appcompat/widget/COUIDatePicker$b;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    .line 489
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->m:I

    .line 490
    iget p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->m:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->l:[Ljava/lang/String;

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V

    .line 681
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->c()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 632
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 633
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    .line 634
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->y:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->x:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->y:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 636
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->x:I

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

    .line 635
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 637
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 415
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

    .line 612
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

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

    .line 798
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 322
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 292
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .line 789
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result p0

    return p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/widget/COUIDatePicker$c;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->k:Lcom/coui/appcompat/widget/COUIDatePicker$c;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 780
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 397
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->r:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .line 556
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

    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 578
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 579
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 580
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 582
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 583
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 584
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->a()V

    .line 585
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Landroid/view/View;II)V

    .line 586
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Landroid/view/View;II)V

    .line 587
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Landroid/view/View;II)V

    .line 588
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 589
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p1, :cond_0

    .line 590
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->b:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p1, :cond_1

    .line 593
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->b:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    .line 595
    :cond_1
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 421
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 423
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->a()Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 623
    check-cast p1, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;

    .line 624
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 625
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1400(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(III)V

    .line 626
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->d()V

    .line 627
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->e()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 617
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 618
    new-instance v6, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/widget/COUIDatePicker$1;)V

    return-object v6
.end method

.method public setBackground(I)V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 410
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->r:Z

    return-void
.end method

.method public setFocusColor(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->w:I

    .line 378
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->b()V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(J)V

    .line 332
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v1, 0x6

    .line 333
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 338
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->b(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(J)V

    .line 340
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->e()V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->d()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(J)V

    .line 302
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->n:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    const/4 v1, 0x6

    .line 303
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 308
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->q:Lcom/coui/appcompat/widget/COUIDatePicker$b;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(J)V

    .line 310
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->e()V

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->d()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->v:I

    .line 368
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->b()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->f:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->g:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1110
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->h:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz p0, :cond_2

    .line 1111
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/widget/COUIDatePicker$c;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->k:Lcom/coui/appcompat/widget/COUIDatePicker$c;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
