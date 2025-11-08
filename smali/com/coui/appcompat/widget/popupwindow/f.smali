.class public Lcom/coui/appcompat/widget/popupwindow/f;
.super Landroid/widget/BaseAdapter;
.source "DefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/popupwindow/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/content/res/ColorStateList;

.field private k:I

.field private l:F

.field private m:F

.field private n:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/g;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 60
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    .line 61
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->d:I

    .line 62
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->e:I

    .line 63
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_content_min_width_with_checkbox:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->f:I

    .line 64
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_with_no_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->g:I

    .line 65
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_left:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->h:I

    .line 66
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_right:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->i:I

    .line 67
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->l:F

    .line 68
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->m:F

    .line 69
    new-instance p2, Lcom/coui/appcompat/widget/popupwindow/f$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/widget/popupwindow/f$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/f;)V

    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->n:Landroid/view/View$AccessibilityDelegate;

    const/4 p2, 0x2

    .line 76
    new-array p2, p2, [I

    sget v0, Lcoui/support/appcompat/R$attr;->couiPopupListWindowTextColor:I

    const/4 v1, 0x0

    aput v0, p2, v1

    sget v0, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    const/4 v2, 0x1

    aput v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->j:Landroid/content/res/ColorStateList;

    .line 79
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->k:I

    .line 80
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->j:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcoui/support/appcompat/R$color;->coui_popup_list_window_text_color_light:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->j:Landroid/content/res/ColorStateList;

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V
    .locals 3

    .line 147
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget p1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->g:I

    invoke-virtual {p4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 151
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->g()I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->g:I

    invoke-virtual {p4, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 154
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 157
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->h:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 159
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->g()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->i:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 165
    :goto_0
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 166
    iget-object p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->a()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 170
    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_2
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V
    .locals 3

    .line 187
    invoke-virtual {p4}, Lcom/coui/appcompat/widget/popupwindow/g;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->f:I

    if-eq v0, v2, :cond_0

    .line 189
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 191
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 192
    invoke-virtual {p4}, Lcom/coui/appcompat/widget/popupwindow/g;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    invoke-virtual {p2, p5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 194
    invoke-virtual {p4}, Lcom/coui/appcompat/widget/popupwindow/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    iget p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->k:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result p3

    iget p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->f:I

    if-ne p3, p0, :cond_2

    .line 199
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_2
    const/16 p0, 0x8

    .line 201
    invoke-virtual {p2, p0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V
    .locals 0

    .line 176
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/popupwindow/g;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    iget p2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->l:F

    iget p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->m:F

    const/4 p3, 0x5

    invoke-static {p2, p0, p3}, Lcom/coui/appcompat/a/a;->a(FFI)F

    move-result p0

    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/popupwindow/g;Lcom/coui/appcompat/widget/COUIHintRedDot;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/g;->g()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 207
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/g;->g()I

    move-result p0

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 216
    invoke-virtual {p2, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 217
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 212
    invoke-virtual {p2, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 213
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 105
    new-instance p2, Lcom/coui/appcompat/widget/popupwindow/f$a;

    invoke-direct {p2}, Lcom/coui/appcompat/widget/popupwindow/f$a;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$layout;->coui_popup_list_window_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 107
    sget v1, Lcoui/support/appcompat/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->a:Landroid/widget/ImageView;

    .line 108
    sget v1, Lcoui/support/appcompat/R$id;->popup_list_window_item_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->b:Landroid/widget/TextView;

    .line 109
    sget v1, Lcoui/support/appcompat/R$id;->content:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->e:Landroid/widget/LinearLayout;

    .line 110
    sget v1, Lcoui/support/appcompat/R$id;->red_dot:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iput-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->d:Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 111
    sget v1, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->c:Landroid/widget/CheckBox;

    .line 112
    iget-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->c:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p2, Lcom/coui/appcompat/widget/popupwindow/f$a;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->n:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 115
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/widget/popupwindow/f$a;

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/f;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 121
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->e:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 122
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->d:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    add-int v3, v1, v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 126
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->e:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 127
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->d:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/f;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_4

    .line 129
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->e:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 130
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->d:I

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->c:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 132
    :cond_4
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->e:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 133
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->d:I

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/popupwindow/g;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/g;->d()Z

    move-result v6

    .line 138
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/popupwindow/g;

    iget-object v1, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->d:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/popupwindow/f;->a(Lcom/coui/appcompat/widget/popupwindow/g;Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    .line 140
    iget-object v0, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->a:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/popupwindow/g;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/coui/appcompat/widget/popupwindow/f;->a(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V

    .line 141
    iget-object v0, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/popupwindow/g;

    invoke-direct {p0, v0, v1, v6}, Lcom/coui/appcompat/widget/popupwindow/f;->a(Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V

    .line 142
    move-object v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->c:Landroid/widget/CheckBox;

    iget-object v4, p3, Lcom/coui/appcompat/widget/popupwindow/f$a;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/coui/appcompat/widget/popupwindow/f;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/coui/appcompat/widget/popupwindow/g;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/popupwindow/f;->a(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/g;Z)V

    return-object p2
.end method
