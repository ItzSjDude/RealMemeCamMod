.class public Lcom/oplus/camera/ui/widget/InertiaZoomBar;
.super Landroid/view/View;
.source "InertiaZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Ljava/lang/String;

.field private C:Landroid/content/res/Resources;

.field private D:Landroid/animation/ValueAnimator;

.field private E:Landroid/animation/ValueAnimator;

.field private F:Landroid/animation/ValueAnimator;

.field private G:Landroid/animation/ValueAnimator;

.field private H:Landroid/animation/ValueAnimator;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/ValueAnimator;

.field private L:Landroid/view/animation/PathInterpolator;

.field private M:Landroid/view/animation/PathInterpolator;

.field private N:Landroid/view/animation/PathInterpolator;

.field private O:Landroid/view/animation/PathInterpolator;

.field private P:Landroid/view/animation/PathInterpolator;

.field private Q:Landroid/view/animation/PathInterpolator;

.field private R:Landroid/view/animation/PathInterpolator;

.field private S:Landroid/view/animation/PathInterpolator;

.field private T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

.field private U:F

.field private V:I

.field private W:Landroid/graphics/Paint;

.field private a:I

.field private aa:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/content/Context;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Path;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    .line 42
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    .line 43
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    .line 44
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    .line 45
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e:I

    .line 46
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    .line 47
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->g:I

    .line 48
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    .line 49
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i:I

    const-wide/16 p3, 0x0

    .line 50
    iput-wide p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j:J

    .line 51
    iput-wide p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->k:J

    const/4 p3, 0x0

    .line 52
    iput p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->l:F

    .line 53
    iput p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->m:F

    .line 54
    iput p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    const/high16 p4, -0x40800000    # -1.0f

    .line 55
    iput p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    .line 56
    iput p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    .line 57
    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    .line 58
    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->r:Z

    .line 59
    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    .line 60
    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    const/4 p4, 0x0

    .line 62
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->u:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    .line 64
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    .line 66
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    .line 67
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    .line 68
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    .line 69
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->B:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 71
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    .line 72
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    .line 73
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    .line 74
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    .line 75
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    .line 76
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    .line 77
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    .line 78
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->L:Landroid/view/animation/PathInterpolator;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->M:Landroid/view/animation/PathInterpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->N:Landroid/view/animation/PathInterpolator;

    .line 83
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->O:Landroid/view/animation/PathInterpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->P:Landroid/view/animation/PathInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->Q:Landroid/view/animation/PathInterpolator;

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->R:Landroid/view/animation/PathInterpolator;

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, p3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->S:Landroid/view/animation/PathInterpolator;

    .line 88
    iput-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->u:Landroid/content/Context;

    .line 110
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->u:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 111
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const p4, 0x7f07068b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e:I

    .line 113
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const p3, 0x7f070687

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const p3, 0x7f07068c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/oplus/camera/util/Util;->a:I

    const p4, 0x7f0706a5

    invoke-static {p1, p4, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->U:F

    .line 118
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060069

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->V:I

    .line 119
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const p3, 0x7f070686

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 120
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 119
    invoke-virtual {p0, p1, p2, p3, p2}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setPadding(IIII)V

    .line 121
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h()V

    .line 122
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Landroid/content/res/Resources;)V

    .line 123
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i()V

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 452
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 453
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/InertiaZoomBar;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/graphics/Paint;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    .line 551
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    int-to-float p2, p2

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 552
    iput p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    .line 555
    :cond_0
    iget p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    int-to-float p1, p1

    cmpg-float p2, p2, p1

    if-gez p2, :cond_1

    .line 556
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    :cond_1
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 5

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->U:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->V:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->U:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->V:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    const v2, 0x7f060462

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    const v2, 0x7f060460

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->U:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->V:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    const v2, 0x7f070689

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    const v2, 0x7f060463

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->U:F

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->V:I

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    const v2, 0x7f060465

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 468
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    iget v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 0

    .line 771
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->k()V

    .line 772
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/InertiaZoomBar;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i:I

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 472
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 475
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_0

    .line 476
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 477
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v1, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 478
    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    int-to-float v4, v2

    div-float/2addr v4, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 479
    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    int-to-float v4, v2

    div-float/2addr v4, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_1

    .line 483
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 484
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 485
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 486
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 888
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result p1

    .line 889
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 893
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    move p1, v4

    move v0, p1

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_1

    move p1, v3

    move v0, v4

    goto :goto_0

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->m:F

    add-float/2addr p1, v0

    .line 902
    :goto_0
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    .line 903
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz v1, :cond_2

    .line 905
    invoke-interface {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->a()V

    .line 908
    :cond_2
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    .line 909
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz v1, :cond_3

    .line 911
    invoke-interface {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->b()V

    .line 914
    :cond_3
    iget-boolean v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    .line 915
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    .line 916
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz v1, :cond_4

    .line 918
    invoke-interface {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->d()V

    .line 921
    :cond_4
    iget-boolean v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    .line 922
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_5

    .line 923
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz v1, :cond_5

    .line 925
    invoke-interface {v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->c()V

    .line 928
    :cond_5
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 930
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setProgress(F)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/InertiaZoomBar;F)F
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(F)F

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/content/res/Resources;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    return-object p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 494
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->W:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 502
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->x:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    return p0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 506
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 507
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    .line 506
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j()V

    return-void
.end method

.method private getTextBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 511
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 513
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 515
    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    if-eq v2, v3, :cond_3

    .line 516
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 518
    iget-wide v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->k:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 519
    iget-wide v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 520
    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->g:I

    iget-boolean v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->r:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    neg-int v2, v2

    :goto_0
    mul-int/lit16 v2, v2, 0x10e

    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v3, v2

    if-ltz v3, :cond_1

    .line 522
    rem-int/lit16 v3, v3, 0x168

    goto :goto_1

    .line 523
    :cond_1
    rem-int/lit16 v3, v3, 0x168

    add-int/lit16 v3, v3, 0x168

    .line 524
    :goto_1
    iput v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    .line 525
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    goto :goto_2

    .line 527
    :cond_2
    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    iput v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    .line 531
    :cond_3
    :goto_2
    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 533
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->B:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 534
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 535
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->B:Ljava/lang/String;

    iget v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    int-to-float v6, v4

    div-float/2addr v6, v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float/2addr v7, v5

    sub-float/2addr v4, v7

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v2, v5

    sub-float/2addr v4, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->z:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v6, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 540
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method private h()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a()V

    return-void
.end method

.method private i()V
    .locals 9

    const/4 v0, 0x2

    .line 177
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    .line 178
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->L:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/widget/InertiaZoomBar$1;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$1;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/widget/InertiaZoomBar$10;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$10;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    .line 195
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->M:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$11;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$12;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$12;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb7

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->N:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/widget/InertiaZoomBar$13;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$13;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    .line 231
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->O:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$15;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$15;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$16;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$16;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    new-array v1, v0, [I

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v3, 0x7f070687

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, 0x0

    aput v2, v1, v4

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v5, 0x7f070688

    .line 250
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v6, 0x1

    aput v2, v1, v6

    .line 249
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    .line 251
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->P:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$17;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$17;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$2;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    new-array v1, v0, [I

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 298
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 299
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v1, v6

    .line 297
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    .line 300
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->Q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$3;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$4;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    new-array v1, v0, [I

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v3, 0x7f07068b

    .line 338
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v5, 0x7f07068a

    .line 339
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v1, v6

    .line 337
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->R:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$5;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/widget/InertiaZoomBar$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$6;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 369
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    .line 370
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v6

    .line 368
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->S:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/widget/InertiaZoomBar$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$7;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/widget/InertiaZoomBar$8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$8;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private j()V
    .locals 3

    .line 546
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(II)V

    .line 547
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    .line 777
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Z)V

    .line 778
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e(Z)V

    .line 779
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setIsHighlight(Z)V

    .line 781
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz p0, :cond_0

    .line 782
    invoke-interface {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->e()V

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    .line 853
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

.method private m()Z
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    .line 859
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

.method private n()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    .line 865
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

.method private o()Z
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    .line 871
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

.method private p()V
    .locals 2

    const/4 v0, 0x0

    .line 875
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    const/4 v1, 0x1

    .line 876
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d(Z)V

    .line 877
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f(Z)V

    .line 878
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setIsHighlight(Z)V

    .line 880
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz p0, :cond_0

    .line 881
    invoke-interface {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 565
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setProgress(F)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-ltz p1, :cond_1

    .line 607
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 608
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 610
    :goto_1
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    if-ne p1, v0, :cond_2

    return-void

    .line 614
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    if-eqz p2, :cond_6

    .line 617
    iget p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->g:I

    .line 618
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j:J

    .line 619
    iget p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    iget p2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    .line 624
    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->r:Z

    .line 625
    iget-wide v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->k:J

    goto :goto_3

    .line 627
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->h:I

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->f:I

    .line 630
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 635
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 636
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 639
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 641
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 642
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 648
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 652
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 654
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->A:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 655
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 569
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    return p0
.end method

.method public c()V
    .locals 7

    .line 573
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e()V

    :cond_0
    const/4 v0, 0x2

    .line 577
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 578
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 579
    new-instance v3, Lcom/oplus/camera/ui/widget/InertiaZoomBar$9;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$9;-><init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const-wide/16 v3, 0x14d

    const/high16 v5, 0x43a70000    # 334.0f

    div-float/2addr p0, v2

    mul-float/2addr p0, v5

    float-to-long v5, p0

    add-long/2addr v5, v3

    .line 591
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 787
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    if-nez p1, :cond_2

    .line 793
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f07068a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbWidth(I)V

    .line 797
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    .line 662
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 802
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    if-eqz p1, :cond_2

    .line 808
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 811
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f07068b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbWidth(I)V

    .line 812
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->t:Z

    .line 674
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 817
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 822
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->l()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    if-nez p1, :cond_2

    .line 823
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 826
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f070688

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setLineStrokeWidth(I)V

    .line 827
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f070680

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setHighLineStrokeWidth(I)V

    .line 828
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f07068d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbStrokeWidth(I)V

    .line 829
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 834
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->m()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    if-eqz p1, :cond_2

    .line 840
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 843
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f070687

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setLineStrokeWidth(I)V

    .line 844
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setHighLineStrokeWidth(I)V

    .line 845
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->C:Landroid/content/res/Resources;

    const v0, 0x7f07068c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbStrokeWidth(I)V

    .line 846
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 943
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 1

    .line 947
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getProgress()F
    .locals 0

    .line 767
    iget p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 418
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    .line 423
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setProgress(F)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Landroid/graphics/Canvas;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Landroid/graphics/Canvas;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Landroid/graphics/Canvas;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d(Landroid/graphics/Canvas;)V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 706
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 710
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 751
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    if-eqz v0, :cond_2

    .line 752
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p()V

    .line 753
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setPressed(Z)V

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    goto :goto_1

    .line 716
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 717
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 720
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    if-eqz v0, :cond_5

    .line 721
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 723
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 725
    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 726
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 733
    :cond_6
    iget-boolean v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->q:Z

    if-eqz v0, :cond_7

    .line 734
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Landroid/view/MotionEvent;)V

    .line 735
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p()V

    .line 736
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setPressed(Z)V

    goto :goto_0

    .line 740
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->k()V

    .line 741
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Landroid/view/MotionEvent;)V

    .line 742
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p()V

    .line 747
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    goto :goto_1

    .line 712
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->l:F

    .line 763
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setHighLineStrokeWidth(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c:I

    return-void
.end method

.method public setIsHighlight(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->s:Z

    return-void
.end method

.method public setLineStrokeWidth(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b:I

    return-void
.end method

.method public setOnSeekBarListener(Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    .line 442
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->o:F

    .line 444
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->T:Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;

    if-eqz p1, :cond_1

    .line 445
    iget v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->p:F

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;->a(F)V

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->j()V

    return-void
.end method

.method public setScreenMode(I)V
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InertialZoomBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i:I

    return-void
.end method

.method public setThumbStrokeWidth(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d:I

    return-void
.end method

.method public setThumbText(Ljava/lang/String;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->B:Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    :cond_1
    return-void
.end method

.method public setThumbWidth(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a:I

    return-void
.end method
