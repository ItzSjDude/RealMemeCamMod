.class public Lcom/coui/appcompat/widget/COUIEditText;
.super Landroidx/appcompat/widget/j;
.source "COUIEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIEditText$a;,
        Lcom/coui/appcompat/widget/COUIEditText$b;,
        Lcom/coui/appcompat/widget/COUIEditText$c;,
        Lcom/coui/appcompat/widget/COUIEditText$d;,
        Lcom/coui/appcompat/widget/COUIEditText$e;,
        Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/graphics/RectF;

.field private I:Landroid/content/res/ColorStateList;

.field private J:Landroid/content/res/ColorStateList;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Landroid/animation/ValueAnimator;

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/animation/ValueAnimator;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Landroid/graphics/Paint;

.field private final a:Lcom/coui/appcompat/widget/d$a;

.field private aa:Landroid/graphics/Paint;

.field private ab:Landroid/graphics/Paint;

.field private ac:Landroid/graphics/Paint;

.field private ad:Landroid/text/TextPaint;

.field private ae:I

.field private af:F

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:Z

.field private an:Z

.field private ao:Ljava/lang/String;

.field private ap:I

.field private aq:Lcom/coui/appcompat/widget/e;

.field private ar:Ljava/lang/Runnable;

.field private as:Ljava/lang/Runnable;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/coui/appcompat/widget/COUIEditText$e;

.field private k:Lcom/coui/appcompat/widget/COUIEditText$d;

.field private l:I

.field private m:Landroid/content/Context;

.field private n:I

.field private o:Z

.field private p:Lcom/coui/appcompat/widget/COUIEditText$a;

.field private q:Ljava/lang/String;

.field private r:Lcom/coui/appcompat/widget/COUIEditText$b;

.field private s:Ljava/lang/CharSequence;

.field private t:Z

.field private u:Ljava/lang/CharSequence;

.field private v:Z

