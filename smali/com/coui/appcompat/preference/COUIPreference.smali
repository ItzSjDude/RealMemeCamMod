.class public Lcom/coui/appcompat/preference/COUIPreference;
.super Landroidx/preference/Preference;
.source "COUIPreference.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:F

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->a:Z

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->a:Z

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->a:Z

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 114
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p4, p0, Lcom/coui/appcompat/preference/COUIPreference;->a:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->a:Z

    .line 115
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->b:Z

    .line 116
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v0, 0xe

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    .line 117
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->i:Z

    .line 119
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->j:F

    .line 121
    iget p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->j:F

    const/high16 p2, 0x41600000    # 14.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->k:I

    const/high16 p2, 0x42100000    # 36.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 122
    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->l:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 126
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->m:Ljava/lang/CharSequence;

    .line 128
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiIconStyle:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->n:I

    .line 129
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIPreference_iconRedDotMode:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->d:I

    .line 130
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIPreference_endRedDotMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->e:I

    .line 131
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIPreference_endRedDotNum:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->f:I

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 6

    .line 137
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/l;)V

    const v0, 0x1020006

    .line 138
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    .line 139
    sget v1, Lcoui/support/appcompat/R$id;->img_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v1

    .line 140
    sget v2, Lcoui/support/appcompat/R$id;->img_red_dot:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->g:Landroid/view/View;

    .line 141
    sget v2, Lcoui/support/appcompat/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 144
    instance-of v2, v0, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    .line 150
    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->k:I

    if-ge v2, v3, :cond_0

    .line 151
    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    goto :goto_0

    .line 152
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->l:I

    if-le v2, v3, :cond_1

    .line 153
    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    .line 157
    :cond_1
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->b:Z

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 158
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->c:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 159
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->n:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setType(I)V

    .line 163
    :cond_2
    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->i:Z

    if-eqz v2, :cond_3

    const v2, 0x1020010

    .line 164
    invoke-virtual {p1, v2}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->K()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 167
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    new-instance v3, Lcom/coui/appcompat/preference/COUIPreference$1;

    invoke-direct {v3, p0, v2}, Lcom/coui/appcompat/preference/COUIPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIPreference;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    :cond_3
    sget v2, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->c()Ljava/lang/CharSequence;

    move-result-object v4

    .line 203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 204
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 215
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->g:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    if-eqz v0, :cond_9

    .line 220
    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->d:I

    if-eqz v0, :cond_8

    .line 221
    check-cast p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->a()V

    .line 222
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->g:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->d:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 224
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 226
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    if-eqz v0, :cond_b

    .line 231
    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->e:I

    if-eqz v0, :cond_a

    .line 232
    check-cast p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->a()V

    .line 233
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->e:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 235
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->f:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 236
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    .line 238
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->m:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->m:Ljava/lang/CharSequence;

    .line 300
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->i()V

    :cond_0
    return-void
.end method
