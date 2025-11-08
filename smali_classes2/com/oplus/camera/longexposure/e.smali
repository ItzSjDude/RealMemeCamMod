.class public Lcom/oplus/camera/longexposure/e;
.super Ljava/lang/Object;
.source "LongExposureLevelPanel.java"

# interfaces
.implements Lcom/oplus/camera/longexposure/i$c;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/oplus/camera/professional/z;

.field private d:Lcom/oplus/camera/longexposure/i;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Activity;

.field private g:Landroid/content/SharedPreferences;

.field private h:Landroid/os/Handler;

.field private i:Lcom/oplus/camera/capmode/a;

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/oplus/camera/longexposure/h;

.field private m:Lcom/oplus/camera/longexposure/h;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Landroid/animation/AnimatorSet;

.field private p:I

.field private q:Landroid/view/animation/PathInterpolator;

.field private r:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;)V
    .locals 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/oplus/camera/longexposure/e;->a:I

    .line 72
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/e;->b:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->c:Lcom/oplus/camera/professional/z;

    .line 74
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    .line 75
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    .line 77
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    .line 78
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->h:Landroid/os/Handler;

    .line 80
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    .line 81
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    .line 83
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    .line 84
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    .line 85
    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    .line 86
    iput v0, p0, Lcom/oplus/camera/longexposure/e;->p:I

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->r:Landroid/view/animation/PathInterpolator;

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    .line 93
    iput-object p3, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    .line 94
    iput-object p4, p0, Lcom/oplus/camera/longexposure/e;->h:Landroid/os/Handler;

    .line 95
    iput-object p5, p0, Lcom/oplus/camera/longexposure/e;->i:Lcom/oplus/camera/capmode/a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/e;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/oplus/camera/longexposure/e;->a:I

    return p0
.end method

