.class public Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;
.super Landroid/widget/TextView;
.source "TabContainerTextView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private final a:Landroid/view/animation/PathInterpolator;

.field private final b:Landroid/animation/ArgbEvaluator;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Landroid/animation/Animator;

.field private h:Landroid/animation/Animator;

.field private i:Landroid/content/res/ColorStateList;

.field private j:Landroid/content/res/ColorStateList;

.field private k:I

.field private l:[I

.field private m:[I

.field private n:Landroid/graphics/drawable/GradientDrawable;

.field private o:Z

.field private p:F

.field private q:F

.field private r:Landroid/view/animation/Interpolator;

.field private s:Z

.field private t:F

.field private u:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ea8f5c3    # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a:Landroid/view/animation/PathInterpolator;

    .line 37
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b:Landroid/animation/ArgbEvaluator;

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->c:Z

    .line 40
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->d:Z

    .line 41
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->e:I

    .line 42
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->f:Z

    const/4 p3, 0x0

    .line 44
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    .line 45
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    .line 47
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    .line 48
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->j:Landroid/content/res/ColorStateList;

    .line 49
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->k:I

    .line 51
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->l:[I

    .line 52
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->m:[I

    .line 54
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->n:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->o:Z

    .line 137
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->t:F

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f060439

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    const v0, 0x7f060437

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->j:Landroid/content/res/ColorStateList;

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0803e9

    .line 144
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->k:I

    .line 145
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->k:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setBackgroundResource(I)V

    .line 146
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 148
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->p:F

    .line 149
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->t:F

    .line 151
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 152
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->q:F

    .line 155
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->r:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->s:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b(Z)V

    .line 88
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->s:Z

    if-nez v1, :cond_5

    const/4 v1, 0x2

    .line 89
    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->p:F

    :goto_0
    aput v4, v2, v0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->q:F

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "brightnessHolder"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 90
    new-array v4, v1, [F

    if-eqz p1, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->t:F

    :goto_2
    aput v6, v4, v0

    if-eqz p1, :cond_3

    const v3, 0x3f6b851f    # 0.92f

    :cond_3
    aput v3, v4, v5

    const-string v3, "scaleHolder"

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 91
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v0

    aput-object v3, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v1, 0xc8

    goto :goto_3

    :cond_4
    const-wide/16 v1, 0x154

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method private a()Z
    .locals 2

    .line 174
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->e:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->s:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->t:F

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->p:F

    return p1
.end method

.method private b()Landroid/animation/Animator;
    .locals 11

    const-string v0, "TabContainerTextView"

    const-string v1, "executeShowAnimator."

    .line 212
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->l:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->m:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 216
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->j:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->l:[I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 217
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->j:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->m:[I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 219
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 220
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v5, :cond_0

    .line 223
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b:Landroid/animation/ArgbEvaluator;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v9, v1

    invoke-static {v7, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 224
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0xc8

    .line 225
    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    new-instance v7, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$2;

    invoke-direct {v7, p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$2;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    invoke-virtual {v5}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 234
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b:Landroid/animation/ArgbEvaluator;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    new-instance v2, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$3;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 244
    new-instance v0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-object v6
.end method

.method private b(Z)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->s:Z

    .line 114
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->s:Z

    if-nez p1, :cond_1

    .line 115
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->n:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setScale(F)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->i:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->k:I

    return p0
.end method

.method private setScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 121
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setScaleX(F)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setScaleY(F)V

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 p1, p1, 0x2

    .line 160
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 162
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-array v0, v2, [I

    const v3, 0x7f040583

    aput v3, v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->mergeDrawableStates([I[I)[I

    .line 166
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->d:Z

    if-eqz p0, :cond_1

    .line 167
    new-array p0, v2, [I

    const v0, 0x7f040586

    aput v0, p0, v1

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 294
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->o:Z

    if-eqz v0, :cond_2

    .line 65
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

    .line 74
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Z)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->a(Z)V

    .line 81
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setHorizontalInverseAble(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->f:Z

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->c:Z

    .line 184
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->refreshDrawableState()V

    return-void
.end method

.method public setLightBgColor(Z)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundRes, isLight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabContainerTextView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 267
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->d:Z

    .line 268
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->refreshDrawableState()V

    .line 269
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->e:I

    .line 274
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->refreshDrawableState()V

    .line 275
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->isSelected()Z

    move-result v0

    .line 190
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->l:[I

    .line 191
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->m:[I

    if-eq v0, p1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->g:Landroid/animation/Animator;

    goto :goto_0

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->h:Landroid/animation/Animator;

    :cond_3
    :goto_0
    return-void
.end method
