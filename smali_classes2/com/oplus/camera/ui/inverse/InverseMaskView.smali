.class public Lcom/oplus/camera/ui/inverse/InverseMaskView;
.super Landroid/view/View;
.source "InverseMaskView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/view/animation/PathInterpolator;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Lcom/oplus/camera/ui/inverse/b;

.field private t:Z

.field private u:Landroid/animation/ValueAnimator;

.field private v:Landroid/animation/ValueAnimator;

.field private w:Landroid/animation/ValueAnimator;

.field private x:Landroid/animation/ValueAnimator;

.field private y:Landroid/animation/ValueAnimator;

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    .line 50
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 52
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->i:I

    .line 53
    iput v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    .line 57
    iput v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    .line 58
    iput v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 59
    iput v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    .line 60
    iput v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->q:F

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->r:Z

    .line 62
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    .line 65
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    .line 66
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    .line 67
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    .line 68
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    .line 69
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    .line 70
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    .line 71
    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    .line 44
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v2, v0, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    .line 47
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    .line 48
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    .line 49
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    .line 50
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    .line 51
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 52
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->i:I

    .line 53
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    .line 54
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    .line 55
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    .line 57
    iput v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    .line 58
    iput v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    iput v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    .line 60
    iput v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->q:F

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->r:Z

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    .line 63
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    .line 80
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    .line 44
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v1, p3, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    .line 47
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    .line 48
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    .line 49
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    .line 50
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    .line 51
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 52
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->i:I

    .line 53
    iput p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    .line 54
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    .line 55
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    const/4 p3, 0x0

    .line 56
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    .line 57
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    .line 58
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->q:F

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->r:Z

    .line 62
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    .line 63
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    .line 65
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    .line 66
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    .line 67
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    .line 68
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    .line 69
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    .line 70
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    .line 71
    iput-object p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    .line 85
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(IZIF)Landroid/graphics/PointF;
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 437
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_0
    const/4 v1, 0x3

    const/high16 v2, 0x40800000    # 4.0f

    if-ne p1, v1, :cond_1

    .line 439
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-direct {p1, p0, p4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_1
    const/4 p4, 0x4

    if-ne p1, p4, :cond_5

    if-eqz p2, :cond_2

    const/16 p1, 0x5a

    if-eq p1, p3, :cond_3

    :cond_2
    if-nez p2, :cond_4

    const/16 p1, 0x10e

    if-ne p1, p3, :cond_4

    .line 443
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 445
    :cond_4
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result p2

    mul-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 448
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    .line 449
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    int-to-float p2, p2

    iget p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    mul-float/2addr p2, p0

    .line 451
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p1

    add-float/2addr p3, p2

    invoke-direct {p0, p1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 392
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 393
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    .line 394
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 395
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070690

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070693

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07068f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 150
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    const/4 v6, -0x1

    const/high16 v7, 0x434c0000    # 204.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/e;->getInverseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 158
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    mul-float/2addr v0, v1

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_0
    const/4 v9, 0x3

    const/high16 v10, 0x40800000    # 4.0f

    if-ne v0, v9, :cond_1

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/e;->getInverseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 168
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    mul-float/2addr v0, v1

    .line 169
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x4

    const/16 v2, 0xcc

    if-ne v0, v1, :cond_5

    .line 172
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v3, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/inverse/e;->getInverseColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 176
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v8, v0

    .line 177
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    .line 180
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    int-to-float v2, v0

    .line 181
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    .line 180
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 185
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    mul-float/2addr v0, v1

    .line 187
    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x5a

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    if-eq v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    if-nez v1, :cond_4

    const/16 v1, 0x10e

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    if-ne v1, v2, :cond_4

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v9

    int-to-float v1, v1

    div-float/2addr v1, v10

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v2

    mul-int/2addr v2, v9

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 196
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v9

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/e;->getInverseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v9

    .line 201
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    int-to-float v2, v0

    .line 205
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    .line 204
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    div-float/2addr v10, v8

    .line 209
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    mul-float/2addr v0, v10

    .line 210
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v9

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    mul-float/2addr v1, v2

    .line 212
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v10

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v10

    add-float/2addr v3, v1

    invoke-virtual {v2, v10, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 216
    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/inverse/b;)V
    .locals 10

    .line 356
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 364
    :cond_1
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    .line 365
    iget v0, p1, Lcom/oplus/camera/ui/inverse/b;->c:I

    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->i:I

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    .line 367
    iget v1, p1, Lcom/oplus/camera/ui/inverse/b;->a:I

    iget-boolean v2, p1, Lcom/oplus/camera/ui/inverse/b;->g:Z

    iget v3, p1, Lcom/oplus/camera/ui/inverse/b;->b:I

    iget v4, p1, Lcom/oplus/camera/ui/inverse/b;->d:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(IZIF)Landroid/graphics/PointF;

    move-result-object v1

    .line 368
    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    .line 369
    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 370
    iget-object v4, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 372
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setStatus(I)V

    .line 374
    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v5, :cond_2

    .line 375
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    .line 377
    new-array v5, v7, [F

    aput v3, v5, v6

    iget v3, v1, Landroid/graphics/PointF;->x:F

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v8, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    .line 378
    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 379
    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$ARqhe98tkIETS_f5E8_2eRxV7Fk;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$ARqhe98tkIETS_f5E8_2eRxV7Fk;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    new-array v3, v7, [F

    aput v4, v3, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-wide v3, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    .line 384
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$yPv0dS_8ViUbUBd4kzyP2-iUM3I;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$yPv0dS_8ViUbUBd4kzyP2-iUM3I;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    new-array v1, v7, [F

    aput v2, v1, v6

    iget v2, p1, Lcom/oplus/camera/ui/inverse/b;->c:I

    int-to-float v2, v2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$L2mf3eWdcOfMgSpi1jXxGgmKM-8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$L2mf3eWdcOfMgSpi1jXxGgmKM-8;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v3, v6

    iget v4, v1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 417
    iget-object v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v3, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 418
    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    new-array v2, v7, [F

    iget v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    int-to-float v3, v3

    aput v3, v2, v6

    iget v3, p1, Lcom/oplus/camera/ui/inverse/b;->c:I

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->y:Landroid/animation/ValueAnimator;

    iget-wide v1, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->z:Landroid/animation/ValueAnimator;

    iget-wide v1, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    iget-wide v1, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/oplus/camera/ui/inverse/b;->f:J

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/oplus/camera/ui/inverse/b;->e:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic a(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 256
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    .line 258
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 259
    :cond_1
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    .line 260
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->s:Lcom/oplus/camera/ui/inverse/b;

    return-object p0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/e;->getInverseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    const/high16 v2, 0x434c0000    # 204.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    iget p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->j:F

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    return p1
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    return p1
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    .line 313
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    return-void
.end method

.method private synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->n:F

    .line 295
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setStatus(I)V

    return-void
.end method

.method public static getPositionRatioSquare()F
    .locals 3

    .line 456
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 457
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic lambda$-cEh4skNqqMiotN0_t5_iatUqkY(Lcom/oplus/camera/ui/inverse/InverseMaskView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$ARqhe98tkIETS_f5E8_2eRxV7Fk(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$HbRBvKGdN9wI1nTI9DRRaqzf2yc(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$L2mf3eWdcOfMgSpi1jXxGgmKM-8(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$uIQM2DV3u9uuMvkpPWWqOdKk_Is(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$yPv0dS_8ViUbUBd4kzyP2-iUM3I(Lcom/oplus/camera/ui/inverse/InverseMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private setStatus(I)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InverseMaskView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v0, 0x3

    .line 272
    new-array v0, v0, [Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 273
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x53

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    .line 274
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x41

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    .line 275
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0xb9

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 277
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0100a1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    move v2, v3

    .line 279
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 280
    aget-object v5, v0, v2

    .line 281
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    array-length v6, v0

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    .line 283
    :goto_1
    new-instance v7, Lcom/oplus/camera/ui/inverse/InverseMaskView$2;

    invoke-direct {v7, p0, v6, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView$2;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;I[Landroid/animation/ValueAnimator;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    new-instance v6, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$uIQM2DV3u9uuMvkpPWWqOdKk_Is;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$uIQM2DV3u9uuMvkpPWWqOdKk_Is;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    .line 300
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(FZ)V
    .locals 4

    .line 304
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 305
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->q:F

    if-eqz p2, :cond_2

    .line 308
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_0

    .line 309
    new-array p2, v2, [F

    iget v2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    aput v2, p2, v1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0100a1

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$HbRBvKGdN9wI1nTI9DRRaqzf2yc;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$HbRBvKGdN9wI1nTI9DRRaqzf2yc;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 317
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 320
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    aput v3, v2, v1

    aput p1, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 323
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 325
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->p:F

    .line 326
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(IZI)V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    .line 337
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->g:Z

    .line 338
    iput p3, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->f:I

    const/4 p1, 0x0

    .line 339
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->setStatus(I)V

    .line 340
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 240
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->r:Z

    if-eqz p2, :cond_2

    .line 243
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 244
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p2, 0x2

    if-eqz p1, :cond_1

    .line 248
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 250
    :cond_1
    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    .line 253
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$-cEh4skNqqMiotN0_t5_iatUqkY;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/-$$Lambda$InverseMaskView$-cEh4skNqqMiotN0_t5_iatUqkY;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 266
    :goto_1
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    .line 267
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    if-eqz v0, :cond_2

    .line 133
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 1

    .line 120
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    .line 121
    new-instance v0, Lcom/oplus/camera/ui/inverse/InverseMaskView$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView$1;-><init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMaskAlpha(F)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->r:Z

    if-eqz v0, :cond_0

    .line 234
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->o:F

    .line 235
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaskToLayoutMode(Lcom/oplus/camera/ui/inverse/b;)V
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaskToLayoutMode, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbInverseColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InverseMaskView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d:Z

    if-nez v0, :cond_0

    .line 347
    iget v0, p1, Lcom/oplus/camera/ui/inverse/b;->a:I

    iget-boolean v1, p1, Lcom/oplus/camera/ui/inverse/b;->g:Z

    iget p1, p1, Lcom/oplus/camera/ui/inverse/b;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(IZI)V

    return-void

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Lcom/oplus/camera/ui/inverse/b;)V

    return-void
.end method

.method public setRadius(I)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InverseMaskView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 103
    iget v1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e:I

    if-ne v0, v1, :cond_1

    .line 104
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->k:I

    goto :goto_0

    .line 106
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->h:I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->postInvalidate()V

    return-void
.end method

.method public setSplitScreenYOffset(F)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSplitScreenYOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InverseMaskView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p1

    .line 115
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView;->l:I

    return-void
.end method
