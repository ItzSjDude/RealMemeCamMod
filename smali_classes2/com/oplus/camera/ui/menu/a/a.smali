.class public Lcom/oplus/camera/ui/menu/a/a;
.super Ljava/lang/Object;
.source "ArrangeAnim.java"


# instance fields
.field private A:[F

.field private B:[F

.field private C:Landroid/animation/ValueAnimator;

.field private D:Landroid/animation/ValueAnimator;

.field private E:Landroid/animation/ValueAnimator;

.field private F:Landroid/view/animation/PathInterpolator;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/RectF;

.field private J:Landroid/text/TextPaint;

.field private K:Lcom/oplus/camera/ui/menu/a/b;

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/graphics/Paint$FontMetrics;

.field private N:Lcom/oplus/camera/ui/menu/a/e;

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/animation/Animator$AnimatorListener;

.field private Q:Landroid/animation/Animator$AnimatorListener;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/a/b;Lcom/oplus/camera/ui/menu/a/e;Landroid/graphics/Paint;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->a:I

    const/16 v1, 0xff

    .line 33
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->c:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->d:I

    .line 36
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->e:I

    .line 37
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->f:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->h:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->i:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->l:F

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->m:F

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->n:F

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->o:F

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->p:F

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->q:F

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->r:F

    .line 50
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->s:F

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->t:F

    .line 52
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->u:F

    .line 53
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->v:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->w:F

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->x:F

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->L:Ljava/lang/Runnable;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->M:Landroid/graphics/Paint$FontMetrics;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->O:Landroid/graphics/Paint;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->P:Landroid/animation/Animator$AnimatorListener;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->Q:Landroid/animation/Animator$AnimatorListener;

    .line 77
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705fe

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->m:F

    const v1, 0x7f0705fb

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->l:F

    const v1, 0x7f070600

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    const v1, 0x7f0705e2

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->c:I

    const v1, 0x7f0705e5

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->d:I

    const v1, 0x7f070099

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->x:F

    const v1, 0x7f070097

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->r:F

    const v1, 0x7f070a3d

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->e:I

    const v1, 0x7f0705f3

    .line 86
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->a:I

    const v1, 0x7f0705fd

    .line 87
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    const v1, 0x7f0705ea

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->f:I

    const v1, 0x7f0705ee

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    const v1, 0x7f070605

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->s:F

    const v1, 0x7f070604

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->t:F

    const v1, 0x7f070606

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/menu/a/a;->u:F

    const v1, 0x7f070ca5

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/a;->v:F

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    .line 95
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    .line 96
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/a/a;->O:Landroid/graphics/Paint;

    .line 97
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/a;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)F
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->O:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private a(Z)V
    .locals 6

    const/4 v0, 0x2

    .line 402
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    .line 403
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$qZuUuNlIPT7gkDdz0FZ04Axqazw;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$qZuUuNlIPT7gkDdz0FZ04Axqazw;-><init>(Lcom/oplus/camera/ui/menu/a/a;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private synthetic a(ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 406
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editeAndMoreAnimation, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArrangeAnim"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int p2, p2, 0xff

    .line 410
    :goto_0
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    .line 411
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/a/e;->setArrangeEditAlpha(I)V

    return-void
.end method

.method private synthetic a([Ljava/lang/String;JILandroid/animation/ValueAnimator;)V
    .locals 7

    .line 235
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    const/4 v0, 0x0

    .line 239
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 240
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    long-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    mul-long/2addr v2, v4

    long-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aput v1, v2, v0

    add-int/lit8 v2, p4, -0x1

    sub-int/2addr v2, v0

    .line 245
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v6, v5, v2

    sub-float/2addr v4, v6

    mul-float/2addr v1, v4

    aget v4, v5, v2

    add-float/2addr v1, v4

    aput v1, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method private synthetic a([Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 382
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    const/4 v0, 0x0

    .line 384
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 386
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v5, v4, v0

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    aget v3, v4, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 390
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/a/a;->w:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    .line 392
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->h()V

    :cond_1
    return-void
.end method

.method private synthetic b([Ljava/lang/String;JILandroid/animation/ValueAnimator;)V
    .locals 7

    .line 153
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 158
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    long-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    mul-long/2addr v2, v4

    long-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aput v1, v2, v0

    add-int/lit8 v2, p4, -0x1

    sub-int/2addr v2, v0

    .line 163
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v6, v5, v2

    sub-float/2addr v4, v6

    mul-float/2addr v1, v4

    aget v4, v5, v2

    add-float/2addr v1, v4

    aput v1, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method private synthetic b([Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 301
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    const/4 v0, 0x0

    .line 303
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 305
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v5, v4, v0

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    aget v3, v4, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    return-void
.end method

.method private b(I)Z
    .locals 0

    const/16 p0, 0x14

    if-eq p0, p1, :cond_0

    const/16 p0, 0x15

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060095

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    .line 117
    :cond_1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private g()I
    .locals 1

    .line 553
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/a;->i:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    .line 554
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 556
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$iM5miySNsRqqxHlBsLaMHu0mppg(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/a;->b([Ljava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$lYvp54_FAVCID9OeHdochKKzlPg(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;JILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/menu/a/a;->b([Ljava/lang/String;JILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$o4MIPm6F4gpDj7FzwpzOCJkux8E(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/a;->a([Ljava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$qZuUuNlIPT7gkDdz0FZ04Axqazw(Lcom/oplus/camera/ui/menu/a/a;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/a;->a(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$ykuAW1plsTjOrMB_IVyFwlf6Arc(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;JILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/menu/a/a;->a([Ljava/lang/String;JILandroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method public a(FFLandroid/graphics/Paint$FontMetrics;ZI)V
    .locals 1

    .line 431
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/a;->p:F

    .line 432
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/a;->x:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/a;->o:F

    .line 433
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/a;->q:F

    sub-float/2addr p2, v0

    .line 434
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/a;->n:F

    .line 435
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/a/a;->M:Landroid/graphics/Paint$FontMetrics;

    .line 436
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 437
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 438
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, -0x1

    :goto_0
    invoke-virtual {p1, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 439
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 441
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    .line 442
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 443
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06004d

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 561
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/a;->i:I

    .line 563
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/a;->i:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const p1, 0x7f0705fd

    .line 571
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    goto :goto_0

    :cond_0
    const p1, 0x7f0704f7

    .line 567
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    :goto_0
    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/Paint;[Ljava/lang/String;IF)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v10, p2

    move-object/from16 v2, p3

    move-object/from16 v11, p4

    .line 458
    array-length v3, v11

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 459
    iget v3, v0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 460
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    iget v4, v0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 462
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v4, v4, v1

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/menu/a/b;->getBGWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41300000    # 11.0f

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 463
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v4, v4, v1

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/a/b;->getBGWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v4, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 464
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    iget v4, v0, Lcom/oplus/camera/ui/menu/a/a;->f:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 465
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->K:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result v4

    iget v5, v0, Lcom/oplus/camera/ui/menu/a/a;->f:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 467
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 468
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    int-to-float v3, v3

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 470
    aget-object v3, v11, v1

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v1, v4, v1

    iget v0, v0, Lcom/oplus/camera/ui/menu/a/a;->q:F

    invoke-virtual {p2, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 472
    :cond_0
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    const/4 v12, 0x0

    if-nez p5, :cond_1

    move v3, v12

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aget v3, v3, v1

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v3, v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p6, v4

    sub-float/2addr v3, v4

    iget v5, v0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    sub-float/2addr v3, v5

    iget v6, v0, Lcom/oplus/camera/ui/menu/a/a;->f:I

    int-to-float v7, v6

    aget v2, v2, v1

    add-float/2addr v2, v4

    add-float/2addr v5, v2

    int-to-float v2, v6

    iget v4, v0, Lcom/oplus/camera/ui/menu/a/a;->l:F

    add-float v6, v2, v4

    iget v8, v0, Lcom/oplus/camera/ui/menu/a/a;->m:F

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    move-object v2, p2

    move v4, v7

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-nez p5, :cond_2

    .line 478
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_2

    .line 480
    :cond_2
    aget-object v2, v11, v1

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/a/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 481
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 482
    :goto_1
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 485
    :goto_2
    aget-object v2, v11, v1

    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v1, v3, v1

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/a;->p:F

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {p2, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/Paint;[Ljava/lang/String;IFFIF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    .line 496
    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v8, v0, Lcom/oplus/camera/ui/menu/a/a;->h:I

    sub-int/2addr v6, v8

    if-ge v1, v6, :cond_0

    return-void

    .line 500
    :cond_0
    iget v6, v0, Lcom/oplus/camera/ui/menu/a/a;->l:F

    .line 501
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 504
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    aget-object v10, v4, v1

    invoke-virtual {v6, v10}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 505
    iget-object v10, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    aget-object v6, v6, v9

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 506
    iget v10, v0, Lcom/oplus/camera/ui/menu/a/a;->v:F

    move/from16 v17, v10

    move v10, v6

    move/from16 v6, v17

    goto :goto_0

    :cond_1
    move/from16 v10, p6

    .line 509
    :goto_0
    iget-object v11, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    .line 510
    iget v12, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v13, v11, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v13

    sub-float v12, v6, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 513
    iget-object v14, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    move/from16 v15, p8

    int-to-float v15, v15

    div-float/2addr v15, v13

    div-float/2addr v10, v13

    sub-float v16, v15, v10

    iget v9, v0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    sub-float v16, v16, v9

    iget v7, v0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    int-to-float v13, v7

    add-float v13, v16, v13

    iput v13, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v15, v10

    add-float/2addr v15, v9

    int-to-float v7, v7

    sub-float/2addr v15, v7

    .line 514
    iput v15, v14, Landroid/graphics/RectF;->right:F

    .line 515
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v7, v7, v1

    iget v9, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v7, v9

    iget v9, v11, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v7, v9

    sub-float/2addr v7, v12

    iget v9, v0, Lcom/oplus/camera/ui/menu/a/a;->g:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v7, v9

    iput v7, v14, Landroid/graphics/RectF;->top:F

    .line 516
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 518
    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_2

    .line 519
    iget v6, v0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 520
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    iget v7, v0, Lcom/oplus/camera/ui/menu/a/a;->b:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 521
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 522
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    int-to-float v6, v6

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/a/a;->H:Landroid/graphics/Paint;

    invoke-virtual {v2, v7, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 524
    aget-object v4, v4, v1

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v0, v0, v1

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 526
    :cond_2
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    if-nez p5, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aget v7, v7, v1

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v9

    mul-float/2addr v7, v6

    float-to-int v9, v7

    :goto_1
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 527
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->I:Landroid/graphics/RectF;

    iget v7, v0, Lcom/oplus/camera/ui/menu/a/a;->m:F

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/a/a;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-nez p5, :cond_4

    .line 530
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_3

    .line 532
    :cond_4
    aget-object v3, v4, v1

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/a/c;->c(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/menu/a/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xff

    goto :goto_2

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 533
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aget v7, v7, v1

    sub-float/2addr v3, v7

    float-to-double v9, v3

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v9, v11

    const-wide v11, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v9, v11

    const-wide v11, 0x406fe00000000000L    # 255.0

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 534
    :goto_2
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 537
    :goto_3
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v3, v3, v1

    move/from16 v7, p9

    neg-float v7, v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    .line 538
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    aget v7, v7, v1

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_6
    if-eqz v8, :cond_7

    .line 542
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/menu/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 543
    aget-object v4, v3, v4

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v6, v6, v1

    iget v7, v0, Lcom/oplus/camera/ui/menu/a/a;->v:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x1

    .line 544
    aget-object v3, v3, v4

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v1, v4, v1

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 546
    :cond_7
    aget-object v3, v4, v1

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v1, v4, v1

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/a/a;->J:Landroid/text/TextPaint;

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method public a(I[Ljava/lang/String;[F)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    .line 122
    array-length v5, v2

    int-to-long v0, v5

    const-wide/16 v3, 0x20

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    add-long/2addr v3, v0

    .line 124
    new-array v0, v5, [F

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    .line 125
    new-array v0, v5, [F

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    .line 126
    new-array v0, v5, [F

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    .line 127
    new-array v0, v5, [F

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    move/from16 v0, p1

    int-to-float v0, v0

    .line 128
    iget v1, v6, Lcom/oplus/camera/ui/menu/a/a;->j:F

    add-float/2addr v1, v0

    add-int/lit8 v7, v5, -0x2

    aget-object v8, v2, v7

    invoke-direct {v6, v8}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/a/a;->g()I

    move-result v8

    const/4 v10, 0x2

    div-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v1, v8

    float-to-int v1, v1

    .line 130
    iget v8, v6, Lcom/oplus/camera/ui/menu/a/a;->i:I

    const/4 v11, 0x4

    if-ne v11, v8, :cond_0

    .line 131
    iget v1, v6, Lcom/oplus/camera/ui/menu/a/a;->j:F

    add-float/2addr v0, v1

    aget-object v1, v2, v7

    invoke-direct {v6, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    div-int/2addr v1, v10

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :cond_0
    add-int/lit8 v0, v5, -0x1

    move v8, v0

    :goto_0
    if-ltz v8, :cond_3

    .line 135
    iget-object v11, v6, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v12, p3, v8

    aput v12, v11, v8

    .line 136
    iget-object v12, v6, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v13, v11, v8

    aput v13, v12, v8

    .line 137
    iget-object v12, v6, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/4 v13, 0x0

    aput v13, v12, v8

    if-ne v8, v0, :cond_1

    .line 140
    iget-object v12, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    int-to-float v13, v1

    aget v11, v11, v8

    add-float/2addr v13, v11

    iget v11, v6, Lcom/oplus/camera/ui/menu/a/a;->a:I

    int-to-float v11, v11

    add-float/2addr v13, v11

    aget-object v11, v2, v8

    invoke-direct {v6, v11}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v13, v11

    iget v11, v6, Lcom/oplus/camera/ui/menu/a/a;->j:F

    iget v14, v6, Lcom/oplus/camera/ui/menu/a/a;->k:F

    add-float/2addr v11, v14

    div-float/2addr v11, v9

    add-float/2addr v13, v11

    aput v13, v12, v8

    goto :goto_1

    :cond_1
    if-ne v8, v7, :cond_2

    .line 142
    iget-object v12, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    int-to-float v13, v1

    add-int/lit8 v14, v8, 0x1

    aget v11, v11, v14

    add-float/2addr v13, v11

    aput v13, v12, v8

    goto :goto_1

    .line 144
    :cond_2
    iget-object v11, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v12, v8, 0x1

    aget v13, v11, v12

    iget v14, v6, Lcom/oplus/camera/ui/menu/a/a;->j:F

    iget v15, v6, Lcom/oplus/camera/ui/menu/a/a;->k:F

    add-float/2addr v14, v15

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    aget-object v14, v2, v8

    .line 145
    invoke-direct {v6, v14}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v14

    aget-object v12, v2, v12

    invoke-direct {v6, v12}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v14, v12

    div-float/2addr v14, v9

    sub-float/2addr v13, v14

    aput v13, v11, v8

    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 149
    :cond_3
    new-array v0, v10, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    .line 150
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$lYvp54_FAVCID9OeHdochKKzlPg;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$lYvp54_FAVCID9OeHdochKKzlPg;-><init>(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;JI)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    iget-object v1, v6, Lcom/oplus/camera/ui/menu/a/a;->P:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 171
    invoke-direct {v6, v0}, Lcom/oplus/camera/ui/menu/a/a;->a(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->P:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->L:Ljava/lang/Runnable;

    return-void
.end method

.method public a([I[Ljava/lang/String;F)V
    .locals 12

    .line 257
    array-length v0, p2

    int-to-long v1, v0

    const-wide/16 v3, 0x20

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    .line 260
    new-array v3, v0, [I

    .line 261
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    .line 262
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    .line 263
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    .line 264
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/4 v4, 0x0

    .line 265
    aget v5, p1, v4

    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    add-float/2addr v7, v8

    aget v8, p1, v4

    aget-object v8, p2, v8

    invoke-direct {p0, v8}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v3, v5

    .line 267
    aget v5, p1, v4

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 268
    aget v8, v3, v7

    int-to-float v8, v8

    iget v10, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    iget v11, p0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v9

    sub-float/2addr v8, v10

    aget-object v10, p2, v5

    .line 269
    invoke-direct {p0, v10}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v10

    aget-object v7, p2, v7

    invoke-direct {p0, v7}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v10, v7

    div-float/2addr v10, v9

    sub-float/2addr v8, v10

    float-to-int v7, v8

    aput v7, v3, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 272
    :cond_0
    aget p1, p1, v4

    add-int/2addr p1, v6

    :goto_1
    if-ge p1, v0, :cond_1

    add-int/lit8 v5, p1, -0x1

    .line 273
    aget v7, v3, v5

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/camera/ui/menu/a/a;->k:F

    iget v10, p0, Lcom/oplus/camera/ui/menu/a/a;->j:F

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget-object v8, p2, p1

    .line 274
    invoke-direct {p0, v8}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v8

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v8, v5

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v5, v7

    aput v5, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_4

    .line 278
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/high16 v5, 0x437f0000    # 255.0f

    aput v5, p1, v4

    .line 279
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v5, v3, v4

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/a;->g()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v5, v7

    add-float/2addr v5, p3

    aput v5, p1, v4

    add-int/lit8 p1, v0, -0x1

    sub-int v5, p1, v4

    .line 282
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v7

    .line 283
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0705ed

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 284
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0705ec

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    if-ne v5, p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aput p3, p1, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p1, v0, -0x2

    if-ne v5, p1, :cond_3

    .line 289
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v8, v5, 0x1

    aget v10, p1, v8

    iget v11, p0, Lcom/oplus/camera/ui/menu/a/a;->a:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    aget-object v8, p2, v8

    .line 290
    invoke-direct {p0, v8}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v8

    aget-object v11, p2, v5

    invoke-direct {p0, v11}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v8, v11

    div-float/2addr v8, v9

    sub-float/2addr v10, v8

    sub-float/2addr v10, v7

    aput v10, p1, v5

    goto :goto_3

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v7, v5, 0x1

    aget v10, p1, v7

    iget v11, p0, Lcom/oplus/camera/ui/menu/a/a;->a:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    aget-object v7, p2, v7

    .line 293
    invoke-direct {p0, v7}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v7

    aget-object v11, p2, v5

    invoke-direct {p0, v11}, Lcom/oplus/camera/ui/menu/a/a;->a(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v7, v11

    div-float/2addr v7, v9

    sub-float/2addr v10, v7

    add-float/2addr v10, v8

    aput v10, p1, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    .line 297
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    .line 298
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$iM5miySNsRqqxHlBsLaMHu0mppg;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$iM5miySNsRqqxHlBsLaMHu0mppg;-><init>(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/a;->Q:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 312
    invoke-direct {p0, v6}, Lcom/oplus/camera/ui/menu/a/a;->a(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a([I[Ljava/lang/String;FI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 316
    array-length v4, v2

    int-to-long v5, v4

    const-wide/16 v7, 0x20

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    .line 318
    new-array v7, v4, [F

    iput-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    .line 319
    new-array v7, v4, [F

    iput-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    .line 320
    new-array v7, v4, [F

    iput-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    .line 321
    new-array v7, v4, [F

    iput-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    .line 323
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/a/a;->O:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 324
    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v9

    .line 325
    iget v9, v0, Lcom/oplus/camera/ui/menu/a/a;->l:F

    sub-float/2addr v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v11, 0x2

    .line 327
    new-array v12, v11, [I

    .line 328
    iget-object v13, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13, v12}, Lcom/oplus/camera/ui/menu/a/e;->getLocationOnScreen([I)V

    .line 329
    array-length v13, v1

    .line 330
    iput v13, v0, Lcom/oplus/camera/ui/menu/a/a;->h:I

    const/16 v14, 0x5a

    if-ne v14, v3, :cond_0

    const/4 v3, -0x1

    move v14, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v14, 0x10e

    if-ne v14, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const/4 v14, 0x1

    .line 346
    :goto_1
    aget v3, v12, v3

    .line 347
    iget-object v12, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v15, v4, -0x1

    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v10, p3, v10

    iget v11, v0, Lcom/oplus/camera/ui/menu/a/a;->t:F

    add-float/2addr v10, v11

    aput v10, v12, v15

    if-ge v13, v15, :cond_2

    sub-int v10, v15, v13

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 350
    :goto_2
    iget-object v11, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v12, 0x2

    sub-int/2addr v4, v12

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 351
    iget-object v11, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v12, v11, v15

    sub-float/2addr v12, v8

    iget-object v13, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13}, Lcom/oplus/camera/ui/menu/a/e;->getTextGap()F

    move-result v13

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/oplus/camera/ui/menu/a/a;->u:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v13, v13, v16

    sub-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_3

    .line 353
    :cond_3
    iget-object v11, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v12, v11, v15

    sub-float/2addr v12, v8

    iget-object v13, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13}, Lcom/oplus/camera/ui/menu/a/e;->getTextGap()F

    move-result v13

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/oplus/camera/ui/menu/a/a;->u:F

    sub-float/2addr v12, v13

    aput v12, v11, v4

    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_8

    .line 357
    iget-object v12, v0, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/high16 v13, 0x437f0000    # 255.0f

    aput v13, v12, v11

    if-lt v11, v10, :cond_4

    .line 360
    iget-object v12, v0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    sub-int v13, v11, v10

    aget v13, v1, v13

    sub-int/2addr v13, v3

    mul-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/a/e;->getVerticalOffset()F

    move-result v1

    sub-float/2addr v13, v1

    sub-float/2addr v13, v9

    iget v1, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v13, v1

    aput v13, v12, v11

    :cond_4
    sub-int v1, v15, v11

    if-ge v1, v15, :cond_5

    .line 366
    iget-object v12, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    add-int/lit8 v13, v1, 0x1

    aget-object v13, v2, v13

    invoke-virtual {v12, v13}, Lcom/oplus/camera/ui/menu/a/e;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-ge v1, v4, :cond_7

    if-eqz v12, :cond_6

    .line 370
    iget-object v12, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v13, v1, 0x1

    aget v13, v12, v13

    move/from16 p4, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/a;->v:F

    sub-float/2addr v13, v3

    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/a/e;->getTextGap()F

    move-result v3

    sub-float/2addr v13, v3

    iget v3, v0, Lcom/oplus/camera/ui/menu/a/a;->t:F

    add-float/2addr v13, v3

    aput v13, v12, v1

    goto :goto_6

    :cond_6
    move/from16 p4, v3

    .line 372
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    add-int/lit8 v12, v1, 0x1

    aget v12, v3, v12

    sub-float/2addr v12, v8

    iget-object v13, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13}, Lcom/oplus/camera/ui/menu/a/e;->getTextGap()F

    move-result v13

    sub-float/2addr v12, v13

    aput v12, v3, v1

    goto :goto_6

    :cond_7
    move/from16 p4, v3

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v3, p4

    goto :goto_4

    .line 377
    :cond_8
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v3, v1, v4

    iget v4, v0, Lcom/oplus/camera/ui/menu/a/a;->s:F

    add-float/2addr v3, v4

    add-float/2addr v3, v8

    iget-object v4, v0, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/a/e;->getTextGap()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v1, v15

    const/4 v1, 0x2

    .line 378
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/oplus/camera/ui/menu/a/a;->F:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 381
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$o4MIPm6F4gpDj7FzwpzOCJkux8E;

    invoke-direct {v3, v0, v2}, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$o4MIPm6F4gpDj7FzwpzOCJkux8E;-><init>(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/a/a;->Q:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x1

    .line 398
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/a/a;->a(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a([I[Ljava/lang/String;[FI)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v1, p4

    .line 175
    array-length v5, v2

    int-to-long v3, v5

    const-wide/16 v7, 0x20

    mul-long/2addr v3, v7

    const-wide/16 v7, 0x1f4

    add-long/2addr v3, v7

    .line 177
    new-array v7, v5, [F

    iput-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    .line 178
    new-array v7, v5, [F

    iput-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    .line 179
    new-array v7, v5, [F

    iput-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    .line 180
    new-array v7, v5, [F

    iput-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    .line 181
    new-array v7, v5, [F

    .line 183
    iget-object v8, v6, Lcom/oplus/camera/ui/menu/a/a;->O:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 184
    iget v9, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v9, v10

    .line 185
    iget v10, v6, Lcom/oplus/camera/ui/menu/a/a;->l:F

    sub-float/2addr v10, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v10, v9

    const/4 v11, 0x2

    .line 187
    new-array v12, v11, [I

    .line 188
    iget-object v13, v6, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13, v12}, Lcom/oplus/camera/ui/menu/a/e;->getLocationOnScreen([I)V

    .line 189
    array-length v13, v0

    .line 190
    iput v13, v6, Lcom/oplus/camera/ui/menu/a/a;->h:I

    const/4 v15, 0x1

    const/16 v14, 0x5a

    if-ne v14, v1, :cond_0

    const/4 v1, -0x1

    move v14, v1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v14, 0x10e

    if-ne v14, v1, :cond_1

    move v14, v15

    goto :goto_0

    :cond_1
    move v1, v15

    move v14, v1

    .line 206
    :goto_1
    aget v1, v12, v1

    add-int/lit8 v12, v5, -0x1

    if-ge v13, v12, :cond_2

    sub-int v13, v5, v13

    sub-int/2addr v13, v15

    move v15, v13

    :goto_2
    if-ge v15, v12, :cond_3

    int-to-float v11, v1

    int-to-float v9, v14

    .line 210
    iget-object v2, v6, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/a/e;->getVerticalOffset()F

    move-result v2

    aget v16, p3, v15

    add-float v2, v2, v16

    mul-float/2addr v2, v9

    add-float/2addr v11, v2

    sub-int v2, v15, v13

    .line 211
    aget v2, v0, v2

    int-to-float v2, v2

    move/from16 p4, v13

    iget v13, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v13, v10

    mul-float/2addr v13, v9

    sub-float/2addr v2, v13

    sub-float/2addr v2, v11

    mul-float/2addr v9, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v9, v2

    .line 212
    aput v9, v7, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v13, p4

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_3

    int-to-float v9, v1

    int-to-float v11, v14

    .line 216
    iget-object v13, v6, Lcom/oplus/camera/ui/menu/a/a;->N:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v13}, Lcom/oplus/camera/ui/menu/a/e;->getVerticalOffset()F

    move-result v13

    aget v15, p3, v2

    add-float/2addr v13, v15

    mul-float/2addr v13, v11

    add-float/2addr v9, v13

    .line 217
    aget v13, v0, v2

    int-to-float v13, v13

    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v15, v10

    mul-float/2addr v15, v11

    sub-float/2addr v13, v15

    sub-float/2addr v13, v9

    mul-float/2addr v11, v13

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v11, v9

    .line 218
    aput v11, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v5, -0x2

    .line 222
    aget v0, v7, v0

    iget v1, v6, Lcom/oplus/camera/ui/menu/a/a;->s:F

    add-float/2addr v0, v1

    aput v0, v7, v12

    :goto_4
    if-ltz v12, :cond_4

    .line 225
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->z:[F

    aget v1, p3, v12

    aput v1, v0, v12

    .line 226
    iget-object v1, v6, Lcom/oplus/camera/ui/menu/a/a;->y:[F

    aget v2, v0, v12

    aput v2, v1, v12

    .line 227
    iget-object v1, v6, Lcom/oplus/camera/ui/menu/a/a;->B:[F

    const/4 v2, 0x0

    aput v2, v1, v12

    .line 228
    iget-object v1, v6, Lcom/oplus/camera/ui/menu/a/a;->A:[F

    aget v0, v0, v12

    aget v2, v7, v12

    add-float/2addr v0, v2

    aput v0, v1, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    .line 232
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v7, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$ykuAW1plsTjOrMB_IVyFwlf6Arc;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/menu/a/-$$Lambda$a$ykuAW1plsTjOrMB_IVyFwlf6Arc;-><init>(Lcom/oplus/camera/ui/menu/a/a;[Ljava/lang/String;JI)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    iget-object v1, v6, Lcom/oplus/camera/ui/menu/a/a;->P:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object v0, v6, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 253
    invoke-direct {v6, v0}, Lcom/oplus/camera/ui/menu/a/a;->a(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/a;->Q:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 491
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 579
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()V
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
