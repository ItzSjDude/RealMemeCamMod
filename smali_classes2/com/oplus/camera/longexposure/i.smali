.class public Lcom/oplus/camera/longexposure/i;
.super Landroid/view/View;
.source "LongExposureScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/longexposure/i$c;,
        Lcom/oplus/camera/longexposure/i$b;,
        Lcom/oplus/camera/longexposure/i$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/PathInterpolator;

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Landroid/content/Context;

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Lcom/oplus/camera/longexposure/i$c;

.field private L:Landroid/view/VelocityTracker;

.field private M:Lcom/oplus/camera/longexposure/i$b;

.field private N:Landroid/os/Handler;

.field private O:Landroid/animation/ValueAnimator;

.field private P:F

.field private Q:Landroid/view/animation/PathInterpolator;

.field private R:F

.field private S:I

.field private T:Landroid/animation/ValueAnimator;

.field private U:Landroid/animation/AnimatorSet;

.field private V:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:[I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/longexposure/i;->a:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 6

    .line 131
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->e:F

    .line 72
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->f:F

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->g:I

    .line 77
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->k:I

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->q:I

    const/4 v2, 0x4

    .line 85
    iput v2, p0, Lcom/oplus/camera/longexposure/i;->s:I

    const/4 v2, 0x2

    .line 86
    iput v2, p0, Lcom/oplus/camera/longexposure/i;->t:I

    .line 90
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->w:F

    .line 91
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->x:F

    .line 93
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->y:F

    .line 94
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->z:F

    .line 96
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    .line 97
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->B:F

    const/16 v2, 0xa

    .line 98
    iput v2, p0, Lcom/oplus/camera/longexposure/i;->C:I

    .line 102
    iput-boolean v1, p0, Lcom/oplus/camera/longexposure/i;->F:Z

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->O:Landroid/animation/ValueAnimator;

    .line 114
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->P:F

    .line 115
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->Q:Landroid/view/animation/PathInterpolator;

    .line 121
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->V:I

    .line 133
    iput-object p3, p0, Lcom/oplus/camera/longexposure/i;->N:Landroid/os/Handler;

    .line 134
    iput p2, p0, Lcom/oplus/camera/longexposure/i;->h:I

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/i;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/i;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    return p1
.end method

.method private a()V
    .locals 3

    .line 140
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/longexposure/i;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/longexposure/i$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/longexposure/i$1;-><init>(Lcom/oplus/camera/longexposure/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/longexposure/i$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/longexposure/i$2;-><init>(Lcom/oplus/camera/longexposure/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private a(F)V
    .locals 10

    .line 515
    iget-boolean v0, p0, Lcom/oplus/camera/longexposure/i;->F:Z

    if-nez v0, :cond_0

    const-string p0, "LongExposureScaleBar"

    const-string p1, "onMove return, is not valid"

    .line 516
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    cmpg-float v1, v0, p1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 527
    :goto_0
    iget v3, p0, Lcom/oplus/camera/longexposure/i;->V:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Lcom/oplus/camera/longexposure/i;->A:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_6

    if-ne v1, v2, :cond_4

    add-float v1, v3, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    add-float v0, v3, p1

    .line 529
    :goto_1
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    goto :goto_3

    :cond_4
    add-float v1, v3, p1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    add-float v0, v3, p1

    .line 531
    :goto_2
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    .line 534
    :goto_3
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    iget v0, p0, Lcom/oplus/camera/longexposure/i;->w:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/longexposure/i;->x:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->B:F

    .line 535
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->invalidate()V

    return-void

    .line 540
    :cond_6
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->V:I

    .line 542
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    float-to-int v3, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    .line 544
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    iget v3, p0, Lcom/oplus/camera/longexposure/i;->j:I

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    const v5, 0x3e99999a    # 0.3f

    if-ltz v4, :cond_a

    int-to-float v2, v3

    .line 545
    iget v4, p0, Lcom/oplus/camera/longexposure/i;->w:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_9

    .line 546
    iget v2, p0, Lcom/oplus/camera/longexposure/i;->A:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_7

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 547
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    goto :goto_5

    :cond_7
    mul-float/2addr p1, v5

    add-float v0, v2, p1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    add-float v4, v2, p1

    .line 549
    :goto_4
    iput v4, p0, Lcom/oplus/camera/longexposure/i;->A:F

    goto :goto_5

    .line 552
    :cond_9
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    .line 555
    :goto_5
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->j:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    goto :goto_8

    .line 556
    :cond_a
    iget v4, p0, Lcom/oplus/camera/longexposure/i;->k:I

    iget v6, p0, Lcom/oplus/camera/longexposure/i;->h:I

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_e

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    int-to-float v8, v3

    .line 557
    iget v9, p0, Lcom/oplus/camera/longexposure/i;->w:F

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_d

    .line 558
    iget v7, p0, Lcom/oplus/camera/longexposure/i;->A:F

    cmpl-float v0, v7, v0

    if-nez v0, :cond_b

    sub-int/2addr v6, v2

    mul-int/2addr v4, v6

    int-to-float p1, v4

    add-float/2addr v1, p1

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 559
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    goto :goto_7

    :cond_b
    mul-float/2addr p1, v5

    add-float v0, v7, p1

    neg-float v1, v9

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    neg-float p1, v9

    goto :goto_6

    :cond_c
    add-float/2addr p1, v7

    .line 561
    :goto_6
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    goto :goto_7

    .line 564
    :cond_d
    iput v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    .line 567
    :goto_7
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->j:I

    iget v0, p0, Lcom/oplus/camera/longexposure/i;->k:I

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->h:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    .line 570
    :cond_e
    :goto_8
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    iget v0, p0, Lcom/oplus/camera/longexposure/i;->w:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/longexposure/i;->x:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->B:F

    .line 572
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->e()V

    .line 573
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/i;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/oplus/camera/longexposure/i;->w:F

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/i;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->B:F

    return p1
.end method

.method private b()V
    .locals 8

    .line 176
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->h:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 177
    iput-boolean v1, p0, Lcom/oplus/camera/longexposure/i;->F:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/i;->F:Z

    .line 184
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706a5

    sget v4, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/longexposure/i;->R:F

    .line 185
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/longexposure/i;->S:I

    .line 186
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709ae

    .line 187
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/longexposure/i;->o:I

    const v4, 0x7f0709b9

    .line 188
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/longexposure/i;->p:I

    const v4, 0x7f0706f0

    .line 189
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/longexposure/i;->k:I

    .line 190
    iget v4, p0, Lcom/oplus/camera/longexposure/i;->k:I

    iget v5, p0, Lcom/oplus/camera/longexposure/i;->C:I

    mul-int/2addr v5, v4

    int-to-float v5, v5

    iput v5, p0, Lcom/oplus/camera/longexposure/i;->w:F

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    .line 191
    iput v4, p0, Lcom/oplus/camera/longexposure/i;->x:F

    const v4, 0x7f0709b0

    .line 192
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/longexposure/i;->l:I

    const v4, 0x7f0706f1

    .line 193
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/longexposure/i;->m:I

    const/4 v4, 0x6

    .line 194
    new-array v4, v4, [I

    aput v1, v4, v1

    const v5, 0x7f0709b1

    .line 196
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v4, v0

    const v5, 0x7f0709b2

    .line 197
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v4, v6

    const/4 v5, 0x3

    const v7, 0x7f0709b3

    .line 198
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v4, v5

    const/4 v5, 0x4

    const v7, 0x7f0709b4

    .line 199
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v4, v5

    const/4 v5, 0x5

    const v7, 0x7f0709b5

    .line 200
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v4, v5

    iput-object v4, p0, Lcom/oplus/camera/longexposure/i;->n:[I

    .line 202
    iget-object v4, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    const v5, 0x7f0604f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sput v4, Lcom/oplus/camera/longexposure/i;->b:I

    .line 203
    iget-object v4, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sput v4, Lcom/oplus/camera/longexposure/i;->c:I

    .line 204
    iget-object v4, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/oplus/camera/longexposure/i;->d:I

    const v4, 0x7f0706ed

    .line 205
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/longexposure/i;->v:I

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/longexposure/i;->setLayerType(ILandroid/graphics/Paint;)V

    .line 208
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->H:Landroid/graphics/Paint;

    .line 209
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->H:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, p0, Lcom/oplus/camera/longexposure/i;->R:F

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 210
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->H:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->H:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/longexposure/i;->o:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->H:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/longexposure/i;->S:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    .line 215
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/longexposure/i;->b:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/longexposure/i;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    .line 221
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/longexposure/i;->d:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oplus/camera/longexposure/i;->o:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->G:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/longexposure/i;->u:I

    .line 228
    iget v2, p0, Lcom/oplus/camera/longexposure/i;->h:I

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    div-int/2addr v2, v6

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    div-int/2addr v2, v6

    :goto_0
    iput v2, p0, Lcom/oplus/camera/longexposure/i;->r:I

    .line 230
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->r:I

    if-gez v0, :cond_2

    .line 231
    iput v1, p0, Lcom/oplus/camera/longexposure/i;->r:I

    .line 234
    :cond_2
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/longexposure/i;->O:Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->O:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->O:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->O:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/longexposure/i$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/longexposure/i$3;-><init>(Lcom/oplus/camera/longexposure/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/longexposure/i;->R:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 247
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/longexposure/i;->R:F

    invoke-virtual {v1, p0, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/oplus/camera/longexposure/i;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/oplus/camera/longexposure/i;->x:F

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/longexposure/i;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->P:F

    return p1
.end method

.method private c()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->a()V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 489
    :cond_3
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    .line 490
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 496
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->e:F

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->f:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->k:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 499
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/longexposure/i;->k:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    .line 501
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    goto :goto_0

    .line 503
    :cond_0
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    goto :goto_0

    .line 506
    :cond_1
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    .line 509
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->e()V

    .line 510
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->postInvalidate()V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/longexposure/i;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->e()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/longexposure/i;F)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oplus/camera/longexposure/i;->a(F)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i;->K:Lcom/oplus/camera/longexposure/i$c;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 577
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->h:I

    if-eqz v0, :cond_1

    .line 578
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->k:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 579
    iget v1, p0, Lcom/oplus/camera/longexposure/i;->h:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    .line 581
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->K:Lcom/oplus/camera/longexposure/i$c;

    if-eqz v1, :cond_0

    .line 582
    iget v2, p0, Lcom/oplus/camera/longexposure/i;->g:I

    if-eq v0, v2, :cond_0

    .line 583
    invoke-interface {v1}, Lcom/oplus/camera/longexposure/i$c;->a()V

    .line 584
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i;->K:Lcom/oplus/camera/longexposure/i$c;

    invoke-interface {v1, v0}, Lcom/oplus/camera/longexposure/i$c;->e(I)V

    .line 588
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/longexposure/i;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i;->N:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/longexposure/i;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->d()V

    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/longexposure/i;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 624
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->h:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->j:I

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->k:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 632
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->h:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->g:I

    .line 638
    iget-boolean v0, p0, Lcom/oplus/camera/longexposure/i;->E:Z

    if-nez v0, :cond_1

    return-void

    .line 642
    :cond_1
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->j:I

    iget v1, p0, Lcom/oplus/camera/longexposure/i;->k:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    const/4 p1, 0x1

    .line 643
    iput-boolean p1, p0, Lcom/oplus/camera/longexposure/i;->D:Z

    .line 644
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/oplus/camera/longexposure/i;->g:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 280
    iget-boolean v1, v0, Lcom/oplus/camera/longexposure/i;->F:Z

    if-nez v1, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/longexposure/i;->getLayoutDirection()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v4, v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/longexposure/i;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/longexposure/i;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v2, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    .line 290
    :goto_0
    iget v1, v0, Lcom/oplus/camera/longexposure/i;->q:I

    if-ne v1, v3, :cond_2

    .line 291
    iget v1, v0, Lcom/oplus/camera/longexposure/i;->r:I

    iget v3, v0, Lcom/oplus/camera/longexposure/i;->s:I

    rem-int/2addr v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 295
    :goto_1
    iget v3, v0, Lcom/oplus/camera/longexposure/i;->l:I

    .line 297
    iget v6, v0, Lcom/oplus/camera/longexposure/i;->k:I

    shr-int/lit8 v7, v6, 0x1

    .line 298
    iget v8, v0, Lcom/oplus/camera/longexposure/i;->A:F

    int-to-float v9, v6

    div-float v9, v8, v9

    float-to-int v9, v9

    mul-int/2addr v6, v9

    int-to-float v6, v6

    sub-float/2addr v8, v6

    .line 300
    iget v6, v0, Lcom/oplus/camera/longexposure/i;->j:I

    int-to-float v6, v6

    iget v9, v0, Lcom/oplus/camera/longexposure/i;->e:F

    sub-float/2addr v6, v9

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v8, v0, Lcom/oplus/camera/longexposure/i;->g:I

    iget v9, v0, Lcom/oplus/camera/longexposure/i;->k:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v6, v8

    sub-float v8, v6, v7

    .line 301
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v14, v8, v7

    .line 302
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    .line 304
    iget v7, v0, Lcom/oplus/camera/longexposure/i;->A:F

    const/4 v15, 0x0

    cmpl-float v8, v7, v15

    const/4 v12, -0x1

    if-eqz v8, :cond_4

    if-eqz v6, :cond_4

    cmpl-float v6, v7, v15

    if-lez v6, :cond_3

    move v6, v12

    goto :goto_2

    :cond_3
    move v6, v4

    .line 312
    :cond_4
    :goto_2
    iget-object v7, v0, Lcom/oplus/camera/longexposure/i;->n:[I

    array-length v8, v7

    sub-int/2addr v8, v4

    aget v16, v7, v8

    const/4 v11, 0x0

    .line 314
    :goto_3
    iget v7, v0, Lcom/oplus/camera/longexposure/i;->h:I

    if-ge v11, v7, :cond_e

    .line 315
    iget v7, v0, Lcom/oplus/camera/longexposure/i;->g:I

    iget v8, v0, Lcom/oplus/camera/longexposure/i;->A:F

    iget v9, v0, Lcom/oplus/camera/longexposure/i;->k:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ltz v7, :cond_a

    .line 318
    iget-object v8, v0, Lcom/oplus/camera/longexposure/i;->n:[I

    array-length v9, v8

    if-ge v7, v9, :cond_a

    .line 319
    aget v9, v8, v7

    aget v10, v8, v7

    sub-int v10, v16, v10

    int-to-float v10, v10

    iget v5, v0, Lcom/oplus/camera/longexposure/i;->P:F

    mul-float/2addr v10, v5

    float-to-int v5, v10

    add-int/2addr v5, v9

    .line 321
    array-length v9, v8

    sub-int/2addr v9, v4

    if-ge v7, v9, :cond_9

    const/high16 v9, 0x3f000000    # 0.5f

    if-eq v6, v12, :cond_7

    if-eq v6, v4, :cond_5

    goto :goto_6

    .line 336
    :cond_5
    iget v10, v0, Lcom/oplus/camera/longexposure/i;->g:I

    iget v12, v0, Lcom/oplus/camera/longexposure/i;->A:F

    iget v2, v0, Lcom/oplus/camera/longexposure/i;->k:I

    int-to-float v2, v2

    div-float/2addr v12, v2

    float-to-int v2, v12

    sub-int/2addr v10, v2

    if-le v11, v10, :cond_6

    add-int/lit8 v2, v7, -0x1

    .line 337
    aget v2, v8, v2

    aget v7, v8, v7

    goto :goto_4

    .line 340
    :cond_6
    aget v2, v8, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, v8, v7

    goto :goto_5

    .line 324
    :cond_7
    iget v2, v0, Lcom/oplus/camera/longexposure/i;->g:I

    iget v10, v0, Lcom/oplus/camera/longexposure/i;->A:F

    iget v12, v0, Lcom/oplus/camera/longexposure/i;->k:I

    int-to-float v12, v12

    div-float/2addr v10, v12

    float-to-int v10, v10

    sub-int/2addr v2, v10

    if-ge v11, v2, :cond_8

    add-int/lit8 v2, v7, -0x1

    .line 325
    aget v2, v8, v2

    aget v7, v8, v7

    :goto_4
    sub-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v2, v9

    mul-float/2addr v2, v14

    float-to-int v2, v2

    add-int/2addr v2, v5

    goto :goto_7

    .line 328
    :cond_8
    aget v2, v8, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, v8, v7

    :goto_5
    sub-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v2, v9

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sub-int v2, v5, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v5

    goto :goto_7

    :cond_a
    move/from16 v2, v16

    .line 350
    :goto_7
    iget v5, v0, Lcom/oplus/camera/longexposure/i;->s:I

    rem-int v5, v11, v5

    if-ne v5, v1, :cond_b

    .line 351
    iget-object v5, v0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    sget v7, Lcom/oplus/camera/longexposure/i;->b:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v5, v0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    iget v7, v0, Lcom/oplus/camera/longexposure/i;->o:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_8

    .line 354
    :cond_b
    iget-object v5, v0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    sget v7, Lcom/oplus/camera/longexposure/i;->c:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v5, v0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    iget v7, v0, Lcom/oplus/camera/longexposure/i;->p:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    :goto_8
    iget v5, v0, Lcom/oplus/camera/longexposure/i;->B:F

    cmpg-float v7, v15, v5

    if-gez v7, :cond_c

    .line 361
    iget v7, v0, Lcom/oplus/camera/longexposure/i;->e:F

    iget v8, v0, Lcom/oplus/camera/longexposure/i;->k:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    float-to-int v5, v8

    mul-int/2addr v5, v11

    goto :goto_9

    .line 363
    :cond_c
    iget v7, v0, Lcom/oplus/camera/longexposure/i;->e:F

    iget v8, v0, Lcom/oplus/camera/longexposure/i;->k:I

    mul-int/2addr v8, v11

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v0, Lcom/oplus/camera/longexposure/i;->h:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v11

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v5, v8

    :goto_9
    int-to-float v5, v5

    add-float/2addr v7, v5

    .line 366
    iget v5, v0, Lcom/oplus/camera/longexposure/i;->A:F

    add-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/longexposure/i;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_d

    iget v5, v0, Lcom/oplus/camera/longexposure/i;->A:F

    add-float v8, v5, v7

    cmpl-float v8, v8, v15

    if-lez v8, :cond_d

    add-float v8, v5, v7

    .line 367
    iget v9, v0, Lcom/oplus/camera/longexposure/i;->m:I

    add-int/2addr v2, v9

    int-to-float v2, v2

    add-float v10, v5, v7

    add-int/2addr v9, v3

    int-to-float v5, v9

    iget-object v12, v0, Lcom/oplus/camera/longexposure/i;->I:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v9, v2

    move v2, v11

    move v11, v5

    const/4 v5, -0x1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_d
    move v2, v11

    const/4 v5, -0x1

    :goto_a
    add-int/lit8 v11, v2, 0x1

    move v12, v5

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 371
    :cond_e
    iget v1, v0, Lcom/oplus/camera/longexposure/i;->P:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 372
    iget-object v1, v0, Lcom/oplus/camera/longexposure/i;->n:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-int v1, v1, v16

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v16, v1

    .line 373
    iget v1, v0, Lcom/oplus/camera/longexposure/i;->j:I

    int-to-float v8, v1

    iget v2, v0, Lcom/oplus/camera/longexposure/i;->m:I

    add-int v4, v16, v2

    int-to-float v9, v4

    int-to-float v10, v1

    add-int/2addr v3, v2

    int-to-float v11, v3

    iget-object v12, v0, Lcom/oplus/camera/longexposure/i;->J:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 602
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 604
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->i:I

    if-lez p1, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->i:I

    .line 609
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->i:I

    div-int/lit8 p1, p1, 0x2

    .line 610
    iget p2, p0, Lcom/oplus/camera/longexposure/i;->o:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/longexposure/i;->j:I

    .line 611
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->k:I

    rem-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->f:F

    const/4 p1, 0x1

    .line 612
    iput-boolean p1, p0, Lcom/oplus/camera/longexposure/i;->E:Z

    .line 614
    iget-boolean p1, p0, Lcom/oplus/camera/longexposure/i;->D:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 615
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->e:F

    .line 618
    :cond_1
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->g:I

    if-ltz p1, :cond_2

    .line 619
    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/i;->b(I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 455
    :cond_1
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->A:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->c()V

    goto/16 :goto_0

    .line 460
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 461
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 462
    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->d()V

    goto/16 :goto_0

    .line 399
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/oplus/camera/longexposure/i;->y:F

    sub-float/2addr v0, v2

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/oplus/camera/longexposure/i;->z:F

    sub-float/2addr v2, v3

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/longexposure/i;->y:F

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/longexposure/i;->z:F

    .line 405
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    goto/16 :goto_0

    .line 410
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_6

    .line 411
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getLayoutDirection()I

    move-result p1

    if-ne v1, p1, :cond_7

    neg-float p1, v0

    .line 415
    invoke-direct {p0, p1}, Lcom/oplus/camera/longexposure/i;->a(F)V

    goto/16 :goto_0

    .line 417
    :cond_7
    invoke-direct {p0, v0}, Lcom/oplus/camera/longexposure/i;->a(F)V

    goto :goto_0

    .line 423
    :cond_8
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->A:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    .line 424
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->c()V

    goto :goto_0

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 431
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/oplus/camera/longexposure/i;->u:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 433
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 434
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 437
    :cond_a
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_c

    .line 438
    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->getLayoutDirection()I

    move-result p1

    if-ne v1, p1, :cond_b

    neg-float v3, v3

    .line 442
    :cond_b
    new-instance p1, Lcom/oplus/camera/longexposure/i$b;

    invoke-direct {p1, p0, v3}, Lcom/oplus/camera/longexposure/i$b;-><init>(Lcom/oplus/camera/longexposure/i;F)V

    iput-object p1, p0, Lcom/oplus/camera/longexposure/i;->M:Lcom/oplus/camera/longexposure/i$b;

    .line 443
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->N:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/i;->M:Lcom/oplus/camera/longexposure/i$b;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 445
    :cond_c
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->d()V

    .line 447
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i;->K:Lcom/oplus/camera/longexposure/i$c;

    if-eqz p0, :cond_e

    .line 448
    invoke-interface {p0}, Lcom/oplus/camera/longexposure/i$c;->b()V

    goto :goto_0

    .line 387
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/longexposure/i;->y:F

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/longexposure/i;->z:F

    .line 389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/longexposure/i;->L:Landroid/view/VelocityTracker;

    .line 391
    iget-object p1, p0, Lcom/oplus/camera/longexposure/i;->M:Lcom/oplus/camera/longexposure/i$b;

    if-eqz p1, :cond_e

    .line 392
    invoke-virtual {p1}, Lcom/oplus/camera/longexposure/i$b;->a()V

    .line 393
    iput-object v2, p0, Lcom/oplus/camera/longexposure/i;->M:Lcom/oplus/camera/longexposure/i$b;

    :cond_e
    :goto_0
    return v1
.end method

.method public setAlign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 652
    :cond_0
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->q:I

    :cond_1
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 251
    iget v0, p0, Lcom/oplus/camera/longexposure/i;->h:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->g:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setLevelNum(I)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelNum, levelNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->h:I

    .line 263
    iget-boolean p1, p0, Lcom/oplus/camera/longexposure/i;->F:Z

    if-eqz p1, :cond_1

    .line 264
    iget p1, p0, Lcom/oplus/camera/longexposure/i;->h:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/longexposure/i;->r:I

    goto :goto_1

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/i;->b()V

    :goto_1
    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oplus/camera/longexposure/i$c;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/oplus/camera/longexposure/i;->K:Lcom/oplus/camera/longexposure/i$c;

    return-void
.end method
