.class public Lcom/coui/appcompat/widget/COUIMaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUIMaxLinearLayout.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout_maxWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->a:I

    .line 49
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout_maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->b:I

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 62
    iget v2, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->a:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-le v0, v2, :cond_0

    .line 64
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->b:I

    if-le v1, v2, :cond_1

    .line 69
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2
    return-void
.end method
