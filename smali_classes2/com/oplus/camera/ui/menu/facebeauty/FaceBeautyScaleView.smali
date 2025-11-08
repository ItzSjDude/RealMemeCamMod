.class public Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;
.super Landroid/widget/LinearLayout;
.source "FaceBeautyScaleView.java"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:F

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a:Z

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b:F

    .line 23
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->c:F

    .line 24
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ecccccd    # 0.4f

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p1, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->d:Landroid/view/animation/Interpolator;

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    .line 26
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->f:F

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    .line 35
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->f:F

    return p1
.end method

.method private a()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b:F

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->f:F

    .line 42
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->c:F

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b(Z)V

    .line 72
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    if-nez v1, :cond_5

    const/4 v1, 0x2

    .line 73
    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b:F

    :goto_0
    aput v4, v2, v0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->c:F

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "brightnessHolder"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 74
    new-array v4, v1, [F

    if-eqz p1, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->f:F

    :goto_2
    aput v6, v4, v0

    if-eqz p1, :cond_3

    const v3, 0x3f6b851f    # 0.92f

    :cond_3
    aput v3, v4, v5

    const-string v3, "scaleHolder"

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 75
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v0

    aput-object v3, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v1, 0xc8

    goto :goto_3

    :cond_4
    const-wide/16 v1, 0x154

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->f:F

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->b:F

    return p1
.end method

.method private b(Z)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

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
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    .line 102
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->e:Z

    if-nez p1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;F)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->setScale(F)V

    return-void
.end method

.method private setScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->setScaleX(F)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->setScaleY(F)V

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a:Z

    if-eqz v0, :cond_2

    .line 49
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

    .line 58
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Z)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/FaceBeautyScaleView;->a(Z)V

    .line 65
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
