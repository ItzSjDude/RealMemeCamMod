.class public Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;
.super Landroid/view/View;
.source "BlurMenuSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;,
        Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;,
        Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;,
        Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$a;
    }
.end annotation


# static fields
.field private static final i:Landroid/view/animation/PathInterpolator;

.field private static final j:Landroid/view/animation/PathInterpolator;

.field private static k:I

.field private static l:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:Landroid/animation/ValueAnimator;

.field private I:Landroid/animation/AnimatorSet;

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Landroid/graphics/Paint;

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/Paint;

.field private Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

.field private R:Landroid/view/VelocityTracker;

.field private S:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

.field private T:Landroid/os/Handler;

.field private U:Z

.field private V:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

.field private W:F

.field protected a:Landroid/content/Context;

.field private aa:F

.field private ab:F

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Z

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:[I

.field protected h:I

.field private m:I

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i:Landroid/view/animation/PathInterpolator;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->j:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    const/16 p3, 0x1e

    .line 77
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    .line 78
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->f:I

    const/4 p3, 0x0

    .line 79
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 83
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->o:F

    .line 87
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->s:I

    .line 88
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->t:I

    .line 93
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->y:I

    .line 95
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->z:I

    .line 97
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->A:F

    .line 98
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->B:F

    .line 100
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    .line 101
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->D:F

    .line 103
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    .line 104
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->F:F

    const/16 v1, 0xa

    .line 105
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->G:I

    const/4 v1, 0x1

    .line 109
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->J:I

    .line 113
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    .line 122
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->U:Z

    .line 123
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->V:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    .line 125
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->aa:F

    .line 126
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ab:F

    .line 128
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ad:I

    .line 129
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ae:I

    .line 130
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->af:I

    .line 131
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ag:I

    .line 132
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ah:I

    .line 133
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ai:I

    .line 134
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->aj:Z

    .line 148
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)F
    .locals 0

    .line 45
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    return p1
.end method

.method private a(F)V
    .locals 10

    .line 661
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    if-nez v0, :cond_0

    const-string p0, "BlurMenuSeekBar"

    const-string p1, "onMove return, is not valid"

    .line 662
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b()V

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

    .line 675
    :goto_0
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->J:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_6

    if-ne v1, v2, :cond_4

    add-float v1, v3, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    add-float v0, v3, p1

    .line 677
    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    goto :goto_3

    :cond_4
    add-float v1, v3, p1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    add-float v0, v3, p1

    .line 679
    :goto_2
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    .line 682
    :goto_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->D:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->F:F

    .line 683
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    return-void

    .line 688
    :cond_6
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->J:I

    .line 690
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    float-to-int v3, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 692
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    const v5, 0x3e99999a    # 0.3f

    if-ltz v4, :cond_a

    int-to-float v2, v3

    .line 693
    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_9

    .line 694
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_7

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 695
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    goto :goto_5

    :cond_7
    mul-float/2addr p1, v5

    add-float v0, v2, p1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    add-float v4, v2, p1

    .line 697
    :goto_4
    iput v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    goto :goto_5

    .line 700
    :cond_9
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    .line 703
    :goto_5
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    goto :goto_8

    .line 704
    :cond_a
    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    iget v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

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

    .line 705
    iget v9, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_d

    .line 706
    iget v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float v0, v7, v0

    if-nez v0, :cond_b

    sub-int/2addr v6, v2

    mul-int/2addr v4, v6

    int-to-float p1, v4

    add-float/2addr v1, p1

    int-to-float p1, v3

    sub-float/2addr v1, p1

    mul-float/2addr v1, v5

    .line 707
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

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

    .line 709
    :goto_6
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    goto :goto_7

    .line 712
    :cond_d
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    .line 715
    :goto_7
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 718
    :cond_e
    :goto_8
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->D:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->F:F

    .line 720
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k()V

    .line 721
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 491
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 7

    .line 441
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->U:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 445
    :cond_0
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)F
    .locals 0

    .line 45
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->F:F

    return p1
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 475
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ad:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 477
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ae:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 478
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->af:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 479
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ag:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 480
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ah:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 481
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->r:I

    aget v0, v0, v2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h:I

    .line 482
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->D:F

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(F)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->T:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 8

    .line 153
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 154
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    .line 161
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706a5

    sget v4, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->W:F

    .line 162
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ac:I

    .line 163
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->T:Landroid/os/Handler;

    .line 165
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e3

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->v:I

    const v3, 0x7f0700ce

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->aa:F

    const v3, 0x7f0700cd

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ab:F

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getRotation()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    const v3, 0x7f0700e2

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->t:I

    goto :goto_0

    :cond_1
    const v3, 0x7f070c66

    .line 174
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->t:I

    :goto_0
    const v3, 0x7f0700dd

    .line 177
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    const v3, 0x7f0700d7

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->r:I

    const v3, 0x7f0700d1

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h:I

    .line 180
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->G:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    iput v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->C:F

    int-to-float v3, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v5

    .line 181
    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->D:F

    .line 182
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getRotation()F

    move-result v3

    cmpl-float v3, v4, v3

    if-nez v3, :cond_2

    const v3, 0x7f0700df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    :cond_2
    const v3, 0x7f070c64

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->y:I

    .line 184
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    const v5, 0x7f06004d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->l:I

    .line 185
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b:I

    .line 186
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    const v6, 0x7f060032

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k:I

    const v3, 0x7f0700d8

    .line 187
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ad:I

    const v3, 0x7f0700d9

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ae:I

    const v3, 0x7f0700da

    .line 189
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->af:I

    const v3, 0x7f0700db

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ag:I

    const v3, 0x7f0700dc

    .line 191
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ah:I

    .line 192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a()V

    .line 193
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    array-length v2, v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->s:I

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 196
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    .line 197
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    iget v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->W:F

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 199
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->O:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ac:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    .line 204
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->l:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->v:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    .line 210
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->W:F

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ac:I

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 213
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->x:I

    .line 216
    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_3
    div-int/lit8 v2, v2, 0x2

    :goto_2
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->w:I

    .line 218
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->w:I

    if-gez v0, :cond_4

    .line 219
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->w:I

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->j()V

    return-void
