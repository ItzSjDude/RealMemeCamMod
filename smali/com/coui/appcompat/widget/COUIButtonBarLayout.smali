.class public Lcom/coui/appcompat/widget/COUIButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "COUIButtonBarLayout.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/widget/Button;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    .line 176
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->isAllCaps()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    return p0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x1020019

    .line 146
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    const v0, 0x102001a

    .line 147
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    const v0, 0x102001b

    .line 148
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    .line 149
    sget v0, Lcoui/support/appcompat/R$id;->coui_dialog_button_divider_1:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    .line 150
    sget v0, Lcoui/support/appcompat/R$id;->coui_dialog_button_divider_2:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    .line 151
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    .line 96
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k:I

    .line 97
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    .line 98
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_delete_alert_dialog_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    .line 99
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_delete_alert_dialog_button_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    .line 100
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    .line 101
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    .line 102
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_horizontal_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r:I

    .line 103
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->s:I

    .line 104
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_horizontal_button_divider_vertical_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->t:I

    .line 105
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->u:I

    return-void
.end method

.method private a(I)Z
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 164
    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    div-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 165
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result v0

    .line 166
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result p0

    if-gt v0, p1, :cond_1

    if-gt v2, p1, :cond_1

    if-le p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private a(Landroid/view/View;)Z
    .locals 0

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setOrientation(I)V

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setMinimumHeight(I)V

    .line 187
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e()V

    .line 188
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->g()V

    .line 189
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d()V

    .line 190
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f()V

    .line 191
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 196
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    .line 197
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 198
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 201
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 206
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    .line 207
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 208
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 209
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 217
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    .line 218
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 219
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 220
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 228
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 229
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 230
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 231
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 232
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->s:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x0

    .line 233
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 234
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 239
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 240
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 241
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 242
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v1, 0x0

    .line 243
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 245
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private getButtonCount()I
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setOrientation(I)V

    .line 251
    iget v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->u:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setMinimumHeight(I)V

    .line 252
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l()V

    .line 253
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k()V

    .line 254
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m()V

    .line 255
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i()V

    .line 256
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 261
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    .line 262
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 263
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 264
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 266
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 267
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    .line 273
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 274
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 275
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 277
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 282
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    .line 283
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 284
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 285
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->k:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 287
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 294
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 297
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->t:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 298
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 299
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 306
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 309
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->t:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 310
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 311
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private n()V
    .locals 5

    .line 316
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->w:Z

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    .line 319
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_1

    .line 320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->n:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 325
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->n:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 332
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 335
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 346
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 342
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 343
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 350
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 351
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 372
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 375
    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 379
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 380
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 383
    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 352
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 353
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 354
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 355
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 357
    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 361
    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 362
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 365
    :cond_10
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 366
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 390
    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    .line 395
    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 396
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_7

    .line 392
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 400
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 401
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 404
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_8

    .line 406
    :cond_15
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 407
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_8

    .line 410
    :cond_16
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 411
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 412
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_8

    .line 414
    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 415
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 420
    :cond_18
    :goto_8
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 421
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->l:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 422
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p:I

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_19
    :goto_9
    return-void
.end method

.method private o()V
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->w:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 429
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    .line 431
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    .line 432
    :goto_0
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 434
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    .line 435
    :goto_1
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 436
    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 437
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    .line 438
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private p()V
    .locals 3

    .line 444
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->w:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 445
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->i:Landroid/view/View;

    .line 448
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 464
    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private q()V
    .locals 4

    .line 475
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 476
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 484
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private r()V
    .locals 4

    .line 493
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->v:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setPadding(IIII)V

    return-void
.end method

.method private s()V
    .locals 4

    .line 497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setPadding(IIII)V

    return-void
.end method

.method private t()Z
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 121
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a()V

    .line 123
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->w:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->h()V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q()V

    .line 137
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->s()V

    .line 138
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->t()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->b()V

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->n()V

    .line 128
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->o()V

    .line 129
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->p()V

    .line 130
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->r()V

    .line 131
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public setForceVertical(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->w:Z

    return-void
.end method

.method public setVerButDividerVerMargin(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->s:I

    return-void
.end method

.method public setVerButPaddingOffset(I)V
    .locals 0

    .line 539
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->q:I

    return-void
.end method

.method public setVerButVerPadding(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->m:I

    return-void
.end method

.method public setVerNegButVerPaddingOffset(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->n:I

    return-void
.end method

.method public setVerPaddingBottom(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->v:I

    return-void
.end method
