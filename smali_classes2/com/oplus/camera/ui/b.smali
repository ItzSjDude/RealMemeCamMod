.class public abstract Lcom/oplus/camera/ui/b;
.super Landroid/view/View;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/b$a;
    }
.end annotation


# instance fields
.field protected A:F

.field protected B:F

.field protected C:F

.field protected D:F

.field protected E:F

.field protected volatile F:F

.field protected G:F

.field protected H:F

.field protected I:F

.field protected J:F

.field protected K:F

.field protected L:F

.field protected M:I

.field protected N:F

.field protected O:F

.field protected P:F

.field protected Q:F

.field protected R:I

.field protected volatile S:I

.field protected T:Z

.field protected U:Z

.field protected V:Z

.field protected W:Z

.field protected a:Landroid/animation/ValueAnimator;

.field protected aa:Landroid/view/animation/Interpolator;

.field protected ab:Landroid/view/animation/Interpolator;

.field protected ac:F

.field protected ad:F

.field protected ae:F

.field protected af:F

.field protected ag:F

.field protected ah:F

.field protected ai:J

.field protected aj:Landroid/graphics/Paint;

.field protected ak:Landroid/content/Context;

.field protected al:Lcom/oplus/camera/ui/b$a;

.field public am:Z

.field protected an:Landroid/os/Handler;

.field private final ao:Landroid/view/animation/PathInterpolator;

.field private final ap:Landroid/view/animation/PathInterpolator;

.field private aq:Landroid/animation/AnimatorSet;

.field private ar:Landroid/animation/AnimatorSet;

.field private as:I

.field protected b:Landroid/animation/ValueAnimator;

.field protected c:Landroid/animation/ValueAnimator;

.field protected d:Landroid/animation/ValueAnimator;

.field protected e:Landroid/animation/ValueAnimator;

.field protected f:Landroid/animation/ValueAnimator;

.field protected g:Landroid/animation/ValueAnimator;

.field protected h:Landroid/animation/ValueAnimator;

.field protected i:Landroid/animation/ValueAnimator;

.field protected j:Landroid/animation/ValueAnimator;

.field protected k:Landroid/animation/ValueAnimator;

.field protected l:Landroid/animation/ValueAnimator;

.field protected m:Landroid/animation/ValueAnimator;

.field protected n:Landroid/animation/ValueAnimator;

.field protected o:Landroid/animation/ValueAnimator;

.field protected p:Landroid/animation/ValueAnimator;

.field protected q:Landroid/animation/ValueAnimator;

.field protected r:Landroid/animation/AnimatorSet;

.field protected s:Landroid/animation/AnimatorSet;

.field protected t:Landroid/animation/AnimatorSet;

.field protected u:Landroid/graphics/Paint;

.field protected v:Landroid/graphics/Paint;

.field protected w:Landroid/graphics/Paint;

.field protected x:Landroid/graphics/Paint;

.field protected y:Landroid/graphics/Paint;

