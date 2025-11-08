.class public Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "COUICheckBoxWithDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    sget v0, Lcoui/support/appcompat/R$attr;->couiCheckBoxWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    sget-object p4, Lcoui/support/appcompat/R$styleable;->COUICheckBoxPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcoui/support/appcompat/R$styleable;->COUICheckBoxPreference_couiCheckBoxAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->e:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$a;

    return-object p0
.end method

.method static synthetic b(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V
    .locals 0

    .line 18
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->g()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->a(Landroidx/preference/l;)V

    const v0, 0x1020001

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    instance-of v2, v0, Lcom/coui/appcompat/widget/COUICheckBox;

    if-eqz v2, :cond_1

    .line 52
    check-cast v0, Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 55
    :cond_1
    iget-object v0, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    sget v2, Lcoui/support/appcompat/R$id;->main_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 57
    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->z()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 67
    :cond_2
    iget-object v0, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    sget v2, Lcoui/support/appcompat/R$id;->check_box_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->d:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 70
    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->z()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 79
    :cond_3
    sget v0, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c()Ljava/lang/CharSequence;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 p0, 0x8

    .line 86
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
