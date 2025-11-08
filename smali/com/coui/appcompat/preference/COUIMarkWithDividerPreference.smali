.class public Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;
.super Lcom/coui/appcompat/preference/COUIMarkPreference;
.source "COUIMarkWithDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    sget v0, Lcoui/support/appcompat/R$attr;->couiRadioWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->e:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$a;

    return-object p0
.end method

.method static synthetic b(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->g()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->a(Landroidx/preference/l;)V

    .line 43
    iget-object v0, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->c:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 55
    :cond_0
    iget-object p1, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    sget v0, Lcoui/support/appcompat/R$id;->radio_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->d:Landroid/widget/LinearLayout;

    .line 57
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->z()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_1
    return-void
.end method
