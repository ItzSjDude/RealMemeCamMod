.class public Lcom/oplus/camera/ui/preview/ac;
.super Landroid/widget/RelativeLayout;
.source "TrackFocusView.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;
.implements Lcom/oplus/camera/ui/preview/m;


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/lang/Runnable;

.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Matrix;

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:I

.field private t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

.field private u:Landroid/animation/ObjectAnimator;

.field private v:Landroid/animation/ObjectAnimator;

.field private w:Landroid/animation/TimeInterpolator;

.field private x:Lcom/oplus/camera/ui/preview/s;

.field private volatile y:I

.field private volatile z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->e:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/oplus/camera/ui/preview/ac;->i:F

    .line 44
    iput v1, p0, Lcom/oplus/camera/ui/preview/ac;->j:F

    const v1, 0x3f0ccccd    # 0.55f

    .line 45
    iput v1, p0, Lcom/oplus/camera/ui/preview/ac;->k:F

    .line 46
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->l:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/ac;->m:Z

    .line 48
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->n:Z

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->o:I

    .line 50
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->p:I

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->q:I

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/oplus/camera/ui/preview/ac;->r:F

    .line 53
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->s:I

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    .line 57
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->w:Landroid/animation/TimeInterpolator;

    .line 58
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->x:Lcom/oplus/camera/ui/preview/s;

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/ac;->z:J

    .line 61
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->A:Z

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->B:I

    .line 65
    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$40H0SWpkIUCK3KXF3oihDw9ET3M;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$40H0SWpkIUCK3KXF3oihDw9ET3M;-><init>(Lcom/oplus/camera/ui/preview/ac;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->C:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/ac;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->r:F

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c5c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setWillNotDraw(Z)V

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0177

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09015a

    .line 94
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setOnSeekbarChangeListener(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070453

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->B:I

    .line 97
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070452

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->q:I

    .line 98
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->k()V

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fadeInOutSeekbar, fadeIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackFocusView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    sget-object v6, Lcom/oplus/camera/ui/preview/ac;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    .line 181
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->w:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "fadeInOutSeekbar, mSeekbarFadeInAnimator is running."

    .line 186
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    new-array v1, v5, [F

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getAlpha()F

    move-result v2

    aput v2, v1, v4

    iget v2, p0, Lcom/oplus/camera/ui/preview/ac;->k:F

    aput v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 193
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    sget-object v6, Lcom/oplus/camera/ui/preview/ac;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    .line 202
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->w:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oplus/camera/ui/preview/ac$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/preview/ac$1;-><init>(Lcom/oplus/camera/ui/preview/ac;)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "fadeInOutSeekbar, mSeekbarFadeOutAnimator is running."

    .line 213
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    new-array v1, v5, [F

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getAlpha()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 219
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    nop

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

.method private b(Landroid/graphics/RectF;)V
    .locals 3

    .line 327
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 330
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 333
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 335
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 336
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 339
    :cond_3
    :goto_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 341
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 342
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 345
    :cond_5
    :goto_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 346
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getBottom()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 347
    :cond_6
    iget p0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_7

    .line 348
    iput v1, p1, Landroid/graphics/RectF;->top:F

    :cond_7
    :goto_3
    return-void
.end method

.method private b([I)V
    .locals 6

    .line 224
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->n:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 225
    aget v0, p1, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/ac;->o:I

    sub-int/2addr v0, v3

    .line 226
    aget v1, p1, v1

    sub-int/2addr v1, v3

    .line 227
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    aget v5, p1, v4

    int-to-float v5, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    int-to-float v0, v0

    aget p1, p1, v2

    int-to-float p1, p1

    .line 228
    iget p0, p0, Lcom/oplus/camera/ui/preview/ac;->p:I

    if-ge v1, p0, :cond_1

    move p0, v1

    :cond_1
    int-to-float p0, p0

    .line 227
    invoke-virtual {v3, v5, v0, p1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 230
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    aget v0, p1, v4

    int-to-float v0, v0

    aget v3, p1, v3

    int-to-float v3, v3

    aget v2, p1, v2

    int-to-float v2, v2

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v3, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void
.end method

.method private k()V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->B:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xf

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->s:I

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eqz v1, :cond_1

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_1

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 408
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->s:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(IZ)V

    .line 418
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->requestLayout()V

    return-void
.end method

.method private synthetic l()V
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->g()V

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$40H0SWpkIUCK3KXF3oihDw9ET3M(Lcom/oplus/camera/ui/preview/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->n()V

    return-void
.end method

.method public static synthetic lambda$Hxdc_daVzghpBU2wzaYssQCP7J8(Lcom/oplus/camera/ui/preview/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->m()V

    return-void
.end method

.method public static synthetic lambda$yPty0RqQsX0Vzw0Tm9AtT3dj6b8(Lcom/oplus/camera/ui/preview/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->l()V

    return-void
.end method

.method private synthetic m()V
    .locals 1

    const/16 v0, 0x8

    .line 242
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setVisibility(I)V

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 455
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setAlpha(F)V

    .line 457
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->x:Lcom/oplus/camera/ui/preview/s;

    if-eqz p0, :cond_0

    .line 458
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/s;->H()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->x:Lcom/oplus/camera/ui/preview/s;

    if-eqz p0, :cond_0

    .line 444
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/s;->a(F)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->s:I

    .line 388
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->k()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTrackRegionParams, cropRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", trackHalAlgoSize: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TrackFocusView"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    if-eqz p4, :cond_1

    .line 120
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->j:F

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->j:F

    .line 125
    :goto_0
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    .line 125
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide p3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double p1, p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ac;->n:Z

    .line 128
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->o:I

    .line 129
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->p:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ac;->n:Z

    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "TrackFocusView"

    const-string v1, "initDrawRect"

    .line 286
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 289
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->a(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->postInvalidate()V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a([I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ac;->m:Z

    return-void

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->l:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->b([I)V

    const/4 p1, 0x2

    .line 151
    iget v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    const-wide/16 v2, 0x0

    .line 154
    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/ac;->z:J

    .line 155
    iput v1, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    .line 159
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    if-eq v1, p1, :cond_3

    return-void

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 165
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->post(Ljava/lang/Runnable;)Z

    .line 167
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->postInvalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "TrackFocusView"

    const-string v1, "pause"

    .line 235
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 238
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$Hxdc_daVzghpBU2wzaYssQCP7J8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$Hxdc_daVzghpBU2wzaYssQCP7J8;-><init>(Lcom/oplus/camera/ui/preview/ac;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->l:Z

    .line 248
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->m:Z

    .line 249
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->h()V

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "TrackFocusView"

    const-string v1, "resume"

    .line 255
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setVisibility(I)V

    const v1, 0x3f0ccccd    # 0.55f

    .line 258
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/ac;->setAlpha(F)V

    .line 259
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/ac;->k()V

    .line 260
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setToggleViewEnable(Z)V

    .line 261
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b(Z)V

    .line 262
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->x:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/s;->I()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/ac;->setLockState(Z)V

    .line 263
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/ac;->l:Z

    .line 265
    iput v2, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Z
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public f()Z
    .locals 4

    .line 277
    iget v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/ac;->z:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 2

    const-string v0, "TrackFocusView"

    const-string v1, "cancelFadeInOutAnimation"

    .line 294
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->u:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->v:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public getRearMirrorEnable()Z
    .locals 0

    .line 474
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/ac;->A:Z

    return p0
.end method

.method public h()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 372
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->g()V

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->invalidate()V

    goto :goto_0

    .line 377
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$yPty0RqQsX0Vzw0Tm9AtT3dj6b8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$ac$yPty0RqQsX0Vzw0Tm9AtT3dj6b8;-><init>(Lcom/oplus/camera/ui/preview/ac;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public i()Z
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->isShown()Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 2

    const-string v0, "TrackFocusView"

    const-string v1, "track, object searching."

    .line 463
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 465
    iput v0, p0, Lcom/oplus/camera/ui/preview/ac;->y:I

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/ac;->z:J

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/ac;->A:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->j:F

    iget v2, p0, Lcom/oplus/camera/ui/preview/ac;->i:F

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/ac;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 315
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/ac;->q:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/oplus/camera/ui/preview/ac;->q:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ac;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->b(Landroid/graphics/RectF;)V

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/preview/ac;->r:F

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha, alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackFocusView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz v0, :cond_0

    .line 430
    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->k:F

    .line 431
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->h:I

    return-void
.end method

.method public setFocusManager(Lcom/oplus/camera/ui/preview/s;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ac;->x:Lcom/oplus/camera/ui/preview/s;

    return-void
.end method

.method public setLockState(Z)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setLockedState(Z)V

    return-void
.end method

.method public setMoveDistance(F)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ac;->t:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setMoveDistance(F)V

    return-void
.end method

.method public setRearMirrorEnable(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ac;->A:Z

    return-void
.end method

.method public setZoomValue(F)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/oplus/camera/ui/preview/ac;->i:F

    return-void
.end method
