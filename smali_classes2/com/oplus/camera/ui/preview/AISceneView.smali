.class public Lcom/oplus/camera/ui/preview/AISceneView;
.super Landroid/widget/TextView;
.source "AISceneView.java"


# instance fields
.field private a:Landroid/graphics/SweepGradient;

.field private b:Landroid/view/animation/PathInterpolator;

.field private c:Landroid/view/animation/PathInterpolator;

.field private d:Landroid/view/animation/PathInterpolator;

.field private e:Landroid/view/animation/PathInterpolator;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/animation/AnimatorSet;

.field private h:[I

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Paint;

.field private o:I

.field private p:I

.field private q:Landroid/content/Context;

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AISceneView;->a:Landroid/graphics/SweepGradient;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->b:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->c:Landroid/view/animation/PathInterpolator;

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e8a3d71    # 0.27f

    const v6, 0x3d4ccccd    # 0.05f

    const v7, 0x3d75c28f    # 0.06f

    invoke-direct {v0, v5, v6, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->d:Landroid/view/animation/PathInterpolator;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->e:Landroid/view/animation/PathInterpolator;

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    .line 53
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AISceneView;->h:[I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->i:I

    const/16 v1, 0xff

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->j:I

    .line 56
    iput v4, p0, Lcom/oplus/camera/ui/preview/AISceneView;->k:F

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->l:Landroid/graphics/RectF;

    .line 58
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->m:Landroid/graphics/Matrix;

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->o:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->p:I

    .line 62
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AISceneView;->q:Landroid/content/Context;

    const/high16 p2, 0x40000000    # 2.0f

    .line 63
    iput p2, p0, Lcom/oplus/camera/ui/preview/AISceneView;->r:F

    .line 67
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->q:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/AISceneView;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->k:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/AISceneView;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->j:I

    return p1
.end method

.method private c()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070964

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->o:I

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07095a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->p:I

    .line 75
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->h:[I

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->q:Landroid/content/Context;

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->i:I

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/AISceneView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->o:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    const/4 v0, 0x2

    .line 94
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/AISceneView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    new-instance v3, Lcom/oplus/camera/ui/preview/AISceneView$1;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/AISceneView$1;-><init>(Lcom/oplus/camera/ui/preview/AISceneView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    new-instance v3, Lcom/oplus/camera/ui/preview/AISceneView$2;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/AISceneView$2;-><init>(Lcom/oplus/camera/ui/preview/AISceneView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0x12c

    .line 115
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 118
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    new-instance v3, Lcom/oplus/camera/ui/preview/AISceneView$3;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/AISceneView$3;-><init>(Lcom/oplus/camera/ui/preview/AISceneView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x409

    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x3bf90000    # -540.0f
        0x0
    .end array-data
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->g:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->a:Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->m:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->k:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->getMeasuredWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->getMeasuredHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->a:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->l:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/preview/AISceneView;->p:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 86
    new-instance p3, Landroid/graphics/SweepGradient;

    int-to-float p4, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    int-to-float v1, p2

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->h:[I

    const/4 v2, 0x0

    invoke-direct {p3, p4, v1, v0, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object p3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->a:Landroid/graphics/SweepGradient;

    .line 87
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/AISceneView;->l:Landroid/graphics/RectF;

    iget p4, p0, Lcom/oplus/camera/ui/preview/AISceneView;->o:I

    int-to-float v0, p4

    iget p0, p0, Lcom/oplus/camera/ui/preview/AISceneView;->r:F

    sub-float/2addr v0, p0

    iput v0, p3, Landroid/graphics/RectF;->left:F

    int-to-float v0, p4

    sub-float/2addr v0, p0

    .line 88
    iput v0, p3, Landroid/graphics/RectF;->top:F

    sub-int/2addr p1, p4

    int-to-float p1, p1

    add-float/2addr p1, p0

    .line 89
    iput p1, p3, Landroid/graphics/RectF;->right:F

    sub-int/2addr p2, p4

    int-to-float p1, p2

    add-float/2addr p1, p0

    .line 90
    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
