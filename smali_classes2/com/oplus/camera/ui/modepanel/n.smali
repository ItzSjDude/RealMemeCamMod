.class public Lcom/oplus/camera/ui/modepanel/n;
.super Ljava/lang/Object;
.source "ModeTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/modepanel/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/Typeface;


# instance fields
.field private final b:Landroid/view/animation/PathInterpolator;

.field private final c:Landroid/view/animation/PathInterpolator;

.field private d:Landroid/app/Activity;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/oplus/camera/ui/modepanel/n$a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/oplus/camera/ui/menu/a/b;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->b:Landroid/view/animation/PathInterpolator;

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->c:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    const/16 v1, 0x8

    .line 45
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->h:I

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->i:I

    .line 48
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->j:I

    .line 49
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->k:I

    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/modepanel/n;->p:I

    .line 56
    iput-boolean v1, p0, Lcom/oplus/camera/ui/modepanel/n;->q:Z

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    .line 61
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/modepanel/n;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    const v0, 0x7f090254

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090253

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/n;->f()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070494

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/n;->i:I

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    const v0, 0x7f0901cc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/a/b;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705e4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/n;->j:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/n;->k:I

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/a/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 358
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/n;->h:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/n;->h:I

    .line 364
    iget-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/b;->setAlpha(F)V

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/menu/a/b;->a(ILandroid/view/View;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/n;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    return p0
.end method

.method private b(I)Landroid/view/animation/AnimationSet;
    .locals 6

    .line 470
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v1, 0xfa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 473
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 475
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 476
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne v5, p1, :cond_1

    .line 478
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 479
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 480
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 481
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 483
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/n;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p1, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x190

    .line 484
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 485
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p0, 0x96

    .line 488
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    return-object p0
.end method

.method private b(Landroid/view/animation/Animation;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method private c(I)Landroid/view/animation/AnimationSet;
    .locals 6

    .line 495
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v1, 0xfa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 498
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 499
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 500
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 501
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne v5, p1, :cond_1

    .line 503
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 504
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 505
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 508
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/n;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p1, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x190

    .line 509
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 510
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/modepanel/n;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/n;->j:I

    return p0
.end method

.method private d()V
    .locals 10

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/n;->e()V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    const v2, 0x7f080571

    const/16 v3, 0xc

    const/4 v4, 0x1

    const v5, 0x7f070794

    const/16 v6, 0xe

    const/4 v7, -0x2

    if-eq v1, v4, :cond_1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_0

    .line 155
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v2, 0x7f070796

    .line 160
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iput-boolean v4, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_9

    .line 166
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/b;->a(Landroid/view/View;)V

    goto/16 :goto_6

    .line 144
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x7f070a02

    .line 149
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 89
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x15

    .line 92
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/n;->p:I

    const/16 v7, 0x10e

    if-eq v7, v3, :cond_3

    const/16 v8, 0x5a

    if-ne v8, v3, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f070cc1

    .line 98
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    :goto_0
    const v3, 0x7f070cd6

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 101
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 102
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 105
    iget-boolean v9, p0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    if-eqz v9, :cond_4

    const v9, 0x7f070cc0

    .line 106
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 107
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    .line 108
    iget v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v5

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 111
    :cond_4
    iget v5, p0, Lcom/oplus/camera/ui/modepanel/n;->p:I

    if-ne v7, v5, :cond_5

    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 113
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 115
    :cond_5
    iget-boolean v4, p0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    if-eqz v4, :cond_6

    .line 116
    div-int/lit8 v3, v3, 0x2

    const v4, 0x7f070c6e

    .line 117
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto :goto_3

    :cond_6
    const v4, 0x7f070cc4

    .line 118
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 119
    div-int/lit8 v3, v3, 0x2

    const v4, 0x7f070cb2

    .line 120
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    .line 122
    :cond_7
    div-int/lit8 v3, v3, 0x2

    const v4, 0x7f070cbe

    .line 123
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    :goto_3
    const v4, 0x7f070185

    .line 126
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 129
    :goto_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    if-eqz v0, :cond_8

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    const v3, 0x7f08056e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :goto_5
    iput-boolean v8, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz v0, :cond_9

    .line 138
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/b;->b(Landroid/view/View;)V

    .line 172
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/modepanel/n;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/n;->k:I

    return p0
.end method

.method private e()V
    .locals 16

    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    const v2, 0x7f09024e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/inverse/InverseImageView;

    .line 179
    iget-object v2, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 183
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_9

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 191
    :cond_1
    iget v5, v0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    const/4 v8, 0x2

    const/16 v9, 0xf

    const/16 v10, 0xa

    const v11, 0x7f070790

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v5, v12, :cond_3

    const v14, 0x7fffffff

    const v15, 0x7f070770

    const v6, 0x7f07076f

    const/16 v7, 0xe

    const/4 v12, -0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_2

    const/4 v8, 0x4

    if-eq v5, v8, :cond_2

    .line 261
    invoke-virtual {v2, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 263
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 264
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 265
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 266
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 268
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 269
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 270
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 271
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto/16 :goto_3

    .line 245
    :cond_2
    invoke-virtual {v2, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 247
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 248
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 249
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 250
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v5, 0x7f070cb6

    .line 251
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v6, 0x7f0705ee

    .line 252
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v5, v3

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 253
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 254
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 255
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 256
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 257
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto/16 :goto_3

    .line 193
    :cond_3
    iget-object v5, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v13, v13}, Landroid/widget/TextView;->measure(II)V

    .line 194
    iget-object v5, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    .line 195
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070cc4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-lt v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v13

    :goto_0
    const v6, 0x7f070cc2

    .line 197
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 198
    iget-object v7, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lt v7, v6, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    move v7, v13

    :goto_1
    iput-boolean v7, v0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    .line 200
    iget-boolean v7, v0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    if-eqz v7, :cond_6

    const v5, 0x7f070c6d

    .line 202
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 201
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v5, 0x7f070c6b

    .line 204
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 203
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v5, 0x7f070c6c

    .line 206
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 205
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_6
    const v7, 0x7f070cb4

    if-eqz v5, :cond_7

    const v5, 0x7f070cb1

    .line 208
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 209
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v5, 0x7f070cb0

    .line 210
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 212
    :cond_7
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 213
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v5, 0x7f070cb5

    .line 214
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 217
    :goto_2
    iget-boolean v5, v0, Lcom/oplus/camera/ui/modepanel/n;->m:Z

    if-eqz v5, :cond_8

    .line 218
    iget-object v5, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\\s"

    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 221
    iget-object v11, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    aget-object v7, v7, v13

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    int-to-float v11, v6

    cmpg-float v7, v7, v11

    if-gez v7, :cond_8

    .line 222
    iget-object v7, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    const-string v11, " "

    const-string v12, "\n"

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_8
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 227
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v5, 0x7f070cb6

    .line 228
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v7, 0x7f0705ee

    .line 229
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v5, 0x7f070cb7

    .line 230
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 231
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 232
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 233
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 234
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 235
    iget-object v3, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    :goto_3
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, v0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/modepanel/n;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/n;->h:I

    return p0
.end method

.method private f()Landroid/graphics/Typeface;
    .locals 1

    .line 438
    sget-object v0, Lcom/oplus/camera/ui/modepanel/n;->a:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 442
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->d:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/modepanel/n;->a:Landroid/graphics/Typeface;

    .line 444
    sget-object p0, Lcom/oplus/camera/ui/modepanel/n;->a:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 343
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    if-ne v0, v1, :cond_0

    .line 344
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public a(II)V
    .locals 1

    .line 285
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    .line 287
    iput p2, p0, Lcom/oplus/camera/ui/modepanel/n;->p:I

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/n;->d()V

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/n;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/n;->q:Z

    if-eqz p1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 291
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/oplus/camera/ui/modepanel/n$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/modepanel/n$1;-><init>(Lcom/oplus/camera/ui/modepanel/n;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public a(ILandroid/view/animation/Animation;Z)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeTitle"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 380
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/modepanel/n;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/modepanel/n;->b(Landroid/view/animation/Animation;)V

    :goto_0
    if-nez p3, :cond_2

    .line 385
    iget-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/b;->clearAnimation()V

    if-eqz p2, :cond_2

    .line 389
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/a/b;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public a(IZI)V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeTitle"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 405
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/modepanel/n;->b(I)Landroid/view/animation/AnimationSet;

    move-result-object p1

    .line 406
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/modepanel/n;->c(I)Landroid/view/animation/AnimationSet;

    move-result-object p1

    .line 409
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/n;->b(Landroid/view/animation/Animation;)V

    .line 412
    :goto_0
    iget-boolean p2, p0, Lcom/oplus/camera/ui/modepanel/n;->l:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    if-eqz p2, :cond_4

    .line 413
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/a/b;->clearAnimation()V

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->n:Lcom/oplus/camera/ui/menu/a/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 417
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 418
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 421
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/modepanel/n$a;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 323
    iget p1, p0, Lcom/oplus/camera/ui/modepanel/n;->o:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/n;->d()V

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oplus/camera/ui/modepanel/n$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/modepanel/n$2;-><init>(Lcom/oplus/camera/ui/modepanel/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/oplus/camera/ui/modepanel/n;->q:Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeTitle"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 354
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/n;->h:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    .line 313
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    .line 314
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/n;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n;->g:Lcom/oplus/camera/ui/modepanel/n$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/n$a;->a()V

    :cond_1
    return-void
.end method
