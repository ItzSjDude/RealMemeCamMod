.class public Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
.super Landroid/view/View;
.source "COUISeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;,
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;,
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;

.field private C:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;

.field private D:Landroid/view/accessibility/AccessibilityManager;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/animation/AnimatorSet;

.field private G:I

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:I

.field private M:I

.field private N:F

.field private O:F

.field private final P:Lcom/a/a/b;

.field private final Q:Lcom/a/a/f;

.field private R:Lcom/a/a/g;

.field private S:Landroid/view/VelocityTracker;

.field private T:Z

.field private U:F

.field private V:Landroid/view/animation/Interpolator;

.field private W:I

.field private final a:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private b:I

.field private c:F

.field private d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/content/res/ColorStateList;

.field private l:F

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/RectF;

.field private u:Landroid/graphics/RectF;

.field private v:Landroid/graphics/RectF;

.field private w:F

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/animation/ValueAnimator;

.field private z:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 184
    sget v0, Lcoui/support/appcompat/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b:I

    .line 122
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 123
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    const/16 v1, 0x64

    .line 124
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    const/4 v1, 0x1

    .line 125
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->h:I

    .line 126
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    .line 127
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    .line 139
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->v:Landroid/graphics/RectF;

    .line 144
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->A:I

    .line 149
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    .line 151
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    .line 162
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->P:Lcom/a/a/b;

    .line 163
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->P:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->b()Lcom/a/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 164
    invoke-static {v1, v2, v3, v4}, Lcom/a/a/g;->a(DD)Lcom/a/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->R:Lcom/a/a/g;

    .line 166
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    const v1, 0x3ecccccd    # 0.4f

    .line 167
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->U:F

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    .line 168
    invoke-static {v2, v3, v4, v1}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->V:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_0

    .line 201
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->W:I

    .line 203
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->W:I

    if-nez v2, :cond_1

    .line 204
    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->W:I

    .line 206
    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 207
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 208
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    .line 209
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbInScaleRadius:I

    const v2, 0x406ae148    # 3.67f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->l:F

    .line 210
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbOutRadius:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->H:F

    .line 211
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbOutScaleRadius:I

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->I:F

    .line 213
    sget p3, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressScaleRadius:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    .line 214
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p3, v2, :cond_2

    .line 215
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 217
    :cond_2
    sget p3, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, p3, v0}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result p1

    .line 218
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 217
    invoke-static {p1, p3}, Lcom/coui/appcompat/a/r;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    .line 220
    :goto_0
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressRadius:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->q:F

    .line 221
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    .line 222
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundRadius:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    .line 223
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarSecondaryProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    .line 224
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcoui/support/appcompat/R$color;->coui_seekbar_background_highlight_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->G:I

    .line 225
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->L:I

    .line 226
    sget p1, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowRadius:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    .line 227
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d()V

    .line 230
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c()V

    .line 231
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->O:F

    return p0
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->O:F

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;I)I
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    return p1
.end method

.method private a(F)V
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 541
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v2, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_0

    .line 544
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 546
    :goto_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(I)I

    move-result p1

    .line 547
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 6

    .line 551
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    .line 553
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 580
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    const/4 v1, 0x2

    .line 582
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 583
    invoke-static {v2, v3, v4, v5}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    new-instance v2, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$6;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sub-int/2addr p1, v0

    .line 591
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p1, v0

    float-to-long v2, p1

    const-wide/16 v4, 0x96

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    move-wide v2, v4

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 597
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 598
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 602
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 603
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 604
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    goto :goto_0

    .line 607
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 609
    :goto_0
    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 610
    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    if-eq v0, p1, :cond_2

    .line 611
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 612
    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 614
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i()V

    .line 616
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    return-void
.end method

.method private b(F)F
    .locals 4

    .line 705
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 706
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->V:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 708
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->U:F

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    .line 709
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->U:F

    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->H:F

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    return p1
.end method

