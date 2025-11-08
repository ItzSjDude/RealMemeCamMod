.class public Lcom/oplus/camera/professional/f;
.super Landroid/widget/RelativeLayout;
.source "HSMainBarItem.java"


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:I

.field private d:Landroid/app/Activity;

.field private e:Lcom/airbnb/lottie/LottieAnimationView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/oplus/camera/professional/w;

.field private l:Lcom/oplus/camera/professional/w;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/content/res/Resources;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/a/a/f;

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 10

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/oplus/camera/professional/f;->m:I

    .line 51
    iput v1, p0, Lcom/oplus/camera/professional/f;->n:I

    .line 52
    iput v1, p0, Lcom/oplus/camera/professional/f;->o:I

    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p0, Lcom/oplus/camera/professional/f;->q:Z

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/professional/f;->s:Lcom/a/a/f;

    .line 58
    iput-boolean v1, p0, Lcom/oplus/camera/professional/f;->t:Z

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/oplus/camera/professional/f;->u:I

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    .line 65
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f070649

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/professional/f;->a:I

    .line 68
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f070655

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/f;->m:I

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f070654

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/f;->o:I

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f070652

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/f;->n:I

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    const v3, 0x7f06004d

    invoke-static {p1, v3}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/f;->b:I

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    const v4, 0x7f060044

    invoke-static {p1, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/f;->c:I

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    const/16 v5, 0x8

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcom/oplus/camera/ui/RotateLottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 77
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f07064d

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v6, 0x7f07064c

    .line 79
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    iget-object v2, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0804de

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setBackgroundResource(I)V

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0805da

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 84
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->measure(II)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/f;->addView(Landroid/view/View;)V

    .line 87
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1, v5}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 90
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1, v5}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 93
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    .line 94
    new-instance p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    new-instance p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v2, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    .line 103
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 106
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 109
    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    .line 110
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v7, 0x7f07064f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v8, 0x7f07064e

    .line 111
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    iget-object v6, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0604ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/f;->addView(Landroid/view/View;)V

    .line 117
    new-instance p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    .line 118
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v7, 0x7f070648

    .line 120
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {p1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xe

    .line 121
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v6, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v8, 0x7f070651

    .line 126
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 125
    invoke-virtual {p1, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/f;->addView(Landroid/view/View;)V

    .line 130
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    .line 131
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/f;->a(Lcom/oplus/camera/professional/w;)V

    .line 133
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    .line 134
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/f;->a(Lcom/oplus/camera/professional/w;)V

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1, v5}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    const v6, 0x7f1002e1

    invoke-virtual {p1, v6}, Lcom/oplus/camera/professional/w;->setText(I)V

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/oplus/camera/professional/w;->setTextColor(I)V

    .line 139
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    .line 140
    new-instance p1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0805c8

    invoke-static {v6, v8}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    .line 143
    invoke-static {v6, v3}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 142
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v6, 0x7f070647

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v8, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v9, 0x7f070646

    .line 152
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0805c9

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    .line 159
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    .line 164
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 167
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/f;->addView(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/f;->addView(Landroid/view/View;)V

    .line 176
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/f;->s:Lcom/a/a/f;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/f;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/professional/w;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v1, 0x7f070653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setHeight(I)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/w;->setIncludeFontPadding(Z)V

    .line 183
    iget-object v2, p0, Lcom/oplus/camera/professional/f;->p:Landroid/content/res/Resources;

    const v3, 0x7f070656

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 183
    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/professional/w;->setTextSize(IF)V

    .line 185
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x11

    .line 186
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setGravity(I)V

    .line 187
    iget p0, p0, Lcom/oplus/camera/professional/f;->b:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/w;->setTextColor(I)V

    return-void
.end method

.method private b()Z
    .locals 0

    .line 259
    iget p0, p0, Lcom/oplus/camera/professional/f;->u:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 403
    invoke-direct {p0}, Lcom/oplus/camera/professional/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/oplus/camera/professional/f;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0xfa

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 202
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 208
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, v0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/oplus/camera/professional/f;->q:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 247
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;ZI)V

    return-void
.end method

.method public b(ZZ)V
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->isEnabled()Z

    move-result v0

    .line 359
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-ne v0, p1, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 368
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_3

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 373
    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 376
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/professional/f;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    .line 377
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 381
    :goto_2
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    :cond_7
    :goto_3
    const v0, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    move v3, v0

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    if-eqz p2, :cond_a

    const/16 v1, 0xfa

    .line 388
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-static {p0, v3, v0, v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/ImageView;FFILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getItemValueText()Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->r:Ljava/lang/String;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getMeasuredWidth()I

    move-result p1

    .line 313
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 314
    div-int/lit8 p3, p3, 0x2

    sub-int v0, p5, p2

    .line 315
    div-int/lit8 v0, v0, 0x2

    .line 316
    iget-object v1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    add-int/2addr p1, p3

    add-int/2addr p2, v0

    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->layout(IIII)V

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 322
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 323
    div-int/lit8 p3, p3, 0x2

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    sget v1, Lcom/oplus/camera/professional/f;->a:I

    add-int/2addr p1, p3

    add-int/2addr p2, v1

    invoke-virtual {v0, p3, v1, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 329
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 331
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_2

    .line 332
    invoke-virtual {p2}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/professional/f;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/professional/f;->n:I

    add-int/2addr p1, p2

    .line 335
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 336
    div-int/lit8 p3, p3, 0x2

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->i:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oplus/camera/professional/f;->m:I

    add-int/2addr p1, p3

    add-int/2addr p2, v1

    invoke-virtual {v0, p3, v1, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 341
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    if-eqz p1, :cond_4

    .line 342
    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p1

    .line 343
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/w;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p4, p1

    .line 344
    div-int/lit8 p4, p4, 0x2

    .line 345
    iget-object p3, p0, Lcom/oplus/camera/professional/f;->l:Lcom/oplus/camera/professional/w;

    iget v0, p0, Lcom/oplus/camera/professional/f;->m:I

    add-int/2addr p1, p4

    add-int/2addr p2, v0

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/oplus/camera/professional/w;->layout(IIII)V

    .line 349
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 350
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    .line 351
    iget-object p2, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    .line 352
    div-int/lit8 p5, p5, 0x2

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->g:Landroid/widget/ImageView;

    const/4 p3, 0x0

    add-int/2addr p2, p5

    invoke-virtual {p0, p3, p5, p1, p2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_5
    return-void
.end method

.method public setItemAnimation(I)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 255
    :cond_0
    iput p1, p0, Lcom/oplus/camera/professional/f;->u:I

    return-void
.end method

.method public setItemTitleImage(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lcom/oplus/camera/professional/f$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/professional/f$1;-><init>(Lcom/oplus/camera/professional/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setItemValueText(Ljava/lang/String;)V
    .locals 2

    .line 231
    iput-object p1, p0, Lcom/oplus/camera/professional/f;->r:Ljava/lang/String;

    .line 232
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/oplus/camera/professional/w;->a:I

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/w;->measure(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 7

    .line 268
    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->isPressed()Z

    move-result v0

    .line 269
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    if-ne v0, p1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/f;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 283
    iget v0, p0, Lcom/oplus/camera/professional/f;->b:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/oplus/camera/professional/f;->c:I

    :goto_0
    if-eqz p1, :cond_4

    .line 284
    iget p1, p0, Lcom/oplus/camera/professional/f;->c:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/oplus/camera/professional/f;->b:I

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/ImageView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    iget-object v1, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/TextView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    iget-object v1, p0, Lcom/oplus/camera/professional/f;->k:Lcom/oplus/camera/professional/w;

    invoke-static/range {v1 .. v6}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/TextView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v1, p0, Lcom/oplus/camera/professional/f;->j:Landroid/widget/ImageView;

    invoke-static/range {v1 .. v6}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/ImageView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setTouched(Z)V
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/oplus/camera/professional/f;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 396
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/f;->t:Z

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->e:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/oplus/camera/professional/f;->s:Lcom/a/a/f;

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/professional/f;->f:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oplus/camera/professional/f;->s:Lcom/a/a/f;

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    return-void
.end method
