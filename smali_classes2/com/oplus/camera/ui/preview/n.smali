.class public Lcom/oplus/camera/ui/preview/n;
.super Landroid/widget/RelativeLayout;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;
.implements Lcom/oplus/camera/ui/preview/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/n$c;,
        Lcom/oplus/camera/ui/preview/n$a;,
        Lcom/oplus/camera/ui/preview/n$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:F

.field private C:F

.field private D:Landroid/graphics/PointF;

.field private E:Landroid/graphics/PointF;

.field private F:F

.field private G:F

.field private H:Z

.field private I:Landroid/animation/TimeInterpolator;

.field private J:Landroid/view/animation/Interpolator;

.field private K:Landroid/animation/ValueAnimator;

.field private L:F

.field private M:Lcom/oplus/camera/ui/preview/n$c;

.field private N:Landroid/animation/AnimatorListenerAdapter;

.field private a:I

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/oplus/camera/ui/preview/s;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/preview/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    new-instance p2, Lcom/oplus/camera/ui/preview/n$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oplus/camera/ui/preview/n$a;-><init>(Lcom/oplus/camera/ui/preview/n;Lcom/oplus/camera/ui/preview/n$1;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/n;->b:Ljava/lang/Runnable;

    .line 63
    new-instance p2, Lcom/oplus/camera/ui/preview/n$b;

    invoke-direct {p2, p0, p3}, Lcom/oplus/camera/ui/preview/n$b;-><init>(Lcom/oplus/camera/ui/preview/n;Lcom/oplus/camera/ui/preview/n$1;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/n;->c:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    .line 66
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    .line 67
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->f:I

    .line 68
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->g:I

    .line 69
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->h:I

    .line 70
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->i:I

    .line 71
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->j:I

    .line 72
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->k:I

    .line 73
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->l:I

    .line 74
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->m:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->n:I

    .line 76
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    .line 80
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    .line 81
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    .line 82
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->s:Landroid/widget/TextView;

    .line 83
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    .line 84
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    .line 85
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->v:Landroid/widget/TextView;

    .line 86
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    .line 87
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    .line 88
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/n;->y:Z

    .line 89
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    .line 90
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    const/high16 p4, -0x40800000    # -1.0f

    .line 91
    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->B:F

    .line 92
    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->C:F

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    .line 95
    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    .line 96
    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    .line 97
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    .line 98
    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p4, p0, Lcom/oplus/camera/ui/preview/n;->I:Landroid/animation/TimeInterpolator;

    .line 99
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->J:Landroid/view/animation/Interpolator;

    .line 100
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    const/high16 p4, 0x3f800000    # 1.0f

    .line 101
    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->L:F

    .line 102
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->M:Lcom/oplus/camera/ui/preview/n$c;

    .line 104
    new-instance p3, Lcom/oplus/camera/ui/preview/n$1;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/preview/n$1;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->N:Landroid/animation/AnimatorListenerAdapter;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0704bd

    .line 131
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->f:I

    const p4, 0x7f0704bc

    .line 132
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->g:I

    const p4, 0x7f07044d

    .line 133
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->i:I

    const p4, 0x7f07044e

    .line 134
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->h:I

    const p4, 0x7f070452

    .line 135
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->j:I

    const p4, 0x7f07044f

    .line 136
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->k:I

    const p4, 0x7f0704c0

    .line 137
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->l:I

    const p4, 0x7f0704be

    .line 138
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/preview/n;->m:I

    const p4, 0x7f070450

    .line 139
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/preview/n;->n:I

    const p3, 0x7f0100cc

    .line 140
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/ui/preview/n;->J:Landroid/view/animation/Interpolator;

    .line 141
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 143
    new-array p1, p1, [F

    aput v1, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/preview/-$$Lambda$n$QTgl4PKG4LN4-eEPUCmG8NWSAI0;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$n$QTgl4PKG4LN4-eEPUCmG8NWSAI0;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/n;->N:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const p1, 0x7f09018a

    .line 162
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->setId(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/n;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/n;)Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    return-object p0
.end method

.method private a(FF)V
    .locals 6

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz v0, :cond_0

    .line 455
    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    move v1, p1

    move v2, p2

    .line 456
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(FFIII)V

    .line 457
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getAlpha()F

    move-result p1

    .line 458
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    sget-object p2, Lcom/oplus/camera/ui/preview/n;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 459
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private a(FFZ)V
    .locals 7

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 666
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/n;->a(FFZZJ)V

    return-void
.end method

.method private a(FFZZJ)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 671
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p3, :cond_2

    .line 674
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 675
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->c:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 676
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 677
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/n;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->c:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 679
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 680
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 681
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 682
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method private a(I)V
    .locals 6

    .line 695
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 696
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRotation()F

    move-result v0

    float-to-int v1, v0

    .line 697
    invoke-static {v1, p1}, Lcom/oplus/camera/ui/RotateImageView;->c(II)J

    move-result-wide v2

    .line 698
    invoke-static {v1, p1}, Lcom/oplus/camera/ui/RotateImageView;->b(II)F

    move-result p1

    add-float/2addr p1, v0

    .line 700
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput p1, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 701
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 702
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(IIZ)V
    .locals 7

    .line 417
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 418
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    int-to-float p1, p1

    .line 424
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->b(F)F

    move-result v2

    int-to-float p1, p2

    .line 425
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->c(F)F

    move-result v3

    if-eqz p3, :cond_3

    .line 428
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->getAlpha()F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p2, 0x0

    .line 430
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-lez p3, :cond_2

    .line 431
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    sget-object v1, Lcom/oplus/camera/ui/preview/n;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p1, v4, v0

    const/4 p1, 0x1

    aput p2, v4, p1

    invoke-static {p3, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 433
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 435
    new-instance p2, Lcom/oplus/camera/ui/preview/n$2;

    invoke-direct {p2, p0, v2, v3}, Lcom/oplus/camera/ui/preview/n$2;-><init>(Lcom/oplus/camera/ui/preview/n;FF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 444
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/ui/preview/n;->a(FF)V

    :goto_1
    return-void

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    iget v4, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(FFIII)V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setRotation(F)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00d7

    .line 166
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/ui/preview/n;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 167
    new-instance p1, Lcom/oplus/camera/ui/preview/-$$Lambda$n$JxbP8c3M2Q_3LFygzSxqHKObnmQ;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$n$JxbP8c3M2Q_3LFygzSxqHKObnmQ;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_0

    const p1, 0x7f09018d

    .line 176
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    const p1, 0x7f09018c

    .line 177
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    .line 178
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$n$rU1Yx006DxsePhrLYwKoUM4qOCo;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$n$rU1Yx006DxsePhrLYwKoUM4qOCo;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f09018e

    .line 188
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->v:Landroid/widget/TextView;

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    const p1, 0x7f090157

    .line 192
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    const p1, 0x7f090156

    .line 193
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$n$64K9V7jIyMTZz9MdAQdK0PRM78I;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$n$64K9V7jIyMTZz9MdAQdK0PRM78I;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f090158

    .line 202
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->s:Landroid/widget/TextView;

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-nez p1, :cond_2

    const p1, 0x7f09015a

    .line 206
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    .line 207
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setOnSeekbarChangeListener(Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer$a;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/n;FF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->a(FF)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->K()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 290
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 291
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 292
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/s;->L()V

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/n;->h()V

    .line 351
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/n;->j()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 352
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    .line 353
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    return v4

    .line 309
    :cond_2
    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    const/high16 v5, -0x41000000    # -0.5f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    sub-float/2addr v3, v5

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    sub-float/2addr p1, v5

    .line 314
    iget-boolean v5, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    if-eqz v5, :cond_3

    .line 315
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    float-to-int v6, v6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, p1

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/oplus/camera/ui/preview/s;->b(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 320
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/oplus/camera/ui/preview/n;->d(II)V

    goto :goto_0

    :cond_3
    move v5, v1

    .line 324
    :cond_4
    :goto_0
    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    if-eqz v6, :cond_5

    .line 325
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    float-to-int v6, v6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, p1

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/oplus/camera/ui/preview/s;->b(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 329
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 330
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/preview/n;->c(II)V

    .line 334
    :cond_5
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    if-eqz v5, :cond_6

    .line 337
    iput v0, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    .line 338
    iput v2, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    .line 341
    :cond_6
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    :cond_7
    return v4

    .line 297
    :cond_8
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    return v1

    .line 298
    :cond_a
    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/preview/n;->B:F

    .line 299
    iput v2, p0, Lcom/oplus/camera/ui/preview/n;->C:F

    .line 300
    iget p1, p0, Lcom/oplus/camera/ui/preview/n;->B:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->F:F

    .line 301
    iget p1, p0, Lcom/oplus/camera/ui/preview/n;->C:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->G:F

    return v4

    :cond_b
    :goto_2
    return v1
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/s;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/n;->g()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;F)Z
    .locals 4

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    cmpg-float v0, v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    sub-float/2addr v0, v3

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 217
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    sub-float/2addr v0, p1

    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private b(F)F
    .locals 5

    .line 368
    iget v0, p0, Lcom/oplus/camera/ui/preview/n;->j:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->n:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p0, v0

    int-to-float v0, v3

    sub-float/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/n;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    return p0
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/n;->a(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    .line 181
    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/s;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/n;->i()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(F)F
    .locals 5

    .line 374
    iget v0, p0, Lcom/oplus/camera/ui/preview/n;->k:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->n:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p0, v0

    int-to-float v0, v3

    sub-float/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/n;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    return p0
.end method

.method private synthetic c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 169
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/n;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/n;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/n;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMovingExposure, mbIsStartMovingFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbIsStartMovingExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusIndicatorRotateLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    if-nez v1, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/n;->h:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    .line 231
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v2

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->i:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    add-float/2addr v2, p0

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMovingExposure, mbIsStartMovingExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMovingExposurePointf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusIndicatorRotateLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->j:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/n;->k:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/s;->a(FFII)V

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->D:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMovingFocus, mbIsStartMovingFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbIsStartMovingExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusIndicatorRotateLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->z:Z

    if-nez v1, :cond_0

    .line 255
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    .line 258
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/n;->f:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    .line 259
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v2

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->g:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    add-float/2addr v2, p0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMovingFocus, mbIsStartMovingFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMovingFocusPointf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusIndicatorRotateLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->A:Z

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oplus/camera/ui/preview/n;->l:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/n;->m:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/s;->b(FFII)V

    .line 275
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->E:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic lambda$64K9V7jIyMTZz9MdAQdK0PRM78I(Lcom/oplus/camera/ui/preview/n;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JxbP8c3M2Q_3LFygzSxqHKObnmQ(Lcom/oplus/camera/ui/preview/n;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->c(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QTgl4PKG4LN4-eEPUCmG8NWSAI0(Lcom/oplus/camera/ui/preview/n;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$rU1Yx006DxsePhrLYwKoUM4qOCo(Lcom/oplus/camera/ui/preview/n;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 723
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/s;->i(Z)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 713
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/s;->a(F)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 363
    iput p2, p0, Lcom/oplus/camera/ui/preview/n;->d:I

    .line 364
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->e:I

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 707
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    neg-int p1, p1

    .line 708
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 466
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 467
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 468
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 474
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setLockedState(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/ui/preview/n;->a(ZZZ)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 7

    .line 584
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    const-string v1, "FocusIndicatorRotateLayout"

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 591
    iget p3, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showSuccess, short circle, aEAFLocked: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 597
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 598
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v5, 0x64

    move-object v0, p0

    move v4, p1

    .line 599
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/n;->a(FFZZJ)V

    const/4 p1, 0x2

    .line 600
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    return-void

    .line 585
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showSuccess, mbForceDisableFocusIndicator: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isExposureAdjusting: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->d(II)V

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->c(II)V

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/n;->a(IIZ)V

    .line 383
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/s;->s()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->a(Z)V

    const/4 p1, 0x1

    .line 384
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 482
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    return-void
.end method

.method public b(ZZ)V
    .locals 7

    .line 605
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    const-string v1, "FocusIndicatorRotateLayout"

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    iget p2, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showFail, short circle, mState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 618
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 619
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v5, 0x64

    move-object v0, p0

    move v4, p1

    .line 620
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/n;->a(FFZZJ)V

    const/4 p1, 0x2

    .line 621
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    return-void

    .line 606
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showFail, mbForceDisableFocusIndicator: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isExposureAdjusting: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->isShown()Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 9

    .line 546
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    const-string v1, "FocusIndicatorRotateLayout"

    if-eqz v0, :cond_0

    const-string p0, "showStart, mbForceDisableFocusIndicator is true."

    .line 547
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->e()V

    .line 554
    iget v0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    if-eqz v0, :cond_1

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStart, short circle, mState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 561
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    const v1, 0x3f99999a    # 1.2f

    .line 562
    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/camera/ui/preview/n;->a(FFZ)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0xfa

    move-object v2, p0

    .line 563
    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/ui/preview/n;->a(FFZZJ)V

    .line 564
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/n;->k()V

    const/4 v0, 0x1

    .line 565
    iput v0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    return-void
.end method

.method public c(II)V
    .locals 3

    int-to-float p1, p1

    .line 388
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 389
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/n;->c(F)F

    move-result p2

    .line 390
    iget v0, p0, Lcom/oplus/camera/ui/preview/n;->f:I

    .line 391
    iget v1, p0, Lcom/oplus/camera/ui/preview/n;->g:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 397
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 398
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 487
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->v:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->v:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    if-eqz p1, :cond_1

    .line 495
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 497
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/s;->G()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    const v0, 0x7f08042f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->u:Landroid/widget/ImageView;

    const v0, 0x7f080467

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/s;->J()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setToggleViewEnable(Z)V

    .line 511
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/s;->D()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 512
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->d()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/n;->setManualExposureEnable(Z)V

    goto :goto_3

    .line 514
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/n;->setManualExposureEnable(Z)V

    :goto_3
    return-void
.end method

.method public d(II)V
    .locals 3

    int-to-float p1, p1

    .line 402
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 403
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/n;->c(F)F

    move-result p2

    .line 405
    iget v0, p0, Lcom/oplus/camera/ui/preview/n;->h:I

    .line 406
    iget v1, p0, Lcom/oplus/camera/ui/preview/n;->i:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/oplus/camera/ui/preview/n;->o:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 411
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 412
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 413
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->b(Z)V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 625
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/n;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    const/4 v1, 0x1

    .line 637
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/n;->b(Z)V

    .line 638
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/n;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 639
    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/camera/ui/preview/n;->a(FFZ)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->x:Z

    return-void
.end method

.method public f()Z
    .locals 0

    .line 691
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/n;->H:Z

    return p0
.end method

.method public getAlpha()F
    .locals 0

    .line 662
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->L:F

    return p0
.end method

.method public getExposureRectWidth()I
    .locals 0

    .line 541
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->j:I

    return p0
.end method

.method public getFocusRectWidth()I
    .locals 0

    .line 537
    iget p0, p0, Lcom/oplus/camera/ui/preview/n;->l:I

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 653
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 655
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->M:Lcom/oplus/camera/ui/preview/n$c;

    if-eqz p0, :cond_0

    .line 656
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n$c;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 644
    iput p1, p0, Lcom/oplus/camera/ui/preview/n;->L:F

    .line 645
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setAlpha(F)V

    .line 646
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 648
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->s:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setFocusManager(Lcom/oplus/camera/ui/preview/s;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->p:Lcom/oplus/camera/ui/preview/s;

    return-void
.end method

.method public setManualExposureEnable(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/n;->y:Z

    .line 520
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setVisibility(I)V

    return-void
.end method

.method public setMoveDistance(F)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n;->w:Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ExposureSeekbarContainer;->setMoveDistance(F)V

    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/oplus/camera/ui/preview/n$c;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n;->M:Lcom/oplus/camera/ui/preview/n$c;

    return-void
.end method
