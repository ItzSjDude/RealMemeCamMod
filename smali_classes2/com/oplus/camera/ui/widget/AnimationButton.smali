.class public Lcom/oplus/camera/ui/widget/AnimationButton;
.super Landroidx/appcompat/widget/f;
.source "AnimationButton.java"


# static fields
.field private static a:Ljava/lang/String; = "AnimationButton"


# instance fields
.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Rect;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:[F

.field private u:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04009d

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->b:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    .line 57
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->g:Landroid/graphics/Paint;

    .line 58
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->h:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 59
    iput-boolean v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    .line 60
    iput-boolean v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    .line 61
    iput v4, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->k:I

    .line 62
    iput v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->l:I

    .line 63
    iput v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->m:I

    .line 64
    iput v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->n:I

    const/high16 v5, 0x41a80000    # 21.0f

    .line 65
    iput v5, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->o:F

    .line 66
    iput v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->p:F

    .line 67
    iput v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->q:F

    .line 68
    iput v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->r:F

    .line 69
    iput v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->s:F

    const/4 v2, 0x3

    .line 70
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->t:[F

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->u:Landroid/content/Context;

    .line 83
    iput v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->q:F

    .line 84
    iput v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->r:F

    .line 85
    iput v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->s:F

    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->n:I

    goto :goto_0

    .line 90
    :cond_0
    iput p3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->n:I

    .line 93
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->u:Landroid/content/Context;

    .line 94
    invoke-static {p0, v3}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 95
    sget-object v0, Lcom/oplus/camera/R$styleable;->AnimationButton:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    .line 97
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->k:I

    .line 99
    iget-boolean p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    const/4 p3, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    const v0, 0x3f4ccccd    # 0.8f

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->p:F

    const/4 p2, 0x5

    const/high16 v0, 0x40e00000    # 7.0f

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->o:F

    .line 102
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->m:I

    .line 103
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->l:I

    .line 104
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->a()V

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-static {p0, p3}, Lcom/coui/appcompat/a/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/AnimationButton;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->r:F

    return p1
.end method

.method private a(I)I
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->m:I

    return p0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->t:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/d;->a(I[F)V

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->t:[F

    const/4 v1, 0x2

    .line 243
    aget v2, v0, v1

    iget v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->q:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 244
    invoke-static {v0}, Landroidx/core/graphics/d;->a([F)I

    move-result v0

    .line 245
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 246
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 247
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    iget p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->s:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 250
    invoke-static {p0, v1, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 2

    .line 112
    iget v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->k:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 113
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/AnimationButton;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 10

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    .line 160
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->b(Z)V

    .line 162
    iget-boolean v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    if-nez v1, :cond_7

    const/4 v1, 0x2

    .line 163
    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->q:F

    :goto_0
    aput v4, v2, v0

    if-eqz p1, :cond_1

    .line 164
    iget v4, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->p:F

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "brightnessHolder"

    .line 165
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 167
    new-array v4, v1, [F

    if-eqz p1, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->r:F

    :goto_2
    aput v6, v4, v0

    if-eqz p1, :cond_3

    const v6, 0x3f6b851f    # 0.92f

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    aput v6, v4, v5

    const-string v6, "scaleHolder"

    .line 169
    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 171
    new-array v6, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v0

    aput-object v4, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    .line 173
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    move-wide v8, v6

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x154

    :goto_4
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/widget/AnimationButton$1;

    invoke-direct {v4, p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton$1;-><init>(Lcom/oplus/camera/ui/widget/AnimationButton;Z)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    new-array v1, v1, [F

    if-eqz p1, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->s:F

    :goto_5
    aput v2, v1, v0

    if-eqz p1, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    :cond_6
    aput v3, v1, v5

    const-string p1, "alphaHolder"

    .line 195
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 196
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/widget/AnimationButton$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/widget/AnimationButton$2;-><init>(Lcom/oplus/camera/ui/widget/AnimationButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/AnimationButton;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/AnimationButton;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->r:F

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/AnimationButton;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->q:F

    return p1
.end method

.method private b(Z)V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    mul-float/2addr v0, v3

    if-nez p1, :cond_0

    .line 218
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    .line 219
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    .line 221
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    mul-float/2addr v0, v3

    if-nez p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    .line 229
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-float p1, v3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    .line 231
    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->i:Z

    if-nez p1, :cond_3

    .line 232
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/AnimationButton;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setScale(F)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/AnimationButton;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->s:F

    return p1
.end method

.method private setScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setScaleX(F)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/AnimationButton;->setScaleY(F)V

    .line 212
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 125
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x1

    .line 129
    iget v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->k:I

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->l:I

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/widget/AnimationButton;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->h:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->o:F

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 138
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 118
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/f;->onLayout(ZIIII)V

    .line 120
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 121
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/AnimationButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/widget/AnimationButton;->a(Z)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/widget/AnimationButton;->a(Z)V

    .line 155
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->j:Z

    return-void
.end method

.method public setAnimType(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->k:I

    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->m:I

    return-void
.end method

.method public setDrawableColor(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->l:I

    return-void
.end method

.method public setDrawableRadius(I)V
    .locals 0

    int-to-float p1, p1

    .line 271
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->o:F

    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 0

    int-to-float p1, p1

    .line 275
    iput p1, p0, Lcom/oplus/camera/ui/widget/AnimationButton;->p:F

    return-void
.end method
