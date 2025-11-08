.class public Lcom/coui/appcompat/dialog/app/COUIAlertController;
.super Lcom/coui/appcompat/dialog/app/a;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/COUIAlertController$a;,
        Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;
    }
.end annotation


# instance fields
.field private C:Landroid/content/Context;

.field private D:I

.field private E:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/a;-><init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->E:Z

    .line 88
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    .line 89
    new-array p2, p2, [I

    sget p3, Lcoui/support/appcompat/R$attr;->couiCenterAlertDialogButtonTextColor:I

    const/4 v0, 0x0

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$color;->coui_bottom_alert_dialog_button_text_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->D:I

    .line 91
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->center_dialog_scroll_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    .line 222
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->center_dialog_scroll_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 221
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_0
    const v0, 0x102000b

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->bottom_choice_dialog_message_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 227
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->bottom_choice_dialog_message_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->TD07:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 230
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_alert_dialog_content_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->f(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private e(Landroid/view/ViewGroup;)V
    .locals 3

    .line 235
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->x:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 238
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 239
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 240
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->o:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 245
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x102000b

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 253
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 102
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget v1, Lcoui/support/appcompat/R$style;->Animation_COUI_Dialog_Alpha:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 105
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 107
    :cond_0
    sget v1, Lcoui/support/appcompat/R$style;->Animation_COUI_Dialog:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 108
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 110
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private h()Z
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->e()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->B:I

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->B:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k()Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->d:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private l()Z
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->c:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->E:Z

    .line 278
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->f()V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/a;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcoui/support/appcompat/R$layout;->coui_bottom_alert_dialog:I

    :goto_0
    return p0
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .locals 4

    .line 195
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/a;->b(Landroid/view/ViewGroup;)V

    .line 198
    sget v0, Lcoui/support/appcompat/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->e:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    sget v1, Lcoui/support/appcompat/R$id;->coui_alert_dialog_list_divider:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 209
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->f(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->e(Landroid/view/ViewGroup;)V

    .line 213
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->z:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->d(Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .locals 8

    .line 163
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/a;->c(Landroid/view/ViewGroup;)V

    .line 164
    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->z:Z

    if-nez v0, :cond_1

    const v0, 0x1020019

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x102001a

    .line 166
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x102001b

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 170
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->h()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "sans-serif-medium"

    .line 171
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 172
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcoui/support/appcompat/R$dimen;->TD07:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 173
    check-cast p1, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerNegButVerPaddingOffset(I)V

    goto :goto_0

    :cond_0
    const-string v3, "sans-serif-regular"

    .line 175
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 176
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->TD09:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 177
    check-cast p1, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    .line 178
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_last_item_padding_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 177
    invoke-virtual {p1, v6}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setVerNegButVerPaddingOffset(I)V

    const/4 v6, 0x1

    .line 179
    invoke-virtual {p1, v6}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setForceVertical(Z)V

    .line 180
    iget p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->D:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 181
    iget p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->D:I

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 182
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->C:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$color;->coui_bottom_alert_dialog_button_warning_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setTextColor(I)V

    move p0, v5

    .line 184
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    invoke-virtual {v0, v4, p0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    invoke-virtual {v1, v4, p0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    invoke-virtual {v2, v4, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->f()V

    .line 122
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->i()V

    .line 123
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->g()V

    .line 124
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->c()Landroid/widget/ListView;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;

    .line 127
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->setNeedClip(Z)V

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/a;->d()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->a:Landroidx/appcompat/app/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->b:Landroid/view/Window;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 138
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->E:Z

    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    move-object p0, v1

    .line 146
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method
