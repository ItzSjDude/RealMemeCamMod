.class public Lcom/oplus/camera/professional/l;
.super Landroid/widget/RelativeLayout;
.source "MainBarItem.java"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:I

.field private final d:I

.field private e:Landroid/app/Activity;

.field private f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/oplus/camera/professional/w;

.field private j:Lcom/oplus/camera/professional/w;

.field private k:I

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:Landroid/content/res/Resources;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Lcom/a/a/f;

.field private t:Z

.field private u:I

.field private v:Landroid/animation/Animator;

.field private w:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/screen/b/a;)V
    .locals 8

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/oplus/camera/professional/l;->k:I

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    .line 54
    iput v1, p0, Lcom/oplus/camera/professional/l;->m:I

    .line 55
    iput v1, p0, Lcom/oplus/camera/professional/l;->n:I

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lcom/oplus/camera/professional/l;->p:Z

    .line 59
    iput v1, p0, Lcom/oplus/camera/professional/l;->r:I

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->s:Lcom/a/a/f;

    .line 62
    iput-boolean v1, p0, Lcom/oplus/camera/professional/l;->t:Z

    const/4 v3, -0x1

    .line 63
    iput v3, p0, Lcom/oplus/camera/professional/l;->u:I

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    if-nez p2, :cond_0

    move p1, v1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    if-ne v2, p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f0704db

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/l;->k:I

    .line 80
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/professional/l;->a:I

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f0704de

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/professional/l;->b:I

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f0704dc

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/l;->m:I

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f0704d8

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 84
    iget-object v4, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v5, 0x7f0704df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 85
    iget-object v5, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v6, 0x7f0704dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v4

    div-int/2addr v5, v0

    iput v5, p0, Lcom/oplus/camera/professional/l;->r:I

    goto :goto_1

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f070719

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/l;->k:I

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f07071a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/professional/l;->a:I

    .line 90
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f07070a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oplus/camera/professional/l;->b:I

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f07071e

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/l;->m:I

    .line 92
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f07070e

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 93
    iget-object v4, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v5, 0x7f07070b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 94
    iput v1, p0, Lcom/oplus/camera/professional/l;->r:I

    .line 97
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v6, 0x7f07071c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/professional/l;->n:I

    .line 99
    iget-object v5, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    const v6, 0x7f06004d

    invoke-static {v5, v6}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/professional/l;->c:I

    .line 100
    iget-object v5, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-static {v5}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/professional/l;->d:I

    .line 102
    new-instance v5, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v7, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {v5, v7}, Lcom/oplus/camera/ui/RotateLottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    .line 103
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const v7, 0x7f0804dd

    invoke-virtual {p1, v7}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setBackgroundResource(I)V

    .line 105
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p1, v5}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 108
    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p1

    if-nez p1, :cond_2

    move v1, v2

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setLightBackground(Z)V

    goto :goto_2

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result p2

    if-ne p2, v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setLightBackground(Z)V

    .line 114
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/l;->addView(Landroid/view/View;)V

    .line 116
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object p2, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    .line 117
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/l;->a(Lcom/oplus/camera/professional/w;)V

    .line 118
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/l;->addView(Landroid/view/View;)V

    .line 120
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    .line 121
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    const v0, 0x7f0804df

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/professional/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance p1, Lcom/oplus/camera/professional/w;

    iget-object p2, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/professional/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    .line 127
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/l;->a(Lcom/oplus/camera/professional/w;)V

    .line 128
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    const v0, 0x7f1002e1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setText(I)V

    .line 130
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setTextColor(I)V

    .line 131
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/l;->addView(Landroid/view/View;)V

    .line 133
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    .line 134
    new-instance p1, Lcom/oplus/camera/ui/u;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/oplus/camera/ui/u;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0805c8

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    .line 137
    invoke-static {v0, v6}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v2, 0x7f070708

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v4, 0x7f070707

    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0805c9

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/l;->addView(Landroid/view/View;)V

    .line 158
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/l;->s:Lcom/a/a/f;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/l;)Lcom/oplus/camera/ui/RotateLottieAnimationView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/professional/w;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v1, 0x7f07071d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setHeight(I)V

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/w;->setIncludeFontPadding(Z)V

    .line 165
    iget-object v2, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v3, 0x7f070720

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 165
    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/professional/w;->setTextSize(IF)V

    .line 167
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x11

    .line 168
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setGravity(I)V

    .line 169
    iget v0, p0, Lcom/oplus/camera/professional/l;->c:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/w;->setTextColor(I)V

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->o:Landroid/content/res/Resources;

    const v0, 0x7f070717

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v0, 0x0

    const v1, 0x7f06006a

    invoke-virtual {p1, p0, v0, v0, v1}, Lcom/oplus/camera/professional/w;->setShadowLayer(FFFI)V

    .line 172
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/l;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    return-object p0
.end method