.field protected z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 600
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    .line 86
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    .line 87
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    .line 88
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->d:Landroid/animation/ValueAnimator;

    .line 90
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    .line 91
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    .line 93
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    .line 95
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    .line 97
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    .line 98
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    .line 100
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    .line 101
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    .line 103
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    .line 105
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    .line 106
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    .line 108
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    .line 109
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->q:Landroid/animation/ValueAnimator;

    .line 111
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->r:Landroid/animation/AnimatorSet;

    .line 112
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->s:Landroid/animation/AnimatorSet;

    .line 113
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->t:Landroid/animation/AnimatorSet;

    .line 115
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->u:Landroid/graphics/Paint;

    .line 116
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->v:Landroid/graphics/Paint;

    .line 117
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->w:Landroid/graphics/Paint;

    .line 118
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->x:Landroid/graphics/Paint;

    .line 119
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->y:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/oplus/camera/ui/b;->z:F

    .line 122
    iput v1, p0, Lcom/oplus/camera/ui/b;->A:F

    .line 123
    iput v1, p0, Lcom/oplus/camera/ui/b;->B:F

    .line 124
    iput v1, p0, Lcom/oplus/camera/ui/b;->C:F

    .line 125
    iput v1, p0, Lcom/oplus/camera/ui/b;->D:F

    .line 126
    iput v1, p0, Lcom/oplus/camera/ui/b;->E:F

    .line 127
    iput v1, p0, Lcom/oplus/camera/ui/b;->F:F

    .line 128
    iput v1, p0, Lcom/oplus/camera/ui/b;->G:F

    .line 129
    iput v1, p0, Lcom/oplus/camera/ui/b;->H:F

    .line 130
    iput v1, p0, Lcom/oplus/camera/ui/b;->I:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 131
    iput v2, p0, Lcom/oplus/camera/ui/b;->J:F

    .line 132
    iput v1, p0, Lcom/oplus/camera/ui/b;->K:F

    .line 133
    iput v2, p0, Lcom/oplus/camera/ui/b;->L:F

    .line 135
    iput v0, p0, Lcom/oplus/camera/ui/b;->M:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 136
    iput v3, p0, Lcom/oplus/camera/ui/b;->N:F

    .line 137
    iput v3, p0, Lcom/oplus/camera/ui/b;->O:F

    .line 138
    iput v3, p0, Lcom/oplus/camera/ui/b;->P:F

    .line 149
    iput v1, p0, Lcom/oplus/camera/ui/b;->Q:F

    .line 151
    iput v0, p0, Lcom/oplus/camera/ui/b;->R:I

    const/4 v3, -0x1

    .line 152
    iput v3, p0, Lcom/oplus/camera/ui/b;->S:I

    .line 153
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->T:Z

    .line 154
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->U:Z

    .line 155
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->V:Z

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->W:Z

    .line 158
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->aa:Landroid/view/animation/Interpolator;

    .line 159
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->ab:Landroid/view/animation/Interpolator;

    .line 160
    iput v1, p0, Lcom/oplus/camera/ui/b;->ac:F

    .line 161
    iput v1, p0, Lcom/oplus/camera/ui/b;->ad:F

    .line 162
    iput v1, p0, Lcom/oplus/camera/ui/b;->ae:F

    .line 163
    iput v1, p0, Lcom/oplus/camera/ui/b;->af:F

    .line 164
    iput v1, p0, Lcom/oplus/camera/ui/b;->ag:F

    .line 165
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/oplus/camera/ui/b;->ah:F

    const-wide/16 v5, 0xbb8

    .line 167
    iput-wide v5, p0, Lcom/oplus/camera/ui/b;->ai:J

    .line 169
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->aj:Landroid/graphics/Paint;

    .line 170
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    .line 176
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v3, v5, v1, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    .line 177
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v5, v1, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/oplus/camera/ui/b;->ap:Landroid/view/animation/PathInterpolator;

    .line 179
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->am:Z

    .line 181
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    .line 182
    iput-object p2, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    .line 183
    iput v0, p0, Lcom/oplus/camera/ui/b;->as:I

    .line 216
    new-instance p2, Lcom/oplus/camera/ui/b$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/b$1;-><init>(Lcom/oplus/camera/ui/b;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/b;->an:Landroid/os/Handler;

    .line 602
    iput-object p1, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    .line 603
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/b;->R:I

    .line 604
    iget p2, p0, Lcom/oplus/camera/ui/b;->R:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v4

    iput p2, p0, Lcom/oplus/camera/ui/b;->af:F

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070472

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/b;->as:I

    .line 607
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getCollapseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/b;->aa:Landroid/view/animation/Interpolator;

    .line 608
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/b;->ab:Landroid/view/animation/Interpolator;

    .line 609
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->i()V

    .line 610
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->h()V

    .line 611
    invoke-direct {p0}, Lcom/oplus/camera/ui/b;->u()V

    .line 612
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->j()V

    .line 613
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    return-void
.end method

.method private b(Landroid/animation/AnimatorListenerAdapter;ZZ)V
    .locals 3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideZoomMenuButton, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needTranslateAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    const/4 p2, 0x2

    .line 1042
    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1047
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    .line 1048
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 1051
    new-array p2, p2, [F

    const/4 p3, 0x0

    aput v1, p2, p3

    const/4 p3, 0x1

    iget v1, p0, Lcom/oplus/camera/ui/b;->as:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, p2, p3

    const-string p3, "translationY"

    invoke-static {p0, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1053
    iget-object p3, p0, Lcom/oplus/camera/ui/b;->ap:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    .line 1054
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1055
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1057
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setTranslationY(F)V

    :goto_1
    if-eqz p1, :cond_3

    .line 1061
    iget-object p2, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1064
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/ui/b$28;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/b$28;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1078
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_4
    const/16 p1, 0x8

    .line 1080
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private u()V
    .locals 8

    const/4 v0, 0x2

    .line 525
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    .line 526
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$8;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$8;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->n:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$9;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$9;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    .line 552
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 553
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandControlPanelInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/b$10;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/b$10;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 562
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 564
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    .line 565
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 566
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/b$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/b$11;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->o:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/b$13;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/b$13;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/b;->q:Landroid/animation/ValueAnimator;

    .line 587
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 588
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandControlPanelInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 589
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/b$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/b$14;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->d()V

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Landroid/animation/AnimatorListenerAdapter;ZZ)V
    .locals 4

    .line 936
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    .line 937
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 943
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/b;->b(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    goto :goto_1

    .line 938
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->an:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iput-boolean v2, p0, Lcom/oplus/camera/ui/b;->T:Z

    .line 940
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    const/4 p1, 0x0

    .line 941
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->a(Z)V

    goto :goto_1

    .line 946
    :cond_2
    iput-boolean v2, p0, Lcom/oplus/camera/ui/b;->T:Z

    :goto_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->c()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 255
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 260
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 261
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public a(ZZ)V
    .locals 7

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showZoomMenuButton, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needTranslateAni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->aq:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    .line 991
    new-array v2, p1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 992
    iget-object v3, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    if-eqz p2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0xfa

    .line 993
    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 995
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    .line 996
    iget-object v5, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 999
    new-array p1, p1, [F

    iget p2, p0, Lcom/oplus/camera/ui/b;->as:I

    neg-int p2, p2

    int-to-float p2, p2

    aput p2, p1, v0

    const/4 p2, 0x1

    aput v1, p1, p2

    const-string p2, "translationY"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1001
    iget-object p2, p0, Lcom/oplus/camera/ui/b;->ap:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1002
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1003
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1004
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_2

    .line 1006
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setTranslationY(F)V

    .line 1009
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/ui/b$27;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/b$27;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1024
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1026
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    .line 1027
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setTranslationY(F)V

    .line 1028
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(ZZZ)V
    .locals 4

    .line 955
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x6

    if-eq v1, v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/b;->T:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 961
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v1, v0, :cond_1

    .line 962
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->d()V

    .line 965
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v2, 0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    iget v3, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/ui/b;->a(ZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 966
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    const/4 p2, 0x0

    .line 967
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    .line 968
    iput-boolean p2, p0, Lcom/oplus/camera/ui/b;->T:Z

    if-eqz p1, :cond_4

    .line 971
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->an:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 973
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/b;->a(Z)V

    :cond_4
    :goto_1
    return-void

    .line 956
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "performShow not prepared, mStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/b;->S:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSeekBar"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    .line 268
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    .line 269
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected b(Z)Z
    .locals 5

    .line 1085
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    iget v3, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/16 v3, 0x8

    if-eq v3, v0, :cond_4

    const/16 v0, 0xa

    iget v4, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v4, :cond_4

    const/16 v0, 0xf

    iget v4, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v4, 0x6

    if-ne v4, v0, :cond_0

    goto :goto_1

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getVisibility()I

    move-result v0

    if-eq v3, v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getVisibility()I

    move-result v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1100
    :cond_1
    iput-boolean v2, p0, Lcom/oplus/camera/ui/b;->T:Z

    if-eqz p1, :cond_2

    move v1, v4

    .line 1101
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    const/4 p1, 0x1

    .line 1102
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->a(Z)V

    return p1

    .line 1096
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    :cond_4
    :goto_1
    return v2
.end method

.method protected c()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 281
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected c(Z)V
    .locals 3

    .line 1107
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    iget v2, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v2, :cond_2

    const/16 v0, 0xa

    iget v2, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v2, :cond_2

    const/16 v0, 0x9

    iget v2, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v2, :cond_2

    .line 1111
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1112
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    if-eqz v0, :cond_2

    .line 1119
    invoke-interface {v0}, Lcom/oplus/camera/ui/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->T:Z

    .line 1123
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->W:Z

    .line 1124
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    if-nez p1, :cond_1

    .line 1127
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->am:Z

    goto :goto_0

    .line 1129
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/ui/b;->am:Z

    .line 1132
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->t()V

    .line 1133
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/b$a;->b()V

    .line 1135
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->a()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected d()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 305
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 309
    iput v0, p0, Lcom/oplus/camera/ui/b;->z:F

    const/4 v1, 0x0

    .line 310
    iput v1, p0, Lcom/oplus/camera/ui/b;->A:F

    .line 311
    iput v0, p0, Lcom/oplus/camera/ui/b;->B:F

    .line 312
    iput v0, p0, Lcom/oplus/camera/ui/b;->C:F

    .line 313
    iput v0, p0, Lcom/oplus/camera/ui/b;->D:F

    .line 314
    iput v0, p0, Lcom/oplus/camera/ui/b;->E:F

    return-void
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 2

    .line 859
    iget v0, p0, Lcom/oplus/camera/ui/b;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 860
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    iget p0, p0, Lcom/oplus/camera/ui/b;->C:F

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/b$a;->b(F)V

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/b$a;->b(F)V

    .line 863
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->j(Landroid/graphics/Canvas;)V

    .line 864
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->f()V

    const/4 p1, 0x2

    .line 865
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lcom/oplus/camera/ui/b;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 319
    iput v1, p0, Lcom/oplus/camera/ui/b;->A:F

    .line 320
    iput v0, p0, Lcom/oplus/camera/ui/b;->B:F

    .line 321
    iput v0, p0, Lcom/oplus/camera/ui/b;->C:F

    .line 322
    iput v0, p0, Lcom/oplus/camera/ui/b;->D:F

    .line 323
    iput v0, p0, Lcom/oplus/camera/ui/b;->E:F

    .line 325
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->k()V

    return-void
.end method

.method protected g(Landroid/graphics/Canvas;)V
    .locals 1

    .line 870
    iget-object p1, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    if-eqz p1, :cond_0

    .line 871
    iget-boolean v0, p0, Lcom/oplus/camera/ui/b;->U:Z

    if-nez v0, :cond_0

    .line 872
    invoke-interface {p1}, Lcom/oplus/camera/ui/b$a;->c()V

    const/4 p1, 0x1

    .line 873
    iput-boolean p1, p0, Lcom/oplus/camera/ui/b;->U:Z

    :cond_0
    const/4 p1, 0x0

    .line 877
    iget v0, p0, Lcom/oplus/camera/ui/b;->z:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 878
    iget-boolean p1, p0, Lcom/oplus/camera/ui/b;->T:Z

    if-eqz p1, :cond_1

    .line 879
    iget p1, p0, Lcom/oplus/camera/ui/b;->C:F

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public getCollapseDelay()J
    .locals 2

    .line 920
    iget-wide v0, p0, Lcom/oplus/camera/ui/b;->ai:J

    return-wide v0
.end method

.method protected getCollapseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1151
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    const v0, 0x7f0100d2

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method protected getExpandControlPanelInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1159
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    const v0, 0x7f0100d6

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method protected getExpandInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1155
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    const v0, 0x7f0100d1

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method protected getExpandPointAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1163
    iget-object p0, p0, Lcom/oplus/camera/ui/b;->ak:Landroid/content/Context;

    const v0, 0x7f0100d3

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1168
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 768
    iget p0, p0, Lcom/oplus/camera/ui/b;->S:I

    return p0
.end method

.method protected h()V
    .locals 9

    const/4 v0, 0x2

    .line 329
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    .line 330
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->a:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$12;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$12;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    .line 343
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3f2b851f    # 0.67f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->b:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$23;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$23;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    .line 354
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->c:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$29;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$29;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    .line 364
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandControlPanelInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$30;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$30;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 373
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    .line 374
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->f:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$31;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$31;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/b$32;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/b$32;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected h(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 8

    const/4 v0, 0x2

    .line 395
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    .line 396
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 397
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$33;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$33;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$34;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$34;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    .line 446
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 448
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->j:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/b$2;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/b$2;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 457
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    .line 458
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 460
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandPointAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$3;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$3;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->i:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/b$4;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$4;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    .line 490
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandControlPanelInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->k:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oplus/camera/ui/b$5;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/b$5;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 503
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    .line 504
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/camera/ui/b$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/b$6;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 513
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    .line 514
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 515
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandPointAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/b$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/b$7;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected i(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 9

    .line 617
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/b;->r:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 618
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 619
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    new-instance v4, Lcom/oplus/camera/ui/b$15;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$15;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 630
    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 631
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 632
    iget-object v5, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 633
    new-instance v5, Lcom/oplus/camera/ui/b$16;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/b$16;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 642
    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    .line 643
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    iget-object v8, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    new-instance v8, Lcom/oplus/camera/ui/b$17;

    invoke-direct {v8, p0}, Lcom/oplus/camera/ui/b$17;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 654
    iget-object v8, p0, Lcom/oplus/camera/ui/b;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 655
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->r:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oplus/camera/ui/b$18;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$18;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 665
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->s:Landroid/animation/AnimatorSet;

    .line 666
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 668
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->getExpandInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 669
    new-instance v4, Lcom/oplus/camera/ui/b$19;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$19;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 678
    new-array v4, v0, [F

    fill-array-data v4, :array_4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 679
    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object v5, p0, Lcom/oplus/camera/ui/b;->ao:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 681
    new-instance v5, Lcom/oplus/camera/ui/b$20;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/b$20;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 690
    iget-object v5, p0, Lcom/oplus/camera/ui/b;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 691
    iget-object v1, p0, Lcom/oplus/camera/ui/b;->s:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oplus/camera/ui/b$21;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$21;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 700
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/b;->t:Landroid/animation/AnimatorSet;

    .line 701
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 702
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    sget-object v4, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 704
    new-instance v4, Lcom/oplus/camera/ui/b$22;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/b$22;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 712
    new-array v4, v0, [F

    fill-array-data v4, :array_6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 713
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 714
    sget-object v5, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    new-instance v5, Lcom/oplus/camera/ui/b$24;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/b$24;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    new-array v0, v0, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 724
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 725
    sget-object v2, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 726
    new-instance v2, Lcom/oplus/camera/ui/b$25;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/b$25;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 734
    iget-object v2, p0, Lcom/oplus/camera/ui/b;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/ui/b;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/b$26;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/b$26;-><init>(Lcom/oplus/camera/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected j(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    .line 772
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->e()V

    return-void
.end method

.method public m()V
    .locals 0

    .line 776
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->d()V

    .line 777
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->c()V

    return-void
.end method

.method public n()V
    .locals 2

    .line 885
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v0, v1, :cond_1

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->c()V

    const/4 v0, 0x7

    .line 887
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 888
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->invalidate()V

    :cond_1
    const/4 v0, 0x3

    .line 891
    iget v1, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 892
    iput v0, p0, Lcom/oplus/camera/ui/b;->ac:F

    .line 893
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->invalidate()V

    :cond_2
    return-void
.end method

.method protected abstract o()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 782
    iget v0, p0, Lcom/oplus/camera/ui/b;->S:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 827
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 823
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 819
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 813
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->r()V

    .line 814
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->g(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 815
    iput-boolean p1, p0, Lcom/oplus/camera/ui/b;->U:Z

    goto :goto_0

    .line 800
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->g()V

    .line 801
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 809
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->i(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 805
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->h(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 796
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 792
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->j(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 788
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 784
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 2

    .line 928
    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->g()V

    const/4 v0, 0x0

    .line 930
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 931
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    .line 932
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b;->U:Z

    return-void
.end method

.method public s()Z
    .locals 2

    .line 951
    iget-boolean v0, p0, Lcom/oplus/camera/ui/b;->V:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    iget v1, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x9

    iget v1, p0, Lcom/oplus/camera/ui/b;->S:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xa

    iget p0, p0, Lcom/oplus/camera/ui/b;->S:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setCollapseDelay(J)V
    .locals 0

    .line 924
    iput-wide p1, p0, Lcom/oplus/camera/ui/b;->ai:J

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oplus/camera/ui/b$a;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    return-void
.end method

.method public setRate(F)V
    .locals 2

    const v0, -0x42d3f7cf    # -0.042f

    const v1, 0x3f856042    # 1.042f

    .line 1145
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 1146
    iget v0, p0, Lcom/oplus/camera/ui/b;->ad:F

    iput v0, p0, Lcom/oplus/camera/ui/b;->ae:F

    .line 1147
    iput p1, p0, Lcom/oplus/camera/ui/b;->ad:F

    return-void
.end method

.method public setStatus(I)V
    .locals 2

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSeekBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iput p1, p0, Lcom/oplus/camera/ui/b;->S:I

    return-void
.end method

.method protected t()V
    .locals 0

    return-void
.end method
