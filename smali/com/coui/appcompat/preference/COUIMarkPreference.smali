.class public Lcom/coui/appcompat/preference/COUIMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "COUIMarkPreference.java"


# instance fields
.field b:I

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 116
    sget v0, Lcoui/support/appcompat/R$attr;->couiMarkPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x0

    .line 58
    iput p4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->c:Z

    .line 86
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIMarkPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 87
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIMarkPreference_couiMarkStyle:I

    invoke-virtual {v1, v2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:I

    .line 88
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIMarkPreference_couiMarkAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->k:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 92
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->c:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->c:Z

    .line 93
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->d:Landroid/graphics/drawable/Drawable;

    .line 94
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->e:Z

    .line 96
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v1, 0xe

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    .line 97
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->f:Z

    .line 98
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->e(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->j:F

    .line 101
    iget p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->j:F

    const/high16 p2, 0x41600000    # 14.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->h:I

    const/high16 p2, 0x42100000    # 36.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 102
    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 5

    .line 136
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->a(Landroidx/preference/l;)V

    .line 137
    sget v0, Lcoui/support/appcompat/R$id;->coui_tail_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 138
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    .line 139
    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:I

    if-nez v3, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->b()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_1
    :goto_0
    sget v0, Lcoui/support/appcompat/R$id;->coui_head_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 147
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    .line 148
    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->b()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 155
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 158
    instance-of v3, v0, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 163
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    .line 164
    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->h:I

    if-ge v3, v4, :cond_4

    .line 165
    iput v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    goto :goto_2

    .line 166
    :cond_4
    iget v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->i:I

    if-le v3, v4, :cond_5

    .line 167
    iput v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    .line 171
    :cond_5
    :goto_2
    check-cast v0, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->e:Z

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 172
    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 175
    :cond_6
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->f:Z

    if-eqz v0, :cond_7

    const v0, 0x1020010

    .line 176
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->K()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 179
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    new-instance v3, Lcom/coui/appcompat/preference/COUIMarkPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMarkPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    :cond_7
    sget v0, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 213
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->c()Ljava/lang/CharSequence;

    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 215
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 218
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->k:Ljava/lang/CharSequence;

    return-object p0
.end method