.method private b(Z)V
    .locals 11

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    const-wide/16 v1, 0xfa

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "alpha"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    new-instance v9, Landroid/animation/FloatEvaluator;

    invoke-direct {v9}, Landroid/animation/FloatEvaluator;-><init>()V

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v8, v10, v7

    aput-object v3, v10, v4

    invoke-static {v0, v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    new-instance v9, Lcom/oplus/camera/professional/l$2;

    invoke-direct {v9, p0}, Lcom/oplus/camera/professional/l$2;-><init>(Lcom/oplus/camera/professional/l;)V

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    new-instance v9, Landroid/animation/FloatEvaluator;

    invoke-direct {v9}, Landroid/animation/FloatEvaluator;-><init>()V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v8, v5, v4

    invoke-static {v0, v6, v9, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    new-instance v1, Lcom/oplus/camera/professional/l$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/l$3;-><init>(Lcom/oplus/camera/professional/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 323
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->v:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 325
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->w:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_2
    return-void
.end method

.method private b()Z
    .locals 0

    .line 244
    iget p0, p0, Lcom/oplus/camera/professional/l;->u:I

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

    .line 424
    invoke-direct {p0}, Lcom/oplus/camera/professional/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/oplus/camera/professional/l;->p:Z

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0xfa

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 193
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, v1, v0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/oplus/camera/professional/l;->p:Z

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

    .line 232
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;ZI)V

    return-void
.end method

.method public b(ZZ)V
    .locals 4

    .line 379
    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->isEnabled()Z

    move-result v0

    .line 380
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-ne v0, p1, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/l;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 389
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->f()V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setProgress(F)V

    goto :goto_3

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 394
    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    .line 397
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/professional/l;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    .line 398
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 402
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

    .line 409
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const/4 p1, 0x0

    invoke-static {p0, v3, v0, v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/ImageView;FFILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getItemValueText()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 5

    const v0, 0x7f0903d8

    if-ne v0, p1, :cond_0

    .line 254
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 256
    iget v0, p0, Lcom/oplus/camera/professional/l;->r:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oplus/camera/professional/l;->k:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oplus/camera/professional/l;->k:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/oplus/camera/professional/l;->k:I

    add-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/oplus/camera/professional/l;->k:I

    add-int/2addr p1, p0

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    .line 337
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->getMeasuredWidth()I

    move-result p1

    .line 339
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 340
    div-int/lit8 p3, p3, 0x2

    .line 341
    iget-object p5, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget v0, p0, Lcom/oplus/camera/professional/l;->k:I

    add-int/2addr p1, p3

    add-int/2addr p2, v0

    invoke-virtual {p5, p3, v0, p1, p2}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->layout(IIII)V

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p2

    .line 347
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredHeight()I

    move-result p1

    sub-int p3, p4, p2

    .line 348
    div-int/lit8 p3, p3, 0x2

    .line 349
    iget-object p5, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    iget v0, p0, Lcom/oplus/camera/professional/l;->m:I

    add-int v1, p3, p2

    add-int v2, v0, p1

    invoke-virtual {p5, p3, v0, v1, v2}, Lcom/oplus/camera/professional/w;->layout(IIII)V

    goto :goto_0

    :cond_1
    move p1, p2

    .line 353
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_2

    .line 354
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p3

    .line 355
    iget-object p5, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p5

    sub-int p2, p4, p2

    .line 356
    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/oplus/camera/professional/l;->n:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p3

    .line 357
    iget v0, p0, Lcom/oplus/camera/professional/l;->m:I

    sub-int/2addr p1, p5

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 358
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->g:Landroid/widget/RelativeLayout;

    add-int/2addr p3, p2

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, v0, p3, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/oplus/camera/professional/w;->getMeasuredWidth()I

    move-result p1

    .line 363
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/w;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 364
    div-int/lit8 p3, p3, 0x2

    .line 365
    iget-object p5, p0, Lcom/oplus/camera/professional/l;->j:Lcom/oplus/camera/professional/w;

    iget v0, p0, Lcom/oplus/camera/professional/l;->m:I

    add-int/2addr p1, p3

    add-int/2addr p2, v0

    invoke-virtual {p5, p3, v0, p1, p2}, Lcom/oplus/camera/professional/w;->layout(IIII)V

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 371
    iget-object p2, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p4, p1

    .line 372
    div-int/lit8 p4, p4, 0x2

    .line 373
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    sget p3, Lcom/oplus/camera/professional/l;->b:I

    add-int/2addr p1, p4

    add-int/2addr p2, p3

    invoke-virtual {p0, p4, p3, p1, p2}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public setItemAnimation(I)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAnimation(I)V

    .line 240
    :cond_0
    iput p1, p0, Lcom/oplus/camera/professional/l;->u:I

    return-void
.end method

.method public setItemTitleImage(I)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Lcom/oplus/camera/professional/l$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/professional/l$1;-><init>(Lcom/oplus/camera/professional/l;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setItemValueText(Ljava/lang/String;)V
    .locals 2

    .line 216
    iput-object p1, p0, Lcom/oplus/camera/professional/l;->q:Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/oplus/camera/professional/w;->a:I

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/w;->setVerticalDraw(Z)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/w;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->i:Lcom/oplus/camera/professional/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/w;->measure(II)V

    return-void
.end method

.method public setLightBackground(Z)V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setLightBackground(Z)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->isPressed()Z

    move-result v0

    .line 267
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    if-ne v0, p1, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/l;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/l;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 281
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/l;->b(Z)V

    return-void
.end method

.method public setTouched(Z)V
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/oplus/camera/professional/l;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 417
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/l;->t:Z

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->f:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v1, p0, Lcom/oplus/camera/professional/l;->s:Lcom/a/a/f;

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/professional/l;->l:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/camera/professional/l;->s:Lcom/a/a/f;

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V

    return-void
.end method
