.class public Lcom/coui/appcompat/widget/COUISwitch;
.super Landroid/widget/CompoundButton;
.source "COUISwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISwitch$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroid/graphics/Paint;

.field private N:Landroid/graphics/Paint;

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:Landroid/graphics/drawable/Drawable;

.field private S:Landroid/graphics/drawable/Drawable;

.field private T:Landroid/graphics/drawable/Drawable;

.field private U:Landroid/graphics/drawable/Drawable;

.field private V:Landroid/animation/AnimatorSet;

.field private W:Landroid/animation/AnimatorSet;

.field private a:Ljava/lang/String;

.field private aa:Landroid/animation/AnimatorSet;

.field private ab:Landroid/animation/AnimatorSet;

.field private ac:Lcom/coui/appcompat/a/q;

.field private ad:I

.field private ae:I

.field private af:Z

.field private ag:Z

.field private ah:Landroid/view/accessibility/AccessibilityManager;

.field private ai:Lcom/coui/appcompat/widget/COUISwitch$a;

.field private aj:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

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

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/RectF;

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 159
    sget v0, Lcoui/support/appcompat/R$attr;->couiSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->w:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    .line 92
    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->A:F

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    .line 100
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->H:Z

    .line 117
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    .line 127
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ag:Z

    .line 177
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setSoundEffectsEnabled(Z)V

    .line 178
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 179
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->aj:I

    goto :goto_0

    .line 182
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->aj:I

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->ah:Landroid/view/accessibility/AccessibilityManager;

    .line 185
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 186
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    .line 187
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    .line 188
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    .line 189
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    .line 190
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barCheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    .line 191
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    .line 192
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->j:I

    .line 193
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerUnCheckedCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->k:I

    .line 194
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->l:I

    .line 195
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->m:I

    .line 196
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_circlePadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    .line 197
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_loadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->P:Landroid/graphics/drawable/Drawable;

    .line 198
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->n:I

    .line 199
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_barCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->o:I

    .line 200
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->p:I

    .line 201
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->q:I

    .line 202
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->r:I

    .line 203
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->s:I

    .line 205
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedCheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->Q:Landroid/graphics/drawable/Drawable;

    .line 206
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedUncheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->R:Landroid/graphics/drawable/Drawable;

    .line 207
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->S:Landroid/graphics/drawable/Drawable;

    .line 208
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->T:Landroid/graphics/drawable/Drawable;

    .line 209
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->U:Landroid/graphics/drawable/Drawable;

    .line 211
    iget p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_switch_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    .line 214
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$bool;->coui_switch_theme_enable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->L:Z

    .line 215
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->e()V

    .line 216
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->f()V

    .line 218
    invoke-static {}, Lcom/coui/appcompat/a/q;->a()Lcom/coui/appcompat/a/q;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->ac:Lcom/coui/appcompat/a/q;

    .line 219
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->ac:Lcom/coui/appcompat/a/q;

    sget p3, Lcoui/support/appcompat/R$raw;->coui_switch_sound_on:I

    invoke-virtual {p2, p1, p3}, Lcom/coui/appcompat/a/q;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->ad:I

    .line 220
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->ac:Lcom/coui/appcompat/a/q;

    sget p3, Lcoui/support/appcompat/R$raw;->coui_switch_sound_off:I

    invoke-virtual {p2, p1, p3}, Lcom/coui/appcompat/a/q;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->ae:I

    .line 221
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$string;->switch_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->a:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$string;->switch_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->b:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$string;->switch_loading:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 417
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 418
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ac:Lcom/coui/appcompat/a/q;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ad:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ae:I

    :goto_0
    move v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/a/q;->a(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->M:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->M:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->o:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->n:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 443
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUISwitch;->M:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    .line 362
    invoke-static {v2, v1, v3, v0}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    .line 364
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "circleScaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x85

    .line 365
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 367
    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 368
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xfa

    .line 369
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getCircleTranslation()I

    move-result v5

    .line 373
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->o()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    .line 374
    :cond_1
    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    .line 376
    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    .line 378
    :goto_0
    new-array v8, v2, [I

    aput v5, v8, v7

    const/4 v5, 0x1

    aput v6, v8, v5

    const-string v6, "circleTranslation"

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x17f

    .line 379
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getInnerCircleAlpha()F

    move-result v8

    if-eqz p1, :cond_3

    move v0, v1

    .line 383
    :cond_3
    new-array v1, v2, [F

    aput v8, v1, v7

    aput v0, v1, v5

    const-string v0, "innerCircleAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x64

    .line 384
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getBarColor()I

    move-result v1

    if-eqz p1, :cond_4

    .line 387
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    .line 388
    :goto_1
    new-array v2, v2, [I

    aput v1, v2, v7

    aput p1, v2, v5

    const-string p1, "barColor"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    .line 389
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 391
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 393
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 394
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 396
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    .line 448
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 449
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->A:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 451
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->j:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->k:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->s:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->r:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 456
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 487
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->A:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 488
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->l:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 489
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->O:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->O:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->q:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->p:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->B:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 494
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->O:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->w:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->M:Landroid/graphics/Paint;

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->N:Landroid/graphics/Paint;

    .line 229
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->O:Landroid/graphics/Paint;

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 510
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->D:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 511
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->F:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 512
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->P:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->P:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->E:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 516
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->P:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f()V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->g()V

    .line 234
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->h()V

    .line 235
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->i()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 7

    .line 522
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 526
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 527
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 528
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 529
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 530
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 532
    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->F:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 533
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g()V
    .locals 8

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 239
    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 240
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->W:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 241
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "circleScale"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1b1

    .line 243
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "loadingScale"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 246
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x226

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "loadingAlpha"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 250
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 254
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x320

    .line 255
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 259
    invoke-virtual {p0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 260
    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 261
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private h()V
    .locals 4

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 266
    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 267
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->aa:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 268
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "loadingAlpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->aa:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private i()V
    .locals 3

    .line 276
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ab:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 277
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 278
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x320

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ab:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private j()V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    .line 304
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->performHapticFeedback(I)Z

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()I
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->S:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->T:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->Q:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->R:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object p0
.end method

.method private m()V
    .locals 6

    .line 463
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 466
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    goto :goto_0

    .line 468
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 469
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_1

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 474
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    .line 476
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 477
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 480
    :goto_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 482
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private n()V
    .locals 5

    .line 501
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 502
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 503
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 504
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->v:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 505
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private o()Z
    .locals 3

    .line 869
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->K:Z

    return p0
.end method

.method public b()V
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    if-nez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ah:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    .line 568
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    .line 569
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->L:Z

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ab:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->ai:Lcom/coui/appcompat/widget/COUISwitch$a;

    if-eqz v0, :cond_2

    .line 575
    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISwitch$a;->a()V

    .line 577
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 0

    .line 687
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    return p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->I:Z

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 865
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarColor()I
    .locals 0

    .line 779
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->C:I

    return p0
.end method

.method public getCircleScale()F
    .locals 0

    .line 803
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->A:F

    return p0
.end method

.method public getCircleScaleX()F
    .locals 0

    .line 741
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    return p0
.end method

.method public getCircleTranslation()I
    .locals 0

    .line 722
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    return p0
.end method

.method public getInnerCircleAlpha()F
    .locals 0

    .line 760
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->B:F

    return p0
.end method

.method public getLoadingAlpha()F
    .locals 0

    .line 841
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->E:F

    return p0
.end method

.method public getLoadingRotation()F
    .locals 0

    .line 860
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->F:F

    return p0
.end method

.method public getLoadingScale()F
    .locals 0

    .line 822
    iget p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->D:F

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 648
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 649
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->I:Z

    .line 613
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->J:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 641
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->J:Z

    .line 643
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->I:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->L:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->a(Landroid/graphics/Canvas;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->m()V

    .line 406
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->n()V

    .line 407
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->b(Landroid/graphics/Canvas;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->e(Landroid/graphics/Canvas;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->c(Landroid/graphics/Canvas;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->d(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 876
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 877
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->H:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 879
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUISwitch;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 635
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 636
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->I:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 618
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 619
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    iget p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->u:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setMeasuredDimension(II)V

    .line 621
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->ag:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 622
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->ag:Z

    .line 623
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->o()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    :goto_0
    iput p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    :cond_2
    iput p2, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    .line 628
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->B:F

    .line 629
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    :goto_3
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->C:I

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 542
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->af:Z

    .line 543
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->K:Z

    .line 546
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->H:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->b()V

    return v2

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->G:Z

    if-eqz v0, :cond_2

    return v2

    .line 553
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBarCheckedColor(I)V
    .locals 0

    .line 955
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    .line 956
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    return-void
.end method

.method public setBarCheckedDisabledColor(I)V
    .locals 0

    .line 992
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->o:I

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->C:I

    .line 770
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 900
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->e:I

    return-void
.end method

.method public setBarUnCheckedColor(I)V
    .locals 0

    .line 945
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    .line 946
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    return-void
.end method

.method public setBarUncheckedDisabledColor(I)V
    .locals 0

    .line 983
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->n:I

    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 891
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->d:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 333
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->L:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 334
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 337
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->I:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->J:Z

    if-eqz v0, :cond_2

    .line 340
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->b(Z)V

    goto :goto_5

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v0, v1

    goto :goto_0

    .line 343
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setCircleTranslation(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 345
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->y:I

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setCircleTranslation(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 347
    :goto_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_7

    .line 348
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->f:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->g:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    .line 353
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->af:Z

    if-eqz v0, :cond_9

    .line 354
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->a(Z)V

    .line 355
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->af:Z

    .line 357
    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->j()V

    .line 358
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->Q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCirclePadding(I)V
    .locals 0

    .line 936
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->t:I

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->A:F

    .line 789
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0

    .line 731
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->z:F

    .line 732
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0

    .line 712
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->x:I

    .line 713
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 794
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0

    .line 750
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->B:F

    .line 751
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setInnerCircleCheckedDisabledColor(I)V
    .locals 0

    .line 1010
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->q:I

    return-void
.end method

.method public setInnerCircleColor(I)V
    .locals 0

    .line 965
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->m:I

    return-void
.end method

.method public setInnerCircleUncheckedDisabledColor(I)V
    .locals 0

    .line 1001
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->p:I

    return-void
.end method

.method public setInnerCircleWidth(I)V
    .locals 0

    .line 927
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->l:I

    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0

    .line 831
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->E:F

    .line 832
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1037
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->P:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0

    .line 850
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->F:F

    .line 851
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0

    .line 812
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->D:F

    .line 813
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0

    .line 703
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->H:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$a;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->ai:Lcom/coui/appcompat/widget/COUISwitch$a;

    return-void
.end method

.method public setOuterCircleCheckedDisabledColor(I)V
    .locals 0

    .line 1028
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->s:I

    return-void
.end method

.method public setOuterCircleColor(I)V
    .locals 0

    .line 974
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->j:I

    return-void
.end method

.method public setOuterCircleStrokeWidth(I)V
    .locals 0

    .line 909
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->i:I

    return-void
.end method

.method public setOuterCircleUncheckedDisabledColor(I)V
    .locals 0

    .line 1019
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->r:I

    return-void
.end method

.method public setOuterCircleWidth(I)V
    .locals 0

    .line 918
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->h:I

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0

    .line 660
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->af:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->K:Z

    return-void
.end method

.method public setThemedLoadingCheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->S:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThemedLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->U:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThemedLoadingUncheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->T:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setUncheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->R:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setChecked(Z)V

    return-void
.end method
