.class public Lcom/oplus/camera/ui/OutScreenButtonBoxView;
.super Landroid/widget/RelativeLayout;
.source "OutScreenButtonBoxView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;
.implements Lcom/oplus/camera/ui/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

.field private b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

.field private c:Lcom/oplus/camera/ui/HighLightInverseTextView;

.field private d:Landroid/os/Handler;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->d:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->d:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->d:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->f:Z

    return-void
.end method

.method private a(IIIIJLandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0100b9

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 134
    iget-object p5, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    new-instance p6, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$7QfVFK_JGpcyDSaPLNsMoa1yyKU;

    move-object v0, p6

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$7QfVFK_JGpcyDSaPLNsMoa1yyKU;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView;IIII)V

    invoke-virtual {p5, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    iget-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic a(IIIILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    int-to-float v1, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setAlpha(F)V

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    int-to-float p2, p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->requestLayout()V

    return-void
.end method

.method private synthetic a(IILandroid/animation/Animator;)V
    .locals 8

    .line 85
    new-instance v7, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;

    new-instance p3, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$Mhq-sladbQT6Ynz0G3v59mov-3Y;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$Mhq-sladbQT6Ynz0G3v59mov-3Y;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView;)V

    invoke-direct {v7, p3}, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic a(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setVisibility(I)V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->f:Z

    .line 75
    iget-object v2, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setAlpha(F)V

    .line 77
    iget-object v1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->requestLayout()V

    .line 78
    iget-object v1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->d:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$IFX1LKrhS1JyHIwr86rx8hTUhZQ;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$IFX1LKrhS1JyHIwr86rx8hTUhZQ;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method private synthetic c()V
    .locals 10

    .line 79
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getPaddingBottom()I

    move-result v1

    sub-int v3, v0, v1

    .line 80
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->getPaddingStart()I

    move-result v1

    sub-int v4, v0, v1

    .line 84
    new-instance v9, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;

    new-instance v0, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$s3aHNYEElUZ6jhUPTwTg8eZ2Jpo;

    invoke-direct {v0, p0, v4, v3}, Lcom/oplus/camera/ui/-$$Lambda$OutScreenButtonBoxView$s3aHNYEElUZ6jhUPTwTg8eZ2Jpo;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView;II)V

    invoke-direct {v9, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView$a;-><init>(Lcom/oplus/camera/ui/OutScreenButtonBoxView$a$a;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x7d0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic lambda$7QfVFK_JGpcyDSaPLNsMoa1yyKU(Lcom/oplus/camera/ui/OutScreenButtonBoxView;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$IFX1LKrhS1JyHIwr86rx8hTUhZQ(Lcom/oplus/camera/ui/OutScreenButtonBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c()V

    return-void
.end method

.method public static synthetic lambda$Mhq-sladbQT6Ynz0G3v59mov-3Y(Lcom/oplus/camera/ui/OutScreenButtonBoxView;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic lambda$s3aHNYEElUZ6jhUPTwTg8eZ2Jpo(Lcom/oplus/camera/ui/OutScreenButtonBoxView;IILandroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a(IILandroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->e:Landroid/animation/ValueAnimator;

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ComboPreferences;)Z
    .locals 2

    const-string v0, "key_out_preview_guide"

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBgView()Lcom/oplus/camera/ui/widget/SplitBackgroundView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0902a8

    .line 39
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    const v0, 0x7f0902a6

    .line 40
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    const v0, 0x7f0902a9

    .line 41
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/HighLightInverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->d:Landroid/os/Handler;

    return-void
.end method

.method public setHighLight(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setHighLight(Z)V

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setHighLight(Z)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setImageResource(I)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setInverseColor(Z)V

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->c:Lcom/oplus/camera/ui/HighLightInverseTextView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/HighLightInverseTextView;->setInverseColor(Z)V

    return-void
.end method

.method public setLightBackground(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->b:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setLightBackground(Z)V

    return-void
.end method
