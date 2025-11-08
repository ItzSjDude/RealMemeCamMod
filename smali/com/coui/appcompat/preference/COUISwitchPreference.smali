.class public Lcom/coui/appcompat/preference/COUISwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "COUISwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchPreference$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/coui/appcompat/preference/COUISwitchPreference$a;

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Lcom/coui/appcompat/widget/COUISwitch;

.field private g:Z

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/CharSequence;

.field private o:Z

.field private p:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    sget v0, Lcoui/support/appcompat/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p4, Lcom/coui/appcompat/preference/COUISwitchPreference$a;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference$a;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference$1;)V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->b:Lcom/coui/appcompat/preference/COUISwitchPreference$a;

    const/4 p4, 0x1

    .line 60
    iput-boolean p4, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->c:Z

    .line 142
    sget-object p4, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 144
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->c:Z

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->c:Z

    .line 145
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->d:Landroid/graphics/drawable/Drawable;

    .line 146
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->e:Z

    .line 147
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->g:Z

    .line 148
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v2, 0xe

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    .line 149
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->n:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    sget-object p4, Lcoui/support/appcompat/R$styleable;->COUISwitchPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 154
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitchPreference_hasTitleRedDot:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->o:Z

    .line 155
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->x()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->i:F

    .line 159
    iget p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->i:F

    const/high16 p3, 0x41600000    # 14.0f

    mul-float/2addr p3, p2

    const/high16 p4, 0x40400000    # 3.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->j:I

    const/high16 p3, 0x42100000    # 36.0f

    mul-float/2addr p2, p3

    div-float/2addr p2, p4

    float-to-int p2, p2

    .line 160
    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->k:I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_dot_diameter_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->l:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$dimen;->coui_switch_preference_dot_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->m:I

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/COUISwitchPreference;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->H()Landroidx/preference/Preference$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->H()Landroidx/preference/Preference$b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$b;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 9

    .line 167
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_0
    const v0, 0x1020040

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    .line 173
    instance-of v2, v0, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v2, :cond_1

    .line 174
    check-cast v0, Lcom/coui/appcompat/widget/COUISwitch;

    .line 175
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISwitch;->d()V

    .line 176
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->b:Lcom/coui/appcompat/preference/COUISwitchPreference$a;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setVerticalScrollBarEnabled(Z)V

    .line 178
    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->f:Lcom/coui/appcompat/widget/COUISwitch;

    .line 180
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->a(Landroidx/preference/l;)V

    .line 182
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->e:Z

    if-eqz v0, :cond_2

    const v0, 0x1020010

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->K()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 186
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 187
    new-instance v2, Lcom/coui/appcompat/preference/COUISwitchPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    :cond_2
    iget-object v0, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 221
    instance-of v2, v0, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v2, :cond_5

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 226
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    .line 227
    iget v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    iget v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->j:I

    if-ge v2, v3, :cond_3

    .line 228
    iput v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    goto :goto_0

    .line 229
    :cond_3
    iget v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->k:I

    if-le v2, v3, :cond_4

    .line 230
    iput v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    .line 234
    :cond_4
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->g:Z

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 235
    iget v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->h:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 238
    :cond_5
    sget v2, Lcoui/support/appcompat/R$id;->img_layout:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_7
    :goto_1
    iget-object v0, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    sget v2, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->h()Ljava/lang/CharSequence;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 254
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_2
    const v0, 0x1020016

    .line 258
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 259
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->o:Z

    if-eqz v0, :cond_a

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Lcom/coui/appcompat/widget/m;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->K()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->m:I

    int-to-float v6, v5

    const/4 v7, 0x0

    iget v8, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->l:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v8, v8

    invoke-direct {v4, v6, v7, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/coui/appcompat/widget/m;-><init>(IILandroid/content/Context;Landroid/graphics/RectF;)V

    .line 264
    iget v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->m:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->l:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->l:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p0, v5

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v0, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 267
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 269
    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->b(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->x()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->p:Ljava/lang/CharSequence;

    return-void
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->g(Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->h(Z)V

    .line 284
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->g()V

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->f:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setShouldPlaySound(Z)V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->n:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Z)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->f:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz p0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method
