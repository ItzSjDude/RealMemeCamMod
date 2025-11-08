.class public Lcom/oplus/camera/filmvideomode/d;
.super Landroid/widget/RelativeLayout;
.source "FilmMainBarItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/RelativeLayout;

.field private d:I

.field private e:Landroid/app/Activity;

.field private f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

.field private g:Lcom/airbnb/lottie/LottieAnimationView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/oplus/camera/professional/w;

.field private j:Lcom/oplus/camera/professional/w;

.field private k:Landroid/widget/ImageView;

.field private l:I

.field private m:I

.field private n:Landroid/content/res/Resources;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/a/a/f;

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/oplus/camera/filmvideomode/d;->a:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/filmvideomode/d;->b:I

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    .line 45
    iput v0, p0, Lcom/oplus/camera/filmvideomode/d;->d:I

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    .line 47
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 48
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    .line 51
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    .line 53
    iput v0, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    .line 54
    iput v0, p0, Lcom/oplus/camera/filmvideomode/d;->m:I

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/d;->o:Z

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->p:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->q:Lcom/a/a/f;

    .line 60
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/d;->r:Z

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/oplus/camera/filmvideomode/d;->s:I

    .line 62
    iput v1, p0, Lcom/oplus/camera/filmvideomode/d;->t:I

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/d;->u:Z

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v2, 0x7f07071a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->d:I

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v2, 0x7f07071e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v2, 0x7f07071c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->m:I

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    const v2, 0x7f06004d

    invoke-static {p1, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->a:I

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->b:I

    .line 78
    new-instance p1, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcom/oplus/camera/ui/RotateLottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 79
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v4, 0x7f0704ae

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v5, 0x7f0704ad

    .line 81
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const v4, 0x7f0803fe

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setBackgroundResource(I)V

    .line 83
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v3, p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAlpha(F)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->addView(Landroid/view/View;)V

    .line 87
    new-instance p1, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcom/oplus/camera/ui/RotateLottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    .line 88
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v4, 0x7f07070e

    .line 89
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v5, 0x7f07070d

    .line 90
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f08027c

    goto :goto_0

    :cond_0
    const v4, 0x7f08027b

    :goto_0
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setBackgroundResource(I)V

    .line 93
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->addView(Landroid/view/View;)V

    .line 96
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->a(Lcom/oplus/camera/professional/w;)V

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->addView(Landroid/view/View;)V

    .line 100
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    .line 101
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->a(Lcom/oplus/camera/professional/w;)V

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    const v3, 0x7f1002e1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/w;->setText(I)V

    .line 104
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/w;->setAlpha(F)V

    .line 105
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->addView(Landroid/view/View;)V

    .line 107
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    .line 108
    new-instance p1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0805c8

    invoke-static {v3, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    .line 111
    invoke-static {v3, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    .line 118
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v2, 0x7f070708

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v4, 0x7f070707

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 120
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    const v1, 0x7f0805c9

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    .line 126
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/d;->addView(Landroid/view/View;)V

    .line 132
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->q:Lcom/a/a/f;

    .line 133
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07071b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->d:I

    .line 134
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07071f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    .line 136
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    iget p1, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/d;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/professional/w;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v1, 0x7f07071d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setHeight(I)V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setIncludeFontPadding(Z)V

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v2, 0x7f070720

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/professional/w;->setTextSize(IF)V

    const/16 v0, 0x11

    .line 147
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setGravity(I)V

    .line 148
    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setTextColor(I)V

    .line 149
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->n:Landroid/content/res/Resources;

    const v0, 0x7f070717

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v0, 0x0

    const v1, 0x7f06006a

    invoke-virtual {p1, p0, v0, v0, v1}, Lcom/oplus/camera/professional/w;->setShadowLayer(FFFI)V

    return-void
.end method

.method private a()Z
    .locals 0

    .line 241
    iget p0, p0, Lcom/oplus/camera/filmvideomode/d;->s:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/d;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setItemAutoVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/w;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilmMainBarItem"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0xfa

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 169
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p1, v1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 179
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, v0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->h:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/d;->o:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 255
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 256
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAlpha(F)V

    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->isSelected()Z

    move-result v0

    .line 265
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelected, selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bPressed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FilmMainBarItem"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, p1, :cond_2

    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 277
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 278
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 280
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public b(ZZ)V
    .locals 6

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled, enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/filmvideomode/d;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilmMainBarItem"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->isEnabled()Z

    move-result v0

    .line 338
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 342
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 343
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 344
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->refreshDrawableState()V

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-nez p1, :cond_3

    .line 351
    iget v2, p0, Lcom/oplus/camera/filmvideomode/d;->t:I

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_3

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    const v4, 0x7f1002e1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/d;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/d;->a()Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    if-eqz v2, :cond_4

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 362
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_2

    .line 366
    :cond_4
    iget-boolean v1, p0, Lcom/oplus/camera/filmvideomode/d;->o:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    move v0, v3

    .line 367
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    if-eqz p1, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setAlpha(F)V

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    move v0, v5

    goto :goto_3

    :cond_9
    move v0, v4

    :goto_3
    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v4, v5

    :goto_4
    if-eqz p2, :cond_b

    const/16 v3, 0xfa

    .line 377
    :cond_b
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-static {p0, v0, v4, v3, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/ImageView;FFILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getItemValueText()Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->p:Ljava/lang/String;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 397
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FilmMainBarItem"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 403
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilmMainBarItem"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    .line 292
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->getMeasuredWidth()I

    move-result p1

    .line 294
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->getMeasuredHeight()I

    move-result p3

    sub-int p5, p4, p1

    .line 295
    div-int/lit8 p5, p5, 0x2

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    add-int/2addr p1, p5

    invoke-virtual {v0, p5, p2, p1, p3}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->layout(IIII)V

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getMeasuredWidth()I

    move-result p1

    .line 302
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getMeasuredHeight()I

    move-result p3

    sub-int p5, p4, p1

    .line 303
    div-int/lit8 p5, p5, 0x2

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/d;->d:I

    add-int/2addr p1, p5

    add-int/2addr p3, v1

    invoke-virtual {v0, p5, v1, p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->layout(IIII)V

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    if-eqz p1, :cond_2

    .line 309
    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p2

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredHeight()I

    move-result p1

    sub-int p3, p4, p2

    .line 311
    div-int/lit8 p3, p3, 0x2

    .line 312
    iget-object p5, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    add-int v1, p3, p2

    add-int v2, v0, p1

    invoke-virtual {p5, p3, v0, v1, v2}, Lcom/oplus/camera/professional/w;->layout(IIII)V

    goto :goto_0

    :cond_2
    move p1, p2

    .line 316
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_3

    .line 317
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p3

    .line 318
    iget-object p5, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p5

    sub-int p2, p4, p2

    .line 319
    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->m:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p3

    .line 320
    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    sub-int/2addr p1, p5

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 321
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->c:Landroid/widget/RelativeLayout;

    add-int/2addr p3, p2

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, v0, p3, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    if-eqz p1, :cond_4

    .line 325
    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p1

    .line 326
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/w;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p4, p1

    .line 327
    div-int/lit8 p4, p4, 0x2

    .line 328
    iget-object p3, p0, Lcom/oplus/camera/filmvideomode/d;->j:Lcom/oplus/camera/professional/w;

    iget p0, p0, Lcom/oplus/camera/filmvideomode/d;->l:I

    add-int/2addr p1, p4

    add-int/2addr p2, p0

    invoke-virtual {p3, p4, p0, p1, p2}, Lcom/oplus/camera/professional/w;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public setItemAnimation(I)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 237
    :cond_0
    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->s:I

    return-void
.end method

.method public setItemIndex(I)V
    .locals 1

    .line 190
    iget v0, p0, Lcom/oplus/camera/filmvideomode/d;->t:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/d;->u:Z

    .line 191
    iput p1, p0, Lcom/oplus/camera/filmvideomode/d;->t:I

    return-void
.end method

.method public setItemTitleImage(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 196
    new-instance v1, Lcom/oplus/camera/filmvideomode/d$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/filmvideomode/d$1;-><init>(Lcom/oplus/camera/filmvideomode/d;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setItemValueText(Ljava/lang/String;)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/d;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/oplus/camera/filmvideomode/d;->t:I

    if-ne v0, v1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->e:Landroid/app/Activity;

    const v0, 0x7f1002e1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/d;->p:Ljava/lang/String;

    .line 214
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/oplus/camera/professional/w;->a:I

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->i:Lcom/oplus/camera/professional/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/w;->measure(II)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/filmvideomode/d;->a(ZZ)V

    return-void
.end method

.method public setTouched(Z)V
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/d;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 385
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/d;->r:Z

    .line 388
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/d;->g:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/d;->q:Lcom/a/a/f;

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    return-void
.end method
