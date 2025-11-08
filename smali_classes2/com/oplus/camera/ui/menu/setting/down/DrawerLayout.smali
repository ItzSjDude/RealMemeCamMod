.class public Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$c;,
        Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;,
        Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/animation/PathInterpolator;

.field private B:Landroid/view/animation/PathInterpolator;

.field private C:Landroid/graphics/drawable/ShapeDrawable;

.field private D:Landroid/graphics/drawable/ShapeDrawable;

.field private E:J

.field private F:J

.field private G:J

.field private H:F

.field private I:I

.field private J:Lcom/oplus/camera/ComboPreferences;

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:F

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

.field private n:Z

.field private o:I

.field private p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/ValueAnimator;

.field private t:F

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private y:F

.field private z:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 75
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 76
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    .line 77
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    .line 78
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    const/4 p3, 0x0

    .line 79
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    .line 80
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    .line 81
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    .line 83
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    .line 84
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    .line 85
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k:Z

    .line 86
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->m:Z

    .line 88
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->n:Z

    .line 89
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    .line 92
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    .line 94
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    .line 97
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->w:Landroid/graphics/Rect;

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->x:Landroid/graphics/Rect;

    .line 100
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->y:F

    .line 101
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v2, v4, p3, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->z:Landroid/view/animation/PathInterpolator;

    .line 102
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v4, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->A:Landroid/view/animation/PathInterpolator;

    .line 103
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v4, p3, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->B:Landroid/view/animation/PathInterpolator;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    const-wide/16 v2, 0x0

    .line 106
    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->E:J

    .line 107
    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    const-wide/16 v2, -0x1

    .line 108
    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->G:J

    .line 109
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    .line 110
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->I:I

    .line 111
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->J:Lcom/oplus/camera/ComboPreferences;

    .line 112
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    .line 113
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->L:I

    .line 114
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->M:Z

    .line 115
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->N:Z

    .line 116
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->O:F

    .line 128
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p2, p1, p0, v1}, Lcom/oplus/camera/ui/inverse/e;->registerBackgroundInverse(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method private a(F)F
    .locals 1

    .line 561
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    int-to-float v0, p0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float v0, p0

    add-float/2addr p1, v0

    add-int/lit8 v0, p0, 0x64

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    add-int/lit8 p0, p0, 0x64

    int-to-float p1, p0

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->O:F

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->O:F

    return p1
.end method

.method private a(IIF)I
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    const/16 v0, 0x1f4

    sub-int/2addr p1, p2

    .line 714
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    mul-float/2addr p1, p3

    float-to-int p0, p1

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07073a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x8

    .line 605
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v0, v0

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 606
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    return-object p0
.end method

.method private a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 618
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->D:Landroid/graphics/drawable/ShapeDrawable;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpDampAnimator, start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 626
    new-array v0, v2, [I

    aput p1, v0, v1

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    .line 627
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 628
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f01007f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/menu/setting/down/-$$Lambda$DrawerLayout$qaOpDagCjdOg-qrsZ9_n81oLMis;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/setting/down/-$$Lambda$DrawerLayout$qaOpDagCjdOg-qrsZ9_n81oLMis;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 639
    :cond_0
    new-array v4, v2, [I

    aput p1, v4, v1

    aput p2, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 642
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    if-nez p1, :cond_1

    .line 643
    new-instance p1, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$1;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    .line 646
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz p2, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a(I)V

    .line 647
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 649
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz p1, :cond_3

    .line 650
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    const/16 v0, 0x1c2

    invoke-interface {p1, p2, v3, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(ZZI)V

    .line 653
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 698
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    return-void
.end method

.method private a(Landroid/view/MotionEvent;F)V
    .locals 8

    .line 521
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    .line 522
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 525
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setDealStateFromOut(I)V

    .line 527
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->n:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 528
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 529
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(II)V

    goto/16 :goto_0

    .line 531
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v1, v4

    div-float v1, p2, v1

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDrawerSettingEventUp, speed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mScrollTo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", offsetUpDownY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxScroll: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DrawerLayout"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x3f99999a    # 1.2f

    .line 536
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    div-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_4

    :cond_2
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    if-le v1, v4, :cond_4

    .line 538
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_4

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v3, :cond_4

    .line 540
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 541
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    invoke-direct {p0, p1, v1, v3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(IIZ)V

    goto :goto_0

    .line 543
    :cond_4
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 545
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    if-eq p1, v1, :cond_5

    .line 546
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(II)V

    .line 551
    :cond_5
    :goto_0
    iput v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    .line 552
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    .line 554
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz p1, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 555
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(Z)V

    .line 556
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->e()V

    :cond_6
    return-void
.end method

.method private a(FF)Z
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->w:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->w:Landroid/graphics/Rect;

    .line 469
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->w:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->N:Z

    return p1
.end method

.method private b(F)V
    .locals 1

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->n:Z

    .line 568
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    .line 569
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->requestLayout()V

    return-void
.end method

.method private b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 657
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(IIZ)V

    return-void
.end method

.method private b(IIZ)V
    .locals 6

    .line 661
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 666
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c(II)I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(ZZI)V

    :cond_1
    const/4 v0, 0x2

    .line 669
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    .line 670
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    const v4, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(IIF)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_3

    .line 673
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->A:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 675
    :cond_3
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    :goto_1
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;

    invoke-direct {v2, p0, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 690
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    if-nez p3, :cond_4

    .line 691
    new-instance p3, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$1;)V

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    .line 694
    :cond_4
    iget-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-nez p3, :cond_5

    .line 695
    new-array p3, v0, [F

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    aput v2, p3, v3

    const/4 v2, 0x0

    aput v2, p3, v1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    .line 696
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->B:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 698
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/down/-$$Lambda$DrawerLayout$XM906D_UWsT_wQEI1_QKLQrxqhQ;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/down/-$$Lambda$DrawerLayout$XM906D_UWsT_wQEI1_QKLQrxqhQ;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 702
    :cond_5
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a(I)V

    .line 703
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 704
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 706
    iget-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c(II)I

    move-result v0

    invoke-static {p3, v0}, Lcom/oplus/camera/ui/menu/g;->a(ZI)V

    .line 708
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startAnimator, mbOpen: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", start: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", end: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrawerLayout"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 632
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    int-to-float p1, p1

    .line 633
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(F)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;F)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setScroll(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setAnimationState(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->N:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    return p1
.end method

.method private c(II)I
    .locals 0

    sub-int/2addr p1, p2

    .line 718
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    const/high16 p0, 0x437a0000    # 250.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    return-object p0
.end method

.method private c(F)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    .line 588
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 590
    :cond_0
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/ui/inverse/e;->getBackgroundColor(Landroid/view/View;I)I

    move-result p1

    .line 589
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->m()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->J:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    return-object p0
.end method

.method private getViewOffsetPercent()F
    .locals 2

    .line 265
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->p:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    return-object p0
.end method

.method public static synthetic lambda$XM906D_UWsT_wQEI1_QKLQrxqhQ(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$qaOpDagCjdOg-qrsZ9_n81oLMis(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "DrawerLayout"

    const-string v1, "onArrowClick"

    .line 763
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 767
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz p0, :cond_0

    .line 768
    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->f()V

    :cond_0
    return-void
.end method

.method private setAnimationState(I)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimationState, mAnimationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->I:I

    return-void
.end method

.method private setDealStateFromOut(I)V
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDealStateFromOut, mDealEventFromOutState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    return-void
.end method

.method private setScroll(F)V
    .locals 4

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->n:Z

    .line 574
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->requestLayout()V

    .line 577
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v0, :cond_1

    .line 578
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    int-to-float v3, v1

    sub-float/2addr v3, p1

    .line 579
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr p0, v2

    div-float/2addr v3, p0

    .line 580
    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(F)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f09029b

    .line 138
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    const v0, 0x7f090331

    .line 139
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$1;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 920
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    .line 921
    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->L:I

    .line 922
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->M:Z

    return-void
.end method

.method public a(J)Z
    .locals 3

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasDealEvent, mDownEventTimeFromOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->E:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->E:J

    cmp-long p1, v0, p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    .line 908
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    :cond_1
    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 293
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 294
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->L:I

    if-nez v2, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :cond_0
    const/4 v2, 0x4

    .line 300
    iget v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    if-ne v2, v4, :cond_2

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/16 v1, 0x5a

    .line 303
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->L:I

    if-ne v1, v2, :cond_1

    .line 304
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 310
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "DrawerLayout"

    const/4 v7, 0x0

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->u()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    .line 314
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    cmpl-float p1, v4, p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 319
    :cond_3
    invoke-direct {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setDealStateFromOut(I)V

    goto :goto_2

    .line 315
    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setDealStateFromOut(I)V

    .line 316
    iget-wide v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    iput-wide v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->E:J

    move v7, v3

    .line 322
    :goto_2
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    .line 323
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    .line 324
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    .line 325
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 328
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->r:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    .line 333
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->s:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    .line 337
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 341
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dealTouchEvent, dealDown: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 346
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e()Z

    move-result v2

    if-nez v2, :cond_9

    iget-wide v8, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->G:J

    iget-wide v10, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    cmp-long v2, v8, v10

    if-nez v2, :cond_9

    return v7

    .line 350
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(FF)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v3, :cond_a

    goto/16 :goto_7

    .line 358
    :cond_a
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    if-eqz v2, :cond_1d

    :cond_b
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->m:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v2, :cond_c

    .line 362
    invoke-interface {v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->k()Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_5

    .line 377
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p0, "dealTouchEvent, animation is running"

    .line 378
    invoke-static {v6, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 383
    :cond_d
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_f

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v3, p1, :cond_e

    .line 385
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    :cond_e
    return v3

    .line 391
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_1a

    if-eq v2, v5, :cond_10

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1a

    goto/16 :goto_4

    .line 393
    :cond_10
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    if-nez p1, :cond_11

    .line 394
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    .line 395
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    .line 396
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    goto/16 :goto_4

    .line 400
    :cond_11
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    if-nez p1, :cond_13

    .line 401
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_12

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    sub-float p1, v1, p1

    .line 402
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_12

    .line 403
    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setDealStateFromOut(I)V

    .line 404
    iget-wide v8, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    iput-wide v8, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->E:J

    goto :goto_3

    .line 405
    :cond_12
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_13

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e:F

    sub-float/2addr v0, p1

    .line 406
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_13

    .line 407
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setDealStateFromOut(I)V

    .line 411
    :cond_13
    :goto_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    if-ne v3, p1, :cond_15

    .line 412
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 414
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    if-nez p1, :cond_14

    .line 415
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    invoke-interface {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(Z)V

    :cond_14
    return v7

    .line 421
    :cond_15
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f:F

    sub-float/2addr p1, v0

    cmpl-float v0, v4, p1

    if-ltz v0, :cond_16

    const-string p0, "dealTouchEvent, to is 0"

    .line 424
    invoke-static {v6, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 429
    :cond_16
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-nez v0, :cond_17

    .line 430
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v0, :cond_17

    .line 433
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(Z)V

    .line 437
    :cond_17
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_18

    .line 438
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setScroll(F)V

    goto :goto_4

    .line 439
    :cond_18
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_19

    .line 440
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(F)V

    goto :goto_4

    .line 441
    :cond_19
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1c

    .line 442
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setScroll(F)V

    goto :goto_4

    .line 450
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealTouchEvent, mDealEventFromOutState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    if-eq v5, v0, :cond_1b

    .line 453
    iput-boolean v7, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    .line 454
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    return v7

    .line 458
    :cond_1b
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Landroid/view/MotionEvent;F)V

    :cond_1c
    :goto_4
    return v3

    .line 363
    :cond_1d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealTouchEvent, mbEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHeightNone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbOpen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbTouch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbRollVisibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->m:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canResponseDrawerTouch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v2, :cond_1e

    .line 365
    invoke-interface {v2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->k()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_6

    :cond_1e
    move v3, v7

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v6, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 369
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    if-eqz v0, :cond_1f

    .line 370
    iput-boolean v7, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    .line 371
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Landroid/view/MotionEvent;F)V

    :cond_1f
    return v7

    .line 351
    :cond_20
    :goto_7
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 352
    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->F:J

    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->G:J

    .line 353
    iput-boolean v7, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g:Z

    .line 354
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Landroid/view/MotionEvent;F)V

    return v7
.end method

.method public b()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    if-eq v0, v1, :cond_0

    .line 862
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(II)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 0

    .line 871
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    return p0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 875
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    const/4 v1, 0x1

    .line 876
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    const/4 v1, 0x0

    .line 877
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    .line 878
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    .line 879
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    return-void
.end method

.method public getEnableTouch()Z
    .locals 0

    .line 867
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    return p0
.end method

.method public h()Z
    .locals 0

    .line 887
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k:Z

    return p0
.end method

.method public i()Z
    .locals 0

    .line 891
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->I:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 1

    .line 895
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->I:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Z
    .locals 2

    .line 899
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setBackgroundResource(I)V

    .line 934
    :cond_1
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    .line 935
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setScroll(F)V

    .line 936
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->J:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_subsetting_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090299

    .line 134
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent, mbEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnimationRun: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    .line 274
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 201
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->J:Lcom/oplus/camera/ComboPreferences;

    const-string v3, "pref_subsetting_key"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getMeasuredWidth()I

    move-result v3

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getViewOffsetPercent()F

    move-result v4

    iput v4, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->y:F

    .line 206
    iget v4, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v5, v4, :cond_0

    move v4, v6

    move v7, v4

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    move/from16 v7, p3

    .line 210
    :goto_0
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v3, v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    add-int/2addr v9, v4

    iget-object v11, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    .line 212
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    div-int/2addr v11, v10

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    .line 213
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    .line 210
    invoke-virtual {v8, v9, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 215
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    const/16 v13, 0x8

    const v14, 0x7f07073a

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v7, :cond_3

    .line 216
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->B:Landroid/view/animation/PathInterpolator;

    iget v8, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->y:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v7

    iput v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    .line 218
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    iget v8, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    invoke-virtual {v7, v8}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setAlpha(F)V

    .line 220
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    iget v8, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->y:F

    invoke-interface {v7, v8}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$c;->setOffset(F)V

    .line 221
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v3, v8

    div-int/2addr v8, v10

    add-int/2addr v8, v4

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    .line 222
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v11, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    .line 223
    invoke-virtual {v11}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    div-int/2addr v11, v10

    add-int/2addr v11, v4

    iget-object v5, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    .line 224
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v12, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    invoke-virtual {v12}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v5, v12

    .line 221
    invoke-virtual {v7, v8, v9, v11, v5}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->layout(IIII)V

    .line 226
    iget v5, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    if-ne v15, v5, :cond_2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06004b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 229
    new-array v8, v13, [F

    int-to-float v7, v7

    aput v7, v8, v6

    aput v7, v8, v15

    aput v7, v8, v10

    const/4 v9, 0x3

    aput v7, v8, v9

    const/4 v9, 0x4

    aput v7, v8, v9

    const/4 v9, 0x5

    aput v7, v8, v9

    const/4 v9, 0x6

    aput v7, v8, v9

    const/4 v9, 0x7

    aput v7, v8, v9

    .line 230
    iget-object v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    iget v9, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    cmpl-float v9, v16, v9

    if-nez v9, :cond_1

    move v5, v6

    goto :goto_1

    .line 231
    :cond_1
    sget-object v9, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v9, v0, v5}, Lcom/oplus/camera/ui/inverse/e;->getBackgroundColor(Landroid/view/View;I)I

    move-result v5

    :goto_1
    new-instance v9, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 230
    invoke-direct {v0, v5, v9}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 233
    :cond_2
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setBackgroundResource(I)V

    .line 237
    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 238
    iget v7, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 239
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    div-int/2addr v7, v10

    add-int/2addr v7, v4

    iget-object v8, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    .line 240
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v1, v8

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    .line 241
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    div-int/2addr v3, v10

    add-int/2addr v4, v3

    .line 239
    invoke-virtual {v5, v7, v8, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 245
    :cond_4
    iget v1, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    const/4 v3, 0x4

    if-ne v3, v1, :cond_7

    if-eqz v2, :cond_7

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 248
    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->M:Z

    if-eqz v2, :cond_5

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 252
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 253
    new-array v3, v13, [F

    aput v16, v3, v6

    aput v16, v3, v15

    aput v16, v3, v10

    const/4 v4, 0x3

    aput v16, v3, v4

    int-to-float v2, v2

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v4, 0x5

    aput v2, v3, v4

    const/4 v4, 0x6

    aput v2, v3, v4

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 254
    iget v2, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    cmpl-float v2, v16, v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 255
    :cond_6
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/ui/inverse/e;->getBackgroundColor(Landroid/view/View;I)I

    move-result v6

    :goto_3
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 254
    invoke-direct {v0, v6, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 256
    :cond_7
    iget v1, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    if-ne v15, v1, :cond_8

    .line 257
    invoke-virtual {v0, v6}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setBackgroundResource(I)V

    .line 258
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 260
    :cond_8
    iget v1, v0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->H:F

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c(F)V

    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    .line 176
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->measureChild(Landroid/view/View;II)V

    .line 177
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->u:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 179
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {p0, v3, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->measureChild(Landroid/view/View;II)V

    .line 181
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->getMeasuredHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 184
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->v:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {p0, v4, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->measureChild(Landroid/view/View;II)V

    :cond_1
    const/4 p1, 0x1

    if-nez v3, :cond_2

    move v1, p1

    .line 188
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k:Z

    .line 189
    iput v3, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    .line 191
    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->K:I

    if-ne p1, p2, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07054f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    :cond_3
    int-to-float p1, v2

    .line 195
    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->t:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 595
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c(F)V

    .line 597
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->C:Landroid/graphics/drawable/ShapeDrawable;

    if-ne p1, v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEnableTouch(Z)V
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableTouch, mbTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled, mbEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDealEventFromOutState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->o:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    .line 504
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l:Z

    .line 505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public setOnDrawerListener(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    return-void
.end method

.method public setOpenAndClose(Z)V
    .locals 2

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOpenAndClose, isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 733
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->w()V

    goto :goto_0

    .line 735
    :cond_0
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->v()V

    .line 739
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eq v0, p1, :cond_7

    .line 740
    :cond_2
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    .line 742
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j:Z

    if-nez p1, :cond_4

    .line 743
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(II)V

    goto :goto_3

    .line 745
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 746
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 749
    :cond_5
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c:I

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d:I

    :goto_2
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    .line 750
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setScroll(F)V

    .line 753
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    if-eqz p1, :cond_7

    .line 754
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a:Z

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->a(Z)V

    :cond_7
    return-void
.end method

.method public setPreferences(Lcom/oplus/camera/ComboPreferences;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->J:Lcom/oplus/camera/ComboPreferences;

    return-void
.end method

.method public setRollVisibility(I)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 849
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->m:Z

    .line 850
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->mSubSettingView:Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraDrawerSettingMenuPanel;->setVisibility(I)V

    :cond_1
    return-void
.end method