.field private w:Landroid/graphics/drawable/GradientDrawable;

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Lcom/coui/appcompat/widget/d$a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/d$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->g:Z

    .line 103
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    .line 104
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->j:Lcom/coui/appcompat/widget/COUIEditText$e;

    .line 108
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->k:Lcom/coui/appcompat/widget/COUIEditText$d;

    .line 112
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->o:Z

    .line 114
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->q:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->r:Lcom/coui/appcompat/widget/COUIEditText$b;

    const/4 v1, 0x2

    .line 130
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    const/4 v1, 0x4

    .line 131
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->E:I

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->H:Landroid/graphics/RectF;

    .line 167
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    .line 168
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    const-string v1, ""

    .line 169
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    .line 170
    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ap:I

    .line 173
    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$1;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ar:Ljava/lang/Runnable;

    .line 179
    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$2;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->as:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 215
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->d:I

    .line 217
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->d:I

    if-nez v1, :cond_1

    .line 218
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->d:I

    .line 220
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->m:Landroid/content/Context;

    .line 221
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 222
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 223
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$color;->coui_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->N:I

    .line 224
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    .line 225
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    .line 226
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextIsEllipsis:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    .line 227
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setFastDeletable(Z)V

    .line 231
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    .line 233
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    .line 234
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 237
    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    :cond_3
    new-instance v0, Lcom/coui/appcompat/widget/COUIEditText$a;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/widget/COUIEditText$a;-><init>(Lcom/coui/appcompat/widget/COUIEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->p:Lcom/coui/appcompat/widget/COUIEditText$a;

    .line 241
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->p:Lcom/coui/appcompat/widget/COUIEditText$a;

    invoke-static {p0, v0}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 242
    invoke-static {p0, v4}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    .line 243
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->m:Landroid/content/Context;

    sget v1, Lcoui/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->q:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->p:Lcom/coui/appcompat/widget/COUIEditText$a;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText$a;->invalidateRoot()V

    .line 246
    new-instance v0, Lcom/coui/appcompat/widget/e;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/e;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 250
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->N:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->E:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/widget/e;->a(III[FLcom/coui/appcompat/widget/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIEditText;F)F
    .locals 0

    .line 72
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->af:F

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIEditText;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ae:I

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private a(F)V
    .locals 4

    .line 1369
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/d$a;->j()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1373
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    .line 1374
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1375
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1376
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$5;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/d$a;->j()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1386
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/view/animation/Interpolator;)V

    .line 256
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/d$a;->b(Landroid/view/animation/Interpolator;)V

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/d$a;->b(I)V

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 260
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->b:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->c:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->b:Landroid/view/animation/Interpolator;

    .line 264
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->c:Landroid/view/animation/Interpolator;

    .line 267
    :goto_0
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    sget v2, Lcoui/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    .line 268
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 273
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    .line 274
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p3, v2, :cond_1

    .line 275
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    .line 276
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setPadding(IIII)V

    return-void

    .line 280
    :cond_1
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 281
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz p3, :cond_2

    .line 282
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->P:Z

    .line 286
    :cond_2
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ag:I

    .line 288
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    .line 289
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 290
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->z:F

    .line 291
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->A:F

    .line 292
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->B:F

    .line 293
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->C:F

    .line 295
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    sget v1, Lcoui/support/appcompat/R$attr;->couiPrimaryColor:I

    .line 296
    invoke-static {p1, v1, v0}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    .line 297
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    .line 298
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    .line 299
    iget p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->F:I

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding:I

    .line 301
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ai:I

    .line 303
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz p3, :cond_3

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    .line 306
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->x:I

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    .line 309
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ah:I

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    .line 312
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aj:I

    .line 315
    :cond_3
    sget p1, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    .line 316
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setBoxBackgroundMode(I)V

    .line 320
    iget p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 321
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/COUIEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_4
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 325
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    .line 326
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    .line 329
    :cond_5
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    .line 330
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->K:I

    .line 331
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    .line 332
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    .line 333
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTexttNoEllipsisText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    .line 334
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 338
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIEditText_collapsedTextColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 340
    invoke-virtual {p0, p3, v1}, Lcom/coui/appcompat/widget/COUIEditText;->a(ILandroid/content/res/ColorStateList;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6

    const-string p1, "sans-serif-medium"

    .line 342
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 343
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/graphics/Typeface;)V

    .line 346
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ac:Landroid/graphics/Paint;

    .line 349
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ad:Landroid/text/TextPaint;

    .line 350
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ad:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 351
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    .line 352
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->K:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ab:Landroid/graphics/Paint;

    .line 355
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ab:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ab:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    .line 358
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->E:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->g()V

    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 2

    .line 1220
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1221
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1222
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1223
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->x:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIEditText;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->b(Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .line 803
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    .line 804
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 806
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    .line 808
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/content/res/ColorStateList;)V

    .line 809
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/d$a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/content/res/ColorStateList;)V

    .line 813
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/d$a;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 815
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 817
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 822
    iget-boolean p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    if-nez p2, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->b()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 823
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->d(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 818
    iget-boolean p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    if-eqz p2, :cond_7

    .line 819
    :cond_6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->c(Z)V

    .line 826
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    if-eqz p1, :cond_8

    .line 827
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/e;->a(Lcom/coui/appcompat/widget/d$a;)V

    :cond_8
    return-void
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 4

    .line 496
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->n:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->n:I

    add-int/2addr v0, v1

    .line 501
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    add-int/2addr v1, v0

    .line 502
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 503
    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    add-int/2addr p0, v2

    .line 504
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 582
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIEditText;)Lcom/coui/appcompat/widget/d$a;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    .line 394
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ar:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->post(Ljava/lang/Runnable;)Z

    .line 401
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 404
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    if-nez p1, :cond_5

    .line 405
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 406
    iget p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->n:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 408
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    goto :goto_0

    .line 411
    :cond_3
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    if-eqz p1, :cond_5

    .line 412
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 415
    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ar:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->post(Ljava/lang/Runnable;)Z

    .line 416
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIEditText;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->q:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    .line 575
    move-object v0, p0

    check-cast v0, Landroid/text/Editable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1183
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->P:Z

    if-eqz p1, :cond_1

    .line 1184
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(F)V

    goto :goto_0

    .line 1186
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/d$a;->b(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1188
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    .line 1189
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1190
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->n()V

    :cond_2
    return-void
.end method

.method private d()V
    .locals 0

    .line 694
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->f()V

    .line 695
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->h()V

    return-void
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->c()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1318
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->P:Z

    if-eqz p1, :cond_2

    .line 1319
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(F)V

    goto :goto_0

    .line 1321
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/d$a;->b(F)V

    .line 1323
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/widget/d;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1324
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->o()V

    :cond_3
    const/4 p1, 0x1

    .line 1326
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    return-void
.end method

.method private e()V
    .locals 4

    .line 699
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getModePaddingTop()I

    move-result v0

    .line 700
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingLeft()I

    move-result v1

    .line 701
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v2

    .line 702
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/h/v;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 717
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 719
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/widget/d;

    if-nez v0, :cond_1

    .line 724
    new-instance v0, Lcom/coui/appcompat/widget/d;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/d;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 727
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 767
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->d()V

    .line 768
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/d$a;->a(F)V

    .line 770
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getGravity()I

    move-result v0

    .line 771
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/d$a;->b(I)V

    .line 773
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/d$a;->a(I)V

    .line 775
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    .line 779
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->s:Ljava/lang/CharSequence;

    .line 782
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->s:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 783
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->v:Z

    const/4 v1, 0x0

    .line 787
    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(ZZ)V

    .line 788
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_4

    .line 789
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->e()V

    :cond_4
    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 939
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 941
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/d$a;->d()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 943
    :cond_1
    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ah:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 673
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 675
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    .line 754
    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->A:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->z:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->C:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->B:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 2

    .line 706
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 708
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ag:I

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/d$a;->d()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 710
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ah:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/d$a;->e()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aj:I

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .line 925
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 931
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoundsTop()I

    move-result v1

    .line 932
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v2

    .line 933
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v3

    .line 934
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 935
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()I
    .locals 2

    .line 978
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result p0

    return p0

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLabelMarginTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private j()V
    .locals 3

    .line 989
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    if-nez v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    .line 997
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 996
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 991
    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->j()V

    .line 1010
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->D:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->G:I

    if-eqz v1, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1014
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    return-void
.end method

.method private l()V
    .locals 5

    .line 1050
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ad:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    if-nez v0, :cond_3

    .line 1052
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1053
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    .line 1054
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->ad:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->U:Z

    if-eqz v1, :cond_3

    .line 1056
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setErrorState(Z)V

    goto :goto_1

    .line 1060
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ap:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getSelectionEnd()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ap:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setSelection(I)V

    :cond_2
    const/4 v0, 0x0

    .line 1065
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private m()Z
    .locals 3

    .line 1195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1199
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/coui/appcompat/widget/d;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private n()V
    .locals 2

    .line 1204
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->H:Landroid/graphics/RectF;

    .line 1208
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/graphics/RectF;)V

    .line 1209
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Landroid/graphics/RectF;)V

    .line 1210
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/widget/d;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/d;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1214
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/widget/d;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/d;->c()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1276
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->V:Z

    if-nez v0, :cond_3

    .line 1282
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->r()V

    goto :goto_0

    .line 1285
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->V:Z

    if-eqz v0, :cond_3

    .line 1286
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->s()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1290
    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->af:F

    :cond_3
    :goto_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1300
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->G:I

    goto :goto_0

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1303
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->G:I

    goto :goto_0

    .line 1305
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->K:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->G:I

    .line 1307
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->k()V

    :cond_3
    :goto_1
    return-void