.end method

.method private getRemainder()I
    .locals 0

    .line 453
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->z:I

    return p0
.end method

.method private h()V
    .locals 3

    .line 239
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h()V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    .line 637
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->H:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 638
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private j()V
    .locals 4

    .line 642
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->o:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 645
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    .line 647
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    goto :goto_0

    .line 649
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    goto :goto_0

    .line 652
    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 655
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k()V

    .line 656
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->postInvalidate()V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 4

    .line 729
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    if-eqz v0, :cond_3

    .line 730
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 731
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    .line 733
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    if-eqz v1, :cond_2

    .line 734
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    if-eq v0, v1, :cond_2

    .line 737
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->V:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 738
    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->n()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 742
    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    const-string v3, "pref_video_blur_menu_index"

    .line 743
    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    .line 746
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    invoke-interface {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a()V

    .line 747
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    invoke-interface {v3, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a(I)V

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 750
    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 751
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    .line 756
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->setCurrentIndex(I)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$GMW0HA0VquiQGyuQwef8UQZYKVM(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$d3YQmsW6XCpsFb7gm72TtG88zbg(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x6

    .line 224
    new-array v0, v0, [I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ae:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->af:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ag:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ah:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ai:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method public a(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    .line 465
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->aj:Z

    const/4 v0, 0x2

    .line 471
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    aput v4, v1, v5

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 472
    sget-object v2, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1f4

    .line 473
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/-$$Lambda$BlurMenuSeekBar$GMW0HA0VquiQGyuQwef8UQZYKVM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/-$$Lambda$BlurMenuSeekBar$GMW0HA0VquiQGyuQwef8UQZYKVM;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 485
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060094

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 486
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v4

    .line 487
    new-array v0, v0, [I

    if-eqz p1, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    aput v8, v0, v5

    if-eqz p1, :cond_4

    move v2, v4

    :cond_4
    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 488
    sget-object v0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->j:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 490
    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/-$$Lambda$BlurMenuSeekBar$d3YQmsW6XCpsFb7gm72TtG88zbg;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/-$$Lambda$BlurMenuSeekBar$d3YQmsW6XCpsFb7gm72TtG88zbg;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 494
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 495
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 496
    new-instance p1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollTo, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurMenuSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    .line 788
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    .line 794
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(I)V

    .line 796
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 797
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 805
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    .line 811
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->L:Z

    if-nez v0, :cond_1

    return-void

    .line 815
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    const/4 p1, 0x1

    .line 816
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->K:Z

    .line 817
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->U:Z

    return-void
.end method

.method public f()Z
    .locals 0

    .line 437
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 315
    iget-boolean v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getLayoutDirection()I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-ne v10, v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 325
    :cond_1
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    add-float/2addr v0, v1

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->t:I

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->r:I

    sub-int v1, v0, v1

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->y:I

    sub-int v12, v1, v2

    sub-int v13, v0, v2

    .line 331
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    shr-int/lit8 v1, v0, 0x1

    .line 335
    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    int-to-float v3, v0

    div-float v3, v2, v3

    float-to-int v3, v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 337
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    int-to-float v0, v0

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    sub-float/2addr v0, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float v2, v0, v1

    .line 339
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v14, v2, v1

    .line 340
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 342
    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float v2, v11, v1

    const/4 v15, -0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    cmpg-float v0, v11, v1

    if-gez v0, :cond_2

    move v6, v15

    goto :goto_0

    :cond_2
    move v6, v10

    goto :goto_0

    :cond_3
    move v6, v0

    :goto_0
    const/4 v0, 0x0

    move v5, v0

    .line 350
    :goto_1
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    if-ge v5, v0, :cond_10

    .line 351
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ltz v4, :cond_a

    .line 353
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->s:I

    sub-int/2addr v0, v10

    if-ge v4, v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    if-eq v6, v15, :cond_7

    if-eq v6, v10, :cond_4

    .line 379
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v0, v0, v4

    sub-int v0, v12, v0

    int-to-float v0, v0

    goto/16 :goto_5

    .line 368
    :cond_4
    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    if-ge v5, v2, :cond_5

    .line 369
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    aget v3, v1, v4

    add-int/lit8 v16, v4, 0x1

    aget v1, v1, v16

    :goto_2
    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v14

    add-float/2addr v2, v1

    goto :goto_4

    :cond_5
    if-le v5, v1, :cond_6

    .line 371
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    add-int/lit8 v3, v4, -0x1

    aget v3, v1, v3

    aget v1, v1, v4

    goto :goto_3

    .line 373
    :cond_6
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    aget v3, v1, v4

    add-int/lit8 v16, v4, 0x1

    aget v1, v1, v16

    goto :goto_2

    .line 356
    :cond_7
    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    if-ge v5, v2, :cond_8

    .line 357
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    add-int/lit8 v3, v4, -0x1

    aget v3, v1, v3

    aget v1, v1, v4

    :goto_3
    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v14

    sub-float/2addr v2, v1

    :goto_4
    move/from16 v16, v2

    goto :goto_6

    :cond_8
    if-le v5, v1, :cond_9

    .line 359
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    aget v3, v1, v4

    add-int/lit8 v16, v4, 0x1

    aget v1, v1, v16

    goto :goto_2

    .line 361
    :cond_9
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g:[I

    aget v2, v1, v4

    sub-int v2, v12, v2

    int-to-float v2, v2

    aget v3, v1, v4

    add-int/lit8 v16, v4, 0x1

    aget v1, v1, v16

    goto :goto_2

    :cond_a
    int-to-float v0, v12

    :goto_5
    move/from16 v16, v0

    .line 388
    :goto_6
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->F:F

    cmpg-float v1, v11, v0

    if-gez v1, :cond_b

    .line 389
    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    mul-int/2addr v0, v5

    goto :goto_7

    .line 391
    :cond_b
    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    mul-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    :goto_7
    int-to-float v0, v0

    add-float/2addr v1, v0

    move v3, v1

    .line 394
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->f:I

    if-lez v0, :cond_d

    .line 395
    rem-int v0, v5, v0

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getRemainder()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 396
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 398
    :cond_c
    iget-object v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    sget v1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d
    :goto_8
    int-to-float v2, v13

    .line 402
    iget-object v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v2

    move v2, v3

    move/from16 v19, v3

    move/from16 v3, v16

    move v10, v4

    move/from16 v4, v19

    move v15, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 405
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    if-nez v0, :cond_e

    if-nez v10, :cond_e

    .line 406
    iput v15, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    .line 409
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw, indexToCenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurMenuSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_f

    .line 411
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    if-ne v0, v15, :cond_f

    if-eqz v0, :cond_f

    .line 412
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->ab:F

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->aa:F

    add-float/2addr v0, v1

    sub-float v0, v16, v0

    iget-object v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->P:Landroid/graphics/Paint;

    move/from16 v3, v19

    invoke-virtual {v8, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_f
    add-int/lit8 v5, v15, 0x1

    move/from16 v6, v18

    const/4 v10, 0x1

    const/4 v15, -0x1

    goto/16 :goto_1

    .line 417
    :cond_10
    iget v0, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->t:I

    iget v1, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h:I

    sub-int v1, v0, v1

    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->y:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v2

    .line 420
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    iget v3, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v8, v2, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    iget v2, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    int-to-float v3, v2

    int-to-float v4, v1

    int-to-float v5, v2

    int-to-float v6, v0

    iget-object v7, v7, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->N:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 762
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 764
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->p:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure, widthMeasureSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", heightMeasureSpec: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BlurMenuSeekBar"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->p:I

    .line 771
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->p:I

    div-int/lit8 p1, p1, 0x2

    .line 772
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->u:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->q:I

    .line 773
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->e:I

    rem-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->o:F

    const/4 p1, 0x1

    .line 774
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->L:Z

    .line 776
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->K:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 777
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->n:F

    .line 780
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    if-ltz p1, :cond_2

    .line 781
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 598
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i()V

    goto/16 :goto_0

    .line 603
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    .line 604
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 605
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    .line 608
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->j()V

    goto/16 :goto_0

    .line 541
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->A:F

    sub-float/2addr v0, v1

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->B:F

    sub-float/2addr v1, v3

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->A:F

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->B:F

    .line 546
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_4

    goto/16 :goto_0

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    .line 552
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 555
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_6

    neg-float p1, v0

    .line 556
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(F)V

    goto/16 :goto_0

    .line 558
    :cond_6
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(F)V

    goto/16 :goto_0

    .line 564
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c()V

    .line 566
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->E:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    .line 567
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->i()V

    goto/16 :goto_0

    .line 573
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 574
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 575
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->x:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 576
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 577
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 580
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_b

    .line 581
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_a

    neg-float v3, v3

    .line 585
    :cond_a
    new-instance p1, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

    invoke-direct {p1, p0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->S:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

    .line 586
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->T:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->S:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 588
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->j()V

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    if-eqz p0, :cond_f

    .line 591
    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->b()V

    goto :goto_0

    .line 520
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->A:F

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->B:F

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 527
    :cond_d
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 528
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 531
    :cond_e
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->R:Landroid/view/VelocityTracker;

    .line 533
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->S:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

    if-eqz p1, :cond_f

    .line 534
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;->a()V

    .line 535
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->S:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$b;

    :cond_f
    :goto_0
    return v2
.end method

.method public setBlurListener(Lcom/oplus/camera/ui/menu/levelcontrol/c$a;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->V:Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 276
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    .line 282
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    if-eqz p1, :cond_1

    .line 283
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c:I

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultDotPosition(I)V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDotPosition, dotPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurMenuSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->m:I

    return-void
.end method

.method public setLevelNum(I)V
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelNum, levelNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurMenuSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    .line 292
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->M:Z

    if-eqz p1, :cond_1

    .line 293
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->d:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->w:I

    goto :goto_1

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->g()V

    :goto_1
    return-void
.end method

.method public setRemainder(I)V
    .locals 0

    .line 449
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->z:I

    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->Q:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$d;

    return-void
.end method