.method private a(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x2

    .line 565
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 566
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x190

    .line 569
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0xfa

    .line 571
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_1
    return-object p1
.end method

.method private a(FFI)Landroid/view/animation/AnimationSet;
    .locals 2

    .line 649
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 650
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    int-to-long p1, p3

    .line 651
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 652
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    const p1, 0x7f0100cb

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/content/Context;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/e;FFI)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/longexposure/e;->a(FFI)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/longexposure/h;IZ)Landroid/view/animation/AnimationSet;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0xb4

    .line 657
    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/longexposure/e;->a(FFI)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 658
    new-instance v1, Lcom/oplus/camera/longexposure/e$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/camera/longexposure/e$4;-><init>(Lcom/oplus/camera/longexposure/e;Lcom/oplus/camera/longexposure/h;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .line 285
    new-instance v0, Lcom/oplus/camera/professional/z;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/professional/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->c:Lcom/oplus/camera/professional/z;

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->c:Lcom/oplus/camera/professional/z;

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/professional/z;II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/e;Lcom/oplus/camera/longexposure/h;IZ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/longexposure/e;->b(Lcom/oplus/camera/longexposure/h;IZ)V

    return-void
.end method

.method private a(Lcom/oplus/camera/professional/z;II)V
    .locals 1

    .line 292
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->b()Ljava/util/ArrayList;

    move-result-object p0

    .line 293
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-gt p3, p2, :cond_1

    .line 307
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 296
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateIsoValues, return null, maxISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", minISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxISOValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LongExposureLevelPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 12

    .line 348
    iget-boolean v0, p0, Lcom/oplus/camera/longexposure/e;->b:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 349
    iget-object p2, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {p2}, Lcom/oplus/camera/longexposure/h;->clearAnimation()V

    .line 351
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 355
    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    .line 356
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 360
    iget-object v6, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x96

    .line 362
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 364
    iget-object v8, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    new-array v9, v1, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 366
    iget-object v9, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    invoke-virtual {v8, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    iget-object v9, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    new-array v10, v1, [F

    fill-array-data v10, :array_3

    invoke-static {v9, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 371
    iget-object v10, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    invoke-virtual {v9, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 375
    iget-object v10, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    new-array v11, v1, [F

    fill-array-data v11, :array_4

    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 377
    iget-object v11, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 380
    iget-object v11, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    invoke-static {v11, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 382
    iget-object v3, p0, Lcom/oplus/camera/longexposure/e;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 386
    new-instance v3, Lcom/oplus/camera/longexposure/e$1;

    invoke-direct {v3, p0, p1}, Lcom/oplus/camera/longexposure/e$1;-><init>(Lcom/oplus/camera/longexposure/e;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 402
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 405
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/oplus/camera/longexposure/e;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/longexposure/e;->c(I)F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " s"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/longexposure/h;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    const-string p1, "\u221e"

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/h;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
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
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs a(Z[Landroid/view/View;)V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const-string v0, "LongExposureLevelPanel"

    const-string v1, "showViews"

    .line 433
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p0, "showViews, view is null, so return!"

    .line 436
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/longexposure/e;->c(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/longexposure/e;->d(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 448
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    .line 449
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 451
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 452
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/longexposure/e$2;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/longexposure/e$2;-><init>(Lcom/oplus/camera/longexposure/e;[Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    move p1, p0

    .line 466
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 467
    aget-object v0, p2, p1

    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 470
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/e;)Lcom/oplus/camera/longexposure/h;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/longexposure/h;IZ)V
    .locals 0

    const/16 p0, 0x5a

    if-eq p2, p0, :cond_1

    const/16 p0, 0x10e

    if-eq p2, p0, :cond_0

    const/16 p0, 0x11

    .line 690
    invoke-virtual {p1, p0}, Lcom/oplus/camera/longexposure/h;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    .line 686
    invoke-virtual {p1, p0}, Lcom/oplus/camera/longexposure/h;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 682
    invoke-virtual {p1, p0}, Lcom/oplus/camera/longexposure/h;->setGravity(I)V

    :goto_0
    if-eqz p3, :cond_2

    .line 694
    invoke-virtual {p1, p2}, Lcom/oplus/camera/longexposure/h;->a(I)V

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {p1, p2}, Lcom/oplus/camera/longexposure/h;->b(I)V

    :goto_1
    return-void
.end method

.method private varargs b(Z[Landroid/view/View;)V
    .locals 3

    const-string v0, "LongExposureLevelPanel"

    const-string v1, "hideViews"

    .line 476
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p0, "hideViews, view is null, so return!"

    .line 479
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "hideViews, views are showing, just invisible and return!"

    .line 486
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 497
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/longexposure/e;->c(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 498
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/longexposure/e;->d(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    .line 500
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oplus/camera/longexposure/e$3;

    invoke-direct {v2, p0, p2}, Lcom/oplus/camera/longexposure/e$3;-><init>(Lcom/oplus/camera/longexposure/e;[Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    iget-object p2, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 512
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 514
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 516
    :cond_4
    :goto_0
    array-length p0, p2

    if-ge v0, p0, :cond_5

    .line 517
    aget-object p0, p2, v0

    const/4 p1, 0x4

    .line 518
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/longexposure/e;)Lcom/oplus/camera/longexposure/i;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    return-object p0
.end method

.method private c()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    const v1, 0x800053

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/oplus/camera/longexposure/h;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/oplus/camera/longexposure/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setGravity(I)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/longexposure/h;->setId(I)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v6, 0x7f060069

    .line 122
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    .line 121
    invoke-virtual {v0, v4, v6, v6, v5}, Lcom/oplus/camera/longexposure/h;->setShadowLayer(FFFI)V

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/longexposure/h;->setTextSize(IF)V

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/longexposure/h;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/oplus/camera/longexposure/h;->setTextColor(I)V

    .line 127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706d2

    .line 128
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v6, 0x7f0706c8

    .line 129
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 132
    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706cd

    .line 133
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 132
    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/oplus/camera/longexposure/h;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/oplus/camera/longexposure/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setGravity(I)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setId(I)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v4, 0x7f0706be

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/longexposure/h;->setTextSize(IF)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    const v2, 0x7f1005e4

    invoke-virtual {v0, v2}, Lcom/oplus/camera/longexposure/h;->setText(I)V

    .line 147
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v4, 0x7f0706bf

    .line 148
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v5, 0x7f0706b5

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 150
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v2, 0x7f0706b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v2, 0x7f0706ba

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 152
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private varargs c(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;
    .locals 5

    .line 524
    array-length v0, p2

    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    move v2, v1

    .line 526
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 527
    aget-object v3, p2, v2

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    .line 530
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 531
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/oplus/camera/longexposure/e;->a(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 4

    .line 268
    new-instance v0, Lcom/oplus/camera/longexposure/i;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->c:Lcom/oplus/camera/professional/z;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/longexposure/e;->h:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/longexposure/i;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    .line 270
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v2, 0x7f0706f2

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v3, 0x7f0706e9

    .line 272
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800053

    .line 273
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v2, 0x7f0706eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 275
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 276
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v2, 0x7f0706ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 278
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/longexposure/i;->setScaleBarValueChangeListener(Lcom/oplus/camera/longexposure/i$c;)V

    .line 279
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v1, "pref_long_exposure_streamer_portrait_key"

    const/4 v2, 0x6

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/longexposure/i;->b(I)V

    return-void
.end method

.method private varargs d(Z[Landroid/view/View;)[Landroid/animation/ObjectAnimator;
    .locals 9

    .line 541
    array-length v0, p2

    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    move v2, v1

    .line 543
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 544
    aget-object v3, p2, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "translationY"

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    .line 547
    new-array v5, v5, [F

    iget v8, p0, Lcom/oplus/camera/longexposure/e;->p:I

    int-to-float v8, v8

    aput v8, v5, v1

    aput v4, v5, v7

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 550
    :cond_0
    new-array v5, v5, [F

    aput v4, v5, v1

    iget v4, p0, Lcom/oplus/camera/longexposure/e;->p:I

    int-to-float v4, v4

    aput v4, v5, v7

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    .line 554
    :goto_1
    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/oplus/camera/longexposure/e;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    aget-object v3, v0, v2

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private f(I)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->i:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 316
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->f()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string p0, "LongExposureLevelPanel"

    const-string v0, "onBarMoving"

    .line 634
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->f:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/longexposure/e;->k:Landroid/widget/RelativeLayout;

    .line 107
    :cond_1
    iput p1, p0, Lcom/oplus/camera/longexposure/e;->a:I

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->j:Landroid/content/res/Resources;

    const v0, 0x7f0706f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/longexposure/e;->p:I

    const/16 p1, 0x19

    const/4 v0, 0x1

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/longexposure/e;->a(II)V

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/e;->c()V

    .line 112
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/e;->d()V

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->b(Z)V

    return-void
.end method

.method public a(IZ)V
    .locals 7

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeScene, currentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureLevelPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v1, "manual"

    const/4 v2, 0x1

    const-string v3, "pref_key_long_exposure_exposure_time"

    const/4 v4, 0x0

    if-ne v2, p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v5, "pref_long_exposure_streamer_portrait_auto_key"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/4 v0, 0x6

    const-string v1, "pref_long_exposure_streamer_portrait_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 180
    invoke-direct {p0, v2, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 185
    invoke-direct {p0, v4, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v5, p1, :cond_3

    .line 188
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v5, "pref_long_exposure_busy_traffic_auto_key"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/16 v0, 0xa

    const-string v1, "pref_long_exposure_busy_traffic_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 195
    invoke-direct {p0, v2, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 200
    invoke-direct {p0, v4, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x3

    if-ne v6, p1, :cond_5

    .line 203
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v5, "pref_long_exposure_flowing_clouds_and_water_auto_key"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 205
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/16 v0, 0x8

    const-string v1, "pref_long_exposure_flowing_clouds_and_water_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 210
    invoke-direct {p0, v2, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    .line 212
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 214
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 215
    invoke-direct {p0, v4, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x4

    if-ne v6, p1, :cond_7

    .line 218
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v5, "pref_long_exposure_light_painting_auto_key"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v0, "pref_long_exposure_light_painting_key"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 225
    invoke-direct {p0, v2, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto :goto_0

    .line 227
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 230
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    invoke-direct {p0, v4, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto :goto_0

    :cond_7
    const/4 v6, 0x5

    if-ne v6, p1, :cond_9

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v6, "pref_long_exposure_moving_crowd_auto_key"

    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 236
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string v0, "pref_long_exposure_moving_crowd_key"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 241
    invoke-direct {p0, v2, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto :goto_0

    .line 243
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->setCurrentIndex(I)V

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/longexposure/i;->a(I)V

    .line 246
    invoke-direct {p0, v4, p2}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    :cond_9
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/i;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x3

    .line 256
    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/longexposure/e;->a(Z[Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string p0, "LongExposureLevelPanel"

    const-string v0, "onActionUp"

    .line 644
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/oplus/camera/longexposure/e;->a:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/e;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/e;->b:Z

    .line 166
    :goto_0
    iput p1, p0, Lcom/oplus/camera/longexposure/e;->a:I

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/i;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x3

    .line 264
    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->d:Lcom/oplus/camera/longexposure/i;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/longexposure/e;->b(Z[Landroid/view/View;)V

    return-void
.end method

.method public c(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 328
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/4 p1, 0x6

    const-string v0, "pref_long_exposure_streamer_portrait_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 331
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/16 p1, 0xa

    const-string v0, "pref_long_exposure_busy_traffic_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const/16 p1, 0x8

    const-string v0, "pref_long_exposure_flowing_clouds_and_water_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v2, p1, :cond_3

    .line 337
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string p1, "pref_long_exposure_light_painting_key"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v2, p1, :cond_4

    .line 340
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    const-string p1, "pref_long_exposure_moving_crowd_key"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_4
    :goto_0
    int-to-float p0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    return p0
.end method

.method public c(Z)V
    .locals 1

    .line 639
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBarScrolling scrolling: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LongExposureLevelPanel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureLevelPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/h;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-direct {p0, v0, p1, v1}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/h;IZ)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/longexposure/h;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->l:Lcom/oplus/camera/longexposure/h;

    invoke-direct {p0, v0, p1, v1}, Lcom/oplus/camera/longexposure/e;->b(Lcom/oplus/camera/longexposure/h;IZ)V

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/h;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-direct {p0, v0, p1, v1}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/h;IZ)Landroid/view/animation/AnimationSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/longexposure/h;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->m:Lcom/oplus/camera/longexposure/h;

    invoke-direct {p0, v0, p1, v1}, Lcom/oplus/camera/longexposure/e;->b(Lcom/oplus/camera/longexposure/h;IZ)V

    :goto_1
    return-void
.end method

.method public e(I)V
    .locals 14

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/longexposure/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureLevelPanel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/oplus/camera/longexposure/e;->f(I)V

    const-string v0, "pref_long_exposure_moving_crowd_auto_key"

    const-string v1, "pref_long_exposure_light_painting_auto_key"

    const/4 v2, 0x5

    const-string v3, "pref_long_exposure_flowing_clouds_and_water_auto_key"

    const/4 v4, 0x4

    const-string v5, "pref_long_exposure_busy_traffic_auto_key"

    const/4 v6, 0x3

    const-string v7, "pref_long_exposure_streamer_portrait_auto_key"

    const/4 v8, 0x2

    const-string v9, "pref_key_long_exposure_exposure_time"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p1, :cond_5

    .line 593
    iget-object v12, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "auto"

    invoke-interface {v12, v9, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    iget v9, p0, Lcom/oplus/camera/longexposure/e;->a:I

    if-ne v11, v9, :cond_0

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_streamer_portrait_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_0
    if-ne v8, v9, :cond_1

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_busy_traffic_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    if-ne v6, v9, :cond_2

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_long_exposure_flowing_clouds_and_water_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 603
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_3

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_long_exposure_light_painting_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 606
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    if-ne v2, v9, :cond_4

    .line 608
    iget-object v1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_long_exposure_moving_crowd_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 609
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    :cond_4
    :goto_0
    invoke-direct {p0, v11, v10}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    goto :goto_2

    .line 614
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v12, "manual"

    invoke-interface {p1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 616
    iget p1, p0, Lcom/oplus/camera/longexposure/e;->a:I

    if-ne v11, p1, :cond_6

    .line 617
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_6
    if-ne v8, p1, :cond_7

    .line 619
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_7
    if-ne v6, p1, :cond_8

    .line 621
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_8
    if-ne v4, p1, :cond_9

    .line 623
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_9
    if-ne v2, p1, :cond_a

    .line 625
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 628
    :cond_a
    :goto_1
    invoke-direct {p0, v10, v10}, Lcom/oplus/camera/longexposure/e;->a(ZZ)V

    :goto_2
    return-void
.end method