.method private b(I)I
    .locals 0

    .line 741
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;I)I
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 620
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setPressed(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a()V

    .line 622
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f()V

    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->I:F

    return p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    return p1
.end method

.method private c()V
    .locals 1

    .line 235
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->q:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    .line 236
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->H:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    .line 237
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    return-void
.end method

.method private c(F)V
    .locals 9

    .line 715
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->c()D

    move-result-wide v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->d()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    const-wide v3, 0x3fee666666666666L    # 0.95

    if-ltz v0, :cond_0

    .line 717
    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-double v5, p1

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-double v7, v0

    mul-double/2addr v7, v3

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_2

    int-to-double v3, p1

    int-to-double v5, v0

    mul-double/2addr v5, v1

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    .line 718
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 721
    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-double v5, p1

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-double v7, v0

    mul-double/2addr v7, v3

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_2

    int-to-double v3, p1

    int-to-double v5, v0

    mul-double/2addr v5, v1

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    .line 722
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    goto :goto_0

    .line 725
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 5

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 634
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result p1

    .line 635
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->r:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 639
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result p1

    if-ge v0, p1, :cond_1

    goto :goto_2

    :cond_1
    sub-int p1, v1, v0

    .line 645
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_1

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v2

    if-ge v0, v2, :cond_3

    :goto_0
    move v3, v4

    goto :goto_2

    .line 651
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_4

    goto :goto_2

    .line 654
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    :goto_1
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v3, p1, v1

    .line 659
    :goto_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    .line 661
    iget p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 662
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 663
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 665
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    if-eq p1, v1, :cond_6

    int-to-float p1, v0

    .line 666
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    .line 667
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 668
    invoke-interface {p1, p0, v1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 670
    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i()V

    .line 673
    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 674
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c(F)V

    return-void
.end method

.method private d(F)F
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0

    .line 102
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    return p1
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b:I

    .line 244
    new-instance v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->B:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->B:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;

    invoke-static {p0, v0}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 247
    invoke-static {p0, v1}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->B:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$c;->invalidateRoot()V

    .line 250
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->D:Landroid/view/accessibility/AccessibilityManager;

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    .line 252
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 679
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    sub-float v0, p1, v0

    .line 680
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 683
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 684
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 685
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    div-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v0

    .line 686
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(I)I

    move-result v0

    .line 688
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 689
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 690
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 692
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    if-eq v1, v0, :cond_2

    .line 693
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    .line 694
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 695
    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 697
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i()V

    .line 699
    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 700
    iget-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c(F)V

    return-void
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    return p0
.end method

.method private e()V
    .locals 9

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->R:Lcom/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    .line 259
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 290
    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 293
    new-array v1, v0, [F

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x73

    .line 294
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 295
    new-instance v2, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 307
    new-array v2, v0, [F

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 308
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    .line 309
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$3;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$3;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    new-array v0, v0, [I

    aput v3, v0, v3

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    .line 322
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 323
    new-instance v3, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 329
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic f(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    return p0
.end method

.method private f()V
    .locals 1

    .line 731
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->h:I

    return p0
.end method

.method private g()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 756
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private getEnd()I
    .locals 0

    .line 361
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method private getStart()I
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->aa:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 9

    .line 760
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    .line 762
    new-array v1, v0, [F

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->H:F

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "radiusOut"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 763
    new-array v2, v0, [F

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    aput v5, v2, v3

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->q:F

    aput v5, v2, v4

    const-string v5, "progress"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 764
    new-array v5, v0, [I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    aput v6, v5, v3

    aput v3, v5, v4

    const-string v6, "thumbShadowRadius"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 765
    new-array v6, v0, [F

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    aput v7, v6, v3

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    aput v7, v6, v4

    const-string v7, "backgroundRadius"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 766
    iget-object v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 767
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 768
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$7;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->F:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 783
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 784
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 1213
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x131

    .line 1216
    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performHapticFeedback(II)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x132

    .line 1214
    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performHapticFeedback(II)Z

    :goto_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    .line 746
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    .line 747
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz v0, :cond_0

    .line 748
    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 998
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(IZZ)V

    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .line 1010
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 1011
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 1014
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(I)V

    goto :goto_0

    .line 1016
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 1017
    iget-object p2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz p2, :cond_1

    .line 1018
    invoke-interface {p2, p0, p1, p3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->a(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1022
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i()V

    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    .line 789
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    .line 790
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;->b(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 935
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 1039
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 1031
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    return p0
.end method

.method public getSecondaryProgress()I
    .locals 0

    .line 1094
    iget p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 1102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getLayoutDirection()I

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

.method protected onDetachedFromWindow()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->C:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 803
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 366
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    invoke-static {p0, v2}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    sub-float v7, v1, v2

    .line 368
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    add-float v8, v1, v2

    .line 369
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 370
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    sub-float/2addr v3, v4

    .line 371
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    add-float/2addr v4, v5

    .line 370
    invoke-virtual {v2, v7, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->N:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 379
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    .line 382
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v5, v4

    div-float/2addr v5, v9

    sub-float/2addr v3, v5

    mul-float/2addr v3, v1

    int-to-float v1, v4

    div-float/2addr v3, v1

    sub-float v1, v2, v3

    move v11, v1

    move v12, v11

    move v10, v2

    move v1, v10

    move v2, v12

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    .line 388
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v5, v4

    div-float/2addr v5, v9

    sub-float/2addr v3, v5

    mul-float/2addr v3, v1

    int-to-float v1, v4

    div-float/2addr v3, v1

    add-float v1, v2, v3

    move v10, v1

    move v12, v10

    move v11, v2

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 396
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    sub-float v3, v2, v3

    .line 398
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v1, v4

    div-float/2addr v5, v1

    sub-float v1, v2, v5

    move v11, v2

    move v10, v3

    move v12, v10

    goto :goto_0

    .line 401
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 402
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    add-float/2addr v3, v2

    .line 404
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v1, v4

    div-float/2addr v5, v1

    add-float v1, v2, v5

    move v10, v2

    move v11, v3

    move v12, v11

    move v2, v1

    move v1, v10

    .line 409
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    sget v5, Lcom/coui/appcompat/widget/seekbar/a;->c:I

    invoke-static {p0, v4, v5}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->v:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 411
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->v:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 412
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    if-nez v1, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    mul-float/2addr v2, v9

    sub-float v2, v8, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 415
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 416
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    if-ne v1, v2, :cond_4

    .line 417
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    mul-float/2addr v3, v9

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 418
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    mul-float/2addr v3, v9

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 422
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 423
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    if-ne v1, v2, :cond_4

    .line 424
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    mul-float/2addr v2, v9

    sub-float v2, v8, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 425
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 430
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/seekbar/a;->b:I

    invoke-static {p0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v10, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 433
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    if-nez v1, :cond_6

    .line 434
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->p:F

    sub-float/2addr v8, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    add-float/2addr v8, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 438
    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    sub-float v2, v10, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    add-float/2addr v10, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 442
    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 443
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    sub-float v2, v10, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    add-float/2addr v10, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 444
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 446
    :cond_7
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    sub-float v2, v11, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->s:F

    add-float/2addr v11, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->u:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->E:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 451
    :goto_2
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    int-to-float v2, v1

    sub-float v2, v12, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    .line 453
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    sub-float v4, v12, v3

    add-float/2addr v12, v3

    .line 456
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->O:F

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->l:F

    mul-float/2addr v5, v9

    mul-float/2addr v5, v9

    mul-float/2addr v5, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    sub-float/2addr v2, v5

    sub-float/2addr v4, v5

    goto :goto_3

    :cond_8
    sub-float/2addr v1, v5

    sub-float/2addr v12, v5

    :goto_3
    move v9, v4

    move v4, v1

    .line 464
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->L:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->M:I

    add-int/2addr v1, v5

    int-to-float v6, v1

    int-to-float v7, v5

    int-to-float v8, v5

    iget-object v10, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 468
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/seekbar/a;->b:I

    invoke-static {p0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    sub-float v2, v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->J:F

    add-float v4, v1, v6

    iget-object v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->x:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v9

    move v3, v12

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 344
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 346
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 347
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    :goto_0
    move p2, v1

    .line 353
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 628
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 476
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 479
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 490
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->K:I

    mul-int/2addr v4, v3

    sub-int/2addr v0, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 491
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 492
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-nez v0, :cond_2

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    goto/16 :goto_0

    .line 497
    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    if-eqz v0, :cond_5

    .line 498
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->A:I

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 503
    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 500
    :cond_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 509
    :cond_5
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 512
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 513
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_a

    .line 514
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b(Landroid/view/MotionEvent;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(Landroid/view/MotionEvent;)V

    .line 516
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g()V

    .line 517
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    goto :goto_0

    .line 523
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->Q:Lcom/a/a/f;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 524
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    if-eqz v0, :cond_8

    .line 525
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->b()V

    .line 526
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setPressed(Z)V

    .line 527
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->h()V

    goto :goto_0

    .line 529
    :cond_8
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/a;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(F)V

    goto :goto_0

    .line 481
    :cond_9
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->i:Z

    .line 482
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->j:Z

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->c:F

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->w:F

    .line 485
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    .line 486
    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->S:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_0
    return v2
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 338
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIncrement(I)V
    .locals 0

    .line 1065
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->h:I

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1051
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    if-eq p1, v0, :cond_1

    .line 1052
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    .line 1053
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    if-le v0, p1, :cond_1

    .line 1054
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e:I

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    return-void
.end method

.method public setMoveType(I)V
    .locals 0

    .line 1112
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->A:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->d:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(IZ)V

    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1171
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    .line 1172
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->aa:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 1084
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->g:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->f:I

    .line 1085
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSecondaryProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1183
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->n:Landroid/content/res/ColorStateList;

    .line 1184
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1195
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->o:Landroid/content/res/ColorStateList;

    .line 1196
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .locals 0

    .line 1120
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->T:Z

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1159
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    .line 1160
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbShadowColor(I)V
    .locals 1

    .line 1206
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->L:I

    if-eq v0, p1, :cond_0

    .line 1207
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->L:I

    .line 1208
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method
