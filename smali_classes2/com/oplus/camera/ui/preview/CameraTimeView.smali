.class public Lcom/oplus/camera/ui/preview/CameraTimeView;
.super Landroid/widget/LinearLayout;
.source "CameraTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/CameraTimeView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/animation/PathInterpolator;

.field private B:Z

.field private a:I

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private e:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private f:Lcom/oplus/camera/ui/inverse/InverseImageView;

.field private g:Lcom/oplus/camera/ui/inverse/InverseImageView;

.field private h:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private i:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private j:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private k:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Lcom/oplus/camera/ui/preview/CameraTimeView$a;

.field private u:I

.field private v:I

.field private w:Lcom/oplus/camera/ui/inverse/d;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/animation/AnimatorSet;

.field private z:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    .line 62
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    const/4 p2, 0x0

    .line 64
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    .line 65
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 66
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 67
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 68
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 69
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 70
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 71
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 72
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 73
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->l:Landroid/view/View;

    .line 74
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->m:I

    .line 75
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->n:I

    .line 76
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->o:I

    .line 77
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    .line 78
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    .line 79
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->r:Z

    .line 80
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->s:Z

    .line 81
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->t:Lcom/oplus/camera/ui/preview/CameraTimeView$a;

    .line 82
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->u:I

    .line 83
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    .line 84
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    .line 86
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    .line 87
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    .line 88
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {p1, v0, p3, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->z:Landroid/view/animation/PathInterpolator;

    .line 89
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, p3, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->A:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->B:Z

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/util/Size;
    .locals 1

    .line 468
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getPreviewFrameWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getPreviewFrameWidth()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    .line 469
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private a(FF)Landroid/view/animation/AnimationSet;
    .locals 1

    .line 578
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 579
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p1, 0x12c

    .line 580
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    return p1
.end method

.method private b(JZ)V
    .locals 6

    .line 623
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const-string v1, "CameraTimeView"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v2, 0x7d0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1

    const-wide/16 v2, 0xbb8

    cmp-long v0, v2, p1

    if-ltz v0, :cond_1

    const-string v0, "start_video_record"

    .line 640
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    :cond_1
    const-wide/32 v2, 0x36ee80

    .line 643
    div-long v4, p1, v2

    long-to-int v0, v4

    .line 644
    rem-long v2, p1, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz p3, :cond_2

    .line 648
    rem-long/2addr p1, v4

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_0

    .line 650
    :cond_2
    rem-long/2addr p1, v4

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    long-to-int p1, p1

    :goto_0
    if-lez v0, :cond_3

    .line 654
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    div-int/lit8 p3, v0, 0xa

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    rem-int/lit8 p3, v0, 0xa

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->l()V

    .line 658
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->t:Lcom/oplus/camera/ui/preview/CameraTimeView$a;

    if-eqz p2, :cond_4

    .line 659
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getWidth()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/oplus/camera/ui/preview/CameraTimeView$a;->a(I)V

    goto :goto_1

    .line 662
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->m()V

    .line 665
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    div-int/lit8 p3, v2, 0xa

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    rem-int/lit8 p3, v2, 0xa

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    div-int/lit8 p3, p1, 0xa

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    rem-int/lit8 p2, p1, 0xa

    invoke-static {p2}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 671
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "updateNormalRecordTimeView, time: %d:%d:%d, setText done."

    .line 670
    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const-string p0, "updateNormalRecordTimeView: parameter is invalid"

    .line 630
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    .line 261
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    .line 262
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setOrientation(I)V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setOrientation(I)V

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOrientation(I)V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x2

    .line 340
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getPreviewFrameWidth()I
    .locals 1

    .line 733
    iget p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    .line 734
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 736
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method private h()V
    .locals 6

    const/4 v0, 0x2

    .line 349
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 351
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    new-array v0, v0, [F

    iget v4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->u:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v0, v4

    const-string v4, "translationY"

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 355
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->A:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    .line 359
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 360
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/preview/CameraTimeView$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView$2;-><init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x2

    .line 380
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    .line 385
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/preview/CameraTimeView$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView$3;-><init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private j()V
    .locals 4

    const/4 v0, 0x2

    .line 413
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->z:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 417
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->u:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "translationY"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 419
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->A:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 420
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    .line 423
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/preview/CameraTimeView$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView$4;-><init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private k()V
    .locals 10

    .line 477
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 486
    invoke-direct {p0, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    .line 488
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 489
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getBlinkRecordIconWidth()I

    move-result v4

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 494
    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const/16 v8, 0x9

    const/16 v9, 0xa

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v2, 0x4

    .line 523
    iget v5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    if-ne v2, v5, :cond_2

    const/16 v1, 0xc

    .line 524
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 526
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 528
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 529
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getPreviewFrameWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 530
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 531
    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->m:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 514
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 515
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 516
    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->n:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->o:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 517
    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move v3, v5

    goto :goto_2

    .line 505
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 506
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 507
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getPreviewFrameWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    add-int/2addr v2, v1

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 508
    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->m:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v6

    goto :goto_2

    .line 496
    :cond_5
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 497
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->s:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v8, 0xb

    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 498
    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->n:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->o:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 499
    iget v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move v3, v7

    .line 538
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    neg-int v0, v3

    int-to-float v0, v0

    .line 539
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setRotation(F)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setVisibility(I)V

    .line 684
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->k()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$pE24saXlV9swSvsgrK01eUBulPI(Lcom/oplus/camera/ui/preview/CameraTimeView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->n()Z

    move-result p0

    return p0
.end method

.method private m()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    .line 697
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    if-eqz p0, :cond_2

    .line 698
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic n()Z
    .locals 2

    .line 139
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 140
    iget p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZIIII)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    .line 206
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->k()V

    return-void
.end method

.method public a(IIIZZ)V
    .locals 2

    const-string v0, "CameraTimeView"

    const-string v1, "showTimeUI"

    .line 210
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 213
    iput p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07014a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    .line 218
    :goto_0
    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->s:Z

    .line 219
    iput p3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->a:I

    .line 220
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->f()V

    .line 221
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->m:I

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->k()V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p5, :cond_5

    if-nez p4, :cond_5

    .line 226
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 227
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    :cond_1
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 234
    :cond_2
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    if-nez p4, :cond_4

    .line 235
    iget p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    if-ne p1, p4, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->g()V

    goto :goto_1

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->h()V

    .line 242
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setAlpha(F)V

    .line 243
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    .line 244
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    const p1, 0x3dcccccd    # 0.1f

    const/high16 p4, 0x3f800000    # 1.0f

    .line 246
    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    .line 247
    new-instance p4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {p4, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 248
    invoke-virtual {p4, p2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 249
    invoke-virtual {p4, p3}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 252
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->startLayoutAnimation()V

    goto :goto_2

    .line 255
    :cond_6
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public a(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(JZZ)V

    return-void
.end method

.method public a(JZZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string p0, "CameraTimeView"

    const-string p1, "updateRecordingTime: parameter is invalid"

    .line 600
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 605
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/camera/ui/preview/CameraTimeView;->b(JZ)V

    .line 607
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 608
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f08048f

    .line 587
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 589
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZIIII)V
    .locals 2

    .line 110
    iput p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->m:I

    .line 111
    iput p3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->n:I

    .line 112
    iput p4, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->o:I

    .line 113
    iput p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->p:I

    .line 114
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->r:Z

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07014a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->q:I

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070148

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 117
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070146

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 118
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070147

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 119
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f06004c

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    const p5, 0x7f090076

    .line 121
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    const p5, 0x7f090414

    .line 122
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const p5, 0x7f090415

    .line 123
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const p5, 0x7f090417

    .line 124
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const p5, 0x7f090418

    .line 125
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const p5, 0x7f090412

    .line 126
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseImageView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    const p5, 0x7f090413

    .line 127
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseImageView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    const p5, 0x7f09041b

    .line 128
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const p5, 0x7f09041c

    .line 129
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 130
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 131
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 132
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 133
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 134
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setHorizontalInverseAble(Z)V

    .line 135
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setHorizontalInverseAble(Z)V

    .line 136
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 137
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setHorizontalInverseAble(Z)V

    .line 138
    new-instance p5, Lcom/oplus/camera/ui/preview/-$$Lambda$CameraTimeView$pE24saXlV9swSvsgrK01eUBulPI;

    invoke-direct {p5, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$CameraTimeView$pE24saXlV9swSvsgrK01eUBulPI;-><init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V

    iput-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    .line 146
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 147
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 148
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 149
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 150
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 151
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 152
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 153
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->w:Lcom/oplus/camera/ui/inverse/d;

    invoke-virtual {p5, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V

    .line 155
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 156
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 157
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 158
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 159
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 160
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setShadowLayer(FFFI)V

    .line 162
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->r:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0902e6

    .line 170
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->l:Landroid/view/View;

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07067d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->u:I

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    const-string v0, "CameraTimeView"

    const-string v1, "hideTimeUI"

    .line 271
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v2, v1, :cond_0

    const-string p0, "hideTimeUI, return"

    .line 274
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->s:Z

    const/4 v1, 0x0

    .line 280
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    .line 281
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->clearAnimation()V

    const/4 v3, 0x1

    .line 282
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 285
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_3

    .line 290
    iget p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    if-ne v3, p1, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->i()V

    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->j()V

    .line 297
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 299
    new-instance p1, Lcom/oplus/camera/ui/preview/CameraTimeView$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/CameraTimeView$1;-><init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, p2, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p2

    const-wide/16 v0, 0x64

    .line 319
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 320
    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    goto :goto_1

    .line 324
    :cond_5
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    .line 325
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    const-string p0, "hideTimeUI, without Animation"

    .line 327
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public c()V
    .locals 3

    .line 194
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 195
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 196
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 197
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 198
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->f:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 199
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->g:Lcom/oplus/camera/ui/inverse/InverseImageView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 200
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 201
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBlinkRecordIconWidth()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Landroid/view/View;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCameraTimeListener(Lcom/oplus/camera/ui/preview/CameraTimeView$a;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->t:Lcom/oplus/camera/ui/preview/CameraTimeView$a;

    return-void
.end method

.method public setNeedRelayout(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->B:Z

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 715
    iget v1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    if-ne v0, v1, :cond_3

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 725
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->y:Landroid/animation/AnimatorSet;

    .line 726
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->x:Landroid/animation/AnimatorSet;

    .line 729
    :cond_3
    iput p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->v:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->d:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->e:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->h:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->i:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->j:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->k:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 452
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 455
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView;->b:Z

    :cond_0
    return-void
.end method
