.class public Lcom/oplus/camera/filmvideomode/b;
.super Ljava/lang/Object;
.source "FilmAnimatorUtil.java"


# static fields
.field private static a:Z

.field private static b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)I
    .locals 5

    .line 300
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    const v1, 0x7f070184

    .line 301
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070721

    .line 302
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f070a84

    .line 303
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0707c7

    .line 305
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 306
    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0707c8

    .line 307
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 309
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 310
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMovieShutterMoveDistance, navbar height: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screeny: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", without nav: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shutterCenterY: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", movieParamsCenterY: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", movieParamsMarginBottom: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", panelHeight: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilmAnimatorUtil"

    .line 312
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v1, v4

    return v1
.end method

.method public static a()V
    .locals 4

    .line 53
    sget-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 54
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, "FilmAnimatorUtil"

    const-string v3, "cancel alphaAndTranslation animation"

    .line 55
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 61
    :cond_2
    sget-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static a(FLcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;I)V
    .locals 5

    .line 443
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {p1, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 445
    invoke-static {p2, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 448
    :cond_0
    invoke-static {p3, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 449
    invoke-static {p4, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    const/4 v0, 0x0

    cmpl-float p0, v0, p0

    if-nez p0, :cond_3

    .line 452
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    const/16 v1, 0x8

    if-nez p0, :cond_2

    if-eqz p7, :cond_2

    .line 453
    invoke-virtual {p6, p1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-gez p0, :cond_1

    .line 454
    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    invoke-virtual {p6, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x3

    .line 458
    invoke-virtual {p5, p0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 459
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 460
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v2, 0x7f070bd8

    invoke-virtual {p6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    const v2, 0x7f070bda

    .line 461
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 463
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 465
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 466
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f070bd0

    .line 467
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v2, 0x7f070518

    .line 468
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 470
    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/control/ThumbImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-virtual {p1, p6, p6, p6, p6}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPadding(IIII)V

    const p6, 0x7f070bd4

    .line 472
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p6, 0x0

    invoke-virtual {p1, p0, p6, p8}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(IZI)V

    .line 474
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setRotation(F)V

    .line 475
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->start()V

    .line 476
    invoke-static {p2, v1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 479
    :cond_2
    invoke-static {p3, v1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 480
    invoke-static {p4, v1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 481
    invoke-static {p2, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 482
    invoke-static {p3, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 483
    invoke-static {p4, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 484
    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private static a(FLcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 324
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/modepanel/p;->a(F)V

    .line 325
    invoke-virtual {p3, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 327
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    cmpl-float p0, v0, p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 332
    invoke-virtual {p8, p0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 333
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/modepanel/p;->b(Z)Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 334
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/modepanel/p;->a(F)V

    .line 335
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    .line 336
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    invoke-static {p5, p1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 337
    invoke-static {p6, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 338
    invoke-static {p7, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    const/16 p0, 0x8

    .line 339
    invoke-static {p3, p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 340
    invoke-static {p3, v0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 342
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_2

    .line 343
    invoke-static {p8, p2, p9}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/ViewGroup;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/widget/RelativeLayout;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/b;->c(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 85
    sput-object p0, Lcom/oplus/camera/filmvideomode/b;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private static a(Landroid/view/View;F)V
    .locals 0

    if-eqz p0, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IZIZ)V
    .locals 6

    if-eqz p0, :cond_d

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0704fb

    goto :goto_0

    :cond_0
    const v0, 0x7f0707c0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x5

    if-ge p3, v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707bf

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-eqz p3, :cond_3

    mul-int v2, p2, p1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/4 v3, 0x3

    if-eq v3, p1, :cond_5

    const/4 v3, 0x4

    if-ne v3, p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v0

    .line 102
    :goto_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.oplus.10bits.heic.encode.support"

    .line 103
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    sub-int/2addr v2, p2

    .line 108
    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p4, :cond_7

    const-wide/16 v3, 0x0

    .line 112
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_5

    :cond_7
    const-wide/16 v3, 0xc8

    .line 114
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 117
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01002c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    new-array v3, v0, [F

    int-to-float v2, v2

    aput v2, v3, v1

    const-string v2, "translationX"

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 120
    new-array v3, v0, [Landroid/animation/Animator;

    aput-object v2, v3, v1

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_b

    if-nez p4, :cond_b

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_6
    const/4 v3, 0x2

    .line 124
    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p3, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    move v5, v2

    :goto_7
    aput v5, v3, v1

    if-eqz p3, :cond_a

    goto :goto_8

    :cond_a
    move v2, v4

    :goto_8
    aput v2, v3, v0

    const-string v2, "alpha"

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 126
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_b
    if-nez p1, :cond_c

    if-nez p4, :cond_c

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    const/16 p4, 0xff

    .line 133
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 137
    :cond_c
    new-instance p1, Lcom/oplus/camera/filmvideomode/b$1;

    invoke-direct {p1, p3, p0, p2}, Lcom/oplus/camera/filmvideomode/b$1;-><init>(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    invoke-static {p2}, Lcom/oplus/camera/filmvideomode/b;->b(Landroid/animation/AnimatorSet;)V

    .line 177
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_d
    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 284
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 285
    invoke-static {p0, p4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 286
    invoke-static {p1, p4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 287
    invoke-static {p2, p4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    .line 289
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    .line 290
    invoke-static {p3, p4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/oplus/camera/ui/control/ShutterButton;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0100a7

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x2

    if-eqz v0, :cond_0

    .line 385
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x1b8

    .line 386
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 387
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x1

    .line 388
    new-array v3, v1, [F

    const/4 v4, 0x0

    int-to-float v5, v4

    aput v5, v3, v4

    const-string v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 389
    new-array v6, v1, [F

    aput v5, v6, v4

    const-string v5, "translationY"

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 390
    new-array v5, v11, [Landroid/animation/Animator;

    aput-object v3, v5, v4

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 391
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    move-object/from16 v12, p3

    .line 394
    invoke-virtual {v12, v9}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const-wide/16 v13, 0xb4

    if-gez v0, :cond_1

    if-eqz v9, :cond_1

    .line 396
    new-array v0, v11, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 397
    invoke-virtual {v15, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    new-array v0, v11, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 399
    invoke-virtual {v15, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    new-instance v7, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$tc_a1G7pNG4JfHn9RlerYqzLmSg;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object v13, v7

    move-object v7, v15

    move-object v14, v8

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$tc_a1G7pNG4JfHn9RlerYqzLmSg;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    new-instance v0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$GtA1ce9wBKD-SQ-CBQvK6lI0cPI;

    invoke-direct {v0, v9}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$GtA1ce9wBKD-SQ-CBQvK6lI0cPI;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 423
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 427
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 429
    new-array v0, v11, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 430
    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    new-instance v10, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$cnGIe0j8CsVt1WwzEF31IYaLBeg;

    move-object v0, v10

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$cnGIe0j8CsVt1WwzEF31IYaLBeg;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/oplus/camera/ui/control/ShutterButton;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/widget/RelativeLayout;Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p4

    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f01002c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0100a7

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/content/res/Resources;)I

    move-result v4

    int-to-float v5, v4

    .line 249
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0707e1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 252
    :goto_0
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x1b8

    .line 253
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 254
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x1

    .line 255
    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const-string v4, "translationX"

    invoke-static {p1, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 256
    new-array v8, v7, [F

    aput v5, v8, v9

    const-string v5, "translationY"

    invoke-static {p1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v5, 0x2

    .line 257
    new-array v8, v5, [Landroid/animation/Animator;

    aput-object v4, v8, v9

    aput-object v0, v8, v7

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v1, :cond_1

    .line 261
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0x50

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    new-instance v2, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$-eYkpBtvA5jPYsG_6g7JERDDMoY;

    invoke-direct {v2, v1}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$-eYkpBtvA5jPYsG_6g7JERDDMoY;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0xb4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 274
    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    new-array v0, v5, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 276
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    new-instance v12, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$aUquX6hr7AXzK_wkNrzj_4WngF4;

    move-object v0, v12

    move-object/from16 v1, p4

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, v11

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p0

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$aUquX6hr7AXzK_wkNrzj_4WngF4;-><init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    new-instance v0, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;

    move-object v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v0, v2, v3, v4, p2}, Lcom/oplus/camera/filmvideomode/-$$Lambda$b$6Tp2IIjwyT71_XpOZCr9IXf0dd0;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xff
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
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 349
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    .line 350
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 351
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707f6

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 356
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707f1

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707f2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string p0, "com.oplus.feature.landscape.camera.sensor.support"

    .line 361
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 362
    iget p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    const/16 p0, 0xa

    .line 365
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0x9

    .line 366
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 367
    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/control/ThumbImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 368
    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPadding(IIII)V

    .line 369
    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070811

    .line 370
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p1, p2, v0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(IZI)V

    const/high16 p0, 0x42b40000    # 90.0f

    .line 371
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setRotation(F)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/oplus/camera/filmvideomode/k;Landroid/view/View;)V
    .locals 8

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 192
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 193
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 194
    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "alpha"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 195
    new-array v5, v2, [F

    int-to-float v0, v0

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput v0, v5, v7

    const-string v0, "translationX"

    invoke-static {p1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x3

    .line 197
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v6

    aput-object p1, v0, v7

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 199
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f01002c

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 407
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 408
    invoke-static {p0, v0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;F)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 411
    invoke-static {p0, v0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;I)V

    .line 413
    sget-boolean p0, Lcom/oplus/camera/filmvideomode/b;->a:Z

    if-eqz p0, :cond_0

    .line 414
    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/b;->a(Z)V

    .line 416
    sget-object p0, Lcom/oplus/camera/filmvideomode/b;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p0, :cond_0

    .line 417
    invoke-interface {p0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;ILandroid/animation/ValueAnimator;)V
    .locals 10

    .line 432
    invoke-virtual/range {p7 .. p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v9, p6

    .line 433
    invoke-static/range {v1 .. v9}, Lcom/oplus/camera/filmvideomode/b;->a(FLcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;I)V

    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 10

    .line 402
    invoke-virtual/range {p8 .. p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 403
    invoke-static/range {v1 .. v9}, Lcom/oplus/camera/filmvideomode/b;->a(FLcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;I)V

    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/modepanel/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->e(I)V

    if-nez p1, :cond_0

    const/16 p1, 0xff

    .line 269
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->e(I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;)V
    .locals 11

    .line 278
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 279
    invoke-static/range {v1 .. v10}, Lcom/oplus/camera/filmvideomode/b;->a(FLcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 81
    sput-boolean p0, Lcom/oplus/camera/filmvideomode/b;->a:Z

    return-void
.end method

.method private static b(Landroid/animation/AnimatorSet;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lcom/oplus/camera/filmvideomode/k;Landroid/view/View;)V
    .locals 8

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 208
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 209
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 210
    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "alpha"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 211
    new-array v5, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    int-to-float v0, v0

    const/4 v6, 0x1

    aput v0, v5, v6

    const-string v0, "translationX"

    invoke-static {p1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x3

    .line 213
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v7

    aput-object p1, v0, v6

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 215
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01002c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    new-instance p1, Lcom/oplus/camera/filmvideomode/b$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/filmvideomode/b$2;-><init>(Lcom/oplus/camera/filmvideomode/k;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static b()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/oplus/camera/filmvideomode/b;->a:Z

    return v0
.end method

.method private static c(Landroid/animation/AnimatorSet;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/oplus/camera/filmvideomode/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$-eYkpBtvA5jPYsG_6g7JERDDMoY(Lcom/oplus/camera/ui/modepanel/p;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/ui/modepanel/p;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$6Tp2IIjwyT71_XpOZCr9IXf0dd0(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$GtA1ce9wBKD-SQ-CBQvK6lI0cPI(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$aUquX6hr7AXzK_wkNrzj_4WngF4(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ShutterButton;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$cnGIe0j8CsVt1WwzEF31IYaLBeg(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$tc_a1G7pNG4JfHn9RlerYqzLmSg(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/oplus/camera/filmvideomode/b;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