.end method

.method private r()V
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    .line 1332
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1333
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1334
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$3;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    .line 1343
    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ae:I

    .line 1344
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1345
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 1346
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->V:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s()V
    .locals 3

    .line 1350
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1351
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    .line 1352
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1353
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1354
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$4;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1364
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 1365
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->V:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    .line 845
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/d$a;->a(Ljava/lang/CharSequence;)V

    .line 846
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    if-nez p1, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->n()V

    .line 849
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    if-eqz p1, :cond_1

    .line 850
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/d$a;)V

    :cond_1
    return-void
.end method

.method private t()Z
    .locals 1

    .line 1411
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private u()Z
    .locals 1

    .line 1639
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getGravity()I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/d$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 919
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/d$a;->p()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->J:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Z)V

    .line 921
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/e;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 799
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(ZZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 644
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 0

    .line 871
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    return p0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->p:Lcom/coui/appcompat/widget/COUIEditText$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIEditText$a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 655
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 632
    invoke-super {p0}, Landroidx/appcompat/widget/j;->dispatchStartTemporaryDetach()V

    .line 633
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->o:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1084
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->l()V

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->I:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 1088
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIEditText;->a(Z)V

    .line 1090
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_c

    .line 1091
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1092
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1093
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ac:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const-string v4, " "

    invoke-virtual {p1, v4, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1094
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/e;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1095
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/d$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1097
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/widget/e;->a(Landroid/graphics/Canvas;Lcom/coui/appcompat/widget/d$a;)V

    .line 1102
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-ne v0, v1, :cond_7

    .line 1103
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1104
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->h()V

    .line 1106
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/e;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1107
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1109
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->G:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/coui/appcompat/widget/e;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 1112
    :cond_7
    :goto_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1113
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->F:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-int v0, v0

    .line 1114
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->ai:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->ai:I

    sub-int v3, v1, v2

    .line 1115
    :cond_8
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int v2, v1, v3

    .line 1116
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ae:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1117
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    int-to-float v4, v2

    .line 1118
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->ab:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1119
    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/e;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    int-to-float v6, v2

    .line 1120
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1121
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->af:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1123
    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v3

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->af:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v4, v1

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/widget/e;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 1126
    :cond_b
    :goto_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1128
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1238
    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    return-void

    .line 1242
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->T:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1248
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->T:Z

    .line 1249
    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    .line 1250
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getDrawableState()[I

    move-result-object v1

    .line 1253
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1255
    invoke-static {p0}, Landroidx/core/h/v;->A(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Z)V

    goto :goto_1

    .line 1257
    :cond_3
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIEditText;->a(Z)V

    .line 1260
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->p()V

    .line 1261
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_4

    .line 1262
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->h()V

    .line 1263
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->q()V

    .line 1264
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/d$a;->a([I)Z

    move-result v0

    or-int/2addr v0, v3

    .line 1266
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/e;->a([I)V

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    .line 1270
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1272
    :cond_5
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->T:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 2

    .line 968
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 737
    iget p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    return p0
.end method

.method public getCouiEditTexttNoEllipsisText()Ljava/lang/String;
    .locals 1

    .line 1075
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->am:Z

    if-eqz v0, :cond_0

    .line 1076
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    return-object p0

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLabelMarginTop()I
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz v0, :cond_0

    .line 956
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/d$a;->d()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1133
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onDraw(Landroid/graphics/Canvas;)V

    .line 1134
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/e;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 423
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 424
    iget-boolean p2, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eqz p2, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->b(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 606
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 607
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->k:Lcom/coui/appcompat/widget/COUIEditText$d;

    if-eqz p0, :cond_0

    .line 608
    invoke-interface {p0}, Lcom/coui/appcompat/widget/COUIEditText$d;->a()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 612
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1144
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/j;->onLayout(ZIIII)V

    .line 1145
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 1146
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->w:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->h()V

    .line 1149
    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eqz p1, :cond_1

    .line 1150
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->e()V

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingLeft()I

    move-result p1

    .line 1154
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1156
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->i()I

    move-result p3

    .line 1157
    iget-object p4, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    .line 1159
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingTop()I

    move-result p5

    .line 1161
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1157
    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/coui/appcompat/widget/d$a;->a(IIII)V

    .line 1165
    iget-object p4, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result p5

    .line 1166
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 1165
    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/coui/appcompat/widget/d$a;->b(IIII)V

    .line 1167
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/d$a;->m()V

    .line 1172
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->O:Z

    if-nez p1, :cond_2

    .line 1173
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->n()V

    .line 1175
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->a:Lcom/coui/appcompat/widget/d$a;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/widget/e;->c(Lcom/coui/appcompat/widget/d$a;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1139
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 511
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    if-eqz v0, :cond_0

    .line 512
    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;

    if-eqz v0, :cond_0

    .line 513
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;

    .line 514
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 515
    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 524
    invoke-super {p0}, Landroidx/appcompat/widget/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getMaxLines()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    .line 527
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 449
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 452
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 456
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->i:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->g:Z

    if-eqz v0, :cond_5

    return v3

    .line 464
    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->g:Z

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->j:Lcom/coui/appcompat/widget/COUIEditText$e;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIEditText$e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->c()V

    .line 472
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->g:Z

    goto :goto_1

    .line 460
    :cond_4
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->g:Z

    return v3

    .line 489
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 490
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ap:I

    return p1
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 686
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    if-ne p1, v0, :cond_0

    return-void

    .line 689
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->y:I

    .line 690
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->d()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 746
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    if-eq v0, p1, :cond_0

    .line 747
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->L:I

    .line 748
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->q()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 595
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    .line 597
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->l:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 599
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->l:I

    :goto_0
    return-void
.end method

.method public setCouiEditTexttNoEllipsisText(Ljava/lang/String;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    .line 1071
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ao:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDefaultStrokeColor(I)V
    .locals 1

    .line 1468
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->K:I

    if-eq v0, p1, :cond_0

    .line 1469
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->K:I

    .line 1470
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aa:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1471
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->q()V

    :cond_0
    return-void
.end method

.method public setDisabledStrokeColor(I)V
    .locals 1

    .line 1480
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    if-eq v0, p1, :cond_0

    .line 1481
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->M:I

    .line 1482
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1483
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->q()V

    :cond_0
    return-void
.end method

.method public setEditTextDeleteIconNormal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1493
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    .line 1494
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    .line 1495
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    .line 1496
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEditTextDeleteIconPressed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1507
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    .line 1508
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->ak:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->al:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1509
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEditTextErrorColor(I)V
    .locals 1

    .line 1456
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->N:I

    if-eq p1, v0, :cond_0

    .line 1457
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->N:I

    .line 1458
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/e;->a(I)V

    .line 1459
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 0

    .line 1429
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->U:Z

    .line 1430
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText;->aq:Lcom/coui/appcompat/widget/e;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/e;->a(Z)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eq v0, p1, :cond_1

    .line 379
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    .line 380
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->h:Z

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->r:Lcom/coui/appcompat/widget/COUIEditText$b;

    if-nez p1, :cond_0

    .line 383
    new-instance p1, Lcom/coui/appcompat/widget/COUIEditText$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coui/appcompat/widget/COUIEditText$b;-><init>(Lcom/coui/appcompat/widget/COUIEditText;Lcom/coui/appcompat/widget/COUIEditText$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->r:Lcom/coui/appcompat/widget/COUIEditText$b;

    .line 384
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->r:Lcom/coui/appcompat/widget/COUIEditText$b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_edit_text_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->n:I

    .line 388
    iget p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->n:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawablePadding(I)V

    :cond_1
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 880
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    if-eq p1, v0, :cond_4

    .line 881
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    .line 882
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->t:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 883
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->v:Z

    .line 884
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 885
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 887
    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 891
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->u:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 894
    :cond_2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 896
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->v:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setIsEllipsisEnabled(Z)V
    .locals 0

    .line 1039
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->an:Z

    return-void
.end method

.method public setOnTextDeletedListener(Lcom/coui/appcompat/widget/COUIEditText$e;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->j:Lcom/coui/appcompat/widget/COUIEditText$e;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 617
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 618
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->length()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/coui/appcompat/widget/COUIEditText$d;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->k:Lcom/coui/appcompat/widget/COUIEditText$d;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2

    .line 837
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 838
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    .line 1032
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->P:Z

    return-void
.end method
