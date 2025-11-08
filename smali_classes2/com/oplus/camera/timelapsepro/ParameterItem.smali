.class public Lcom/oplus/camera/timelapsepro/ParameterItem;
.super Landroid/widget/RelativeLayout;
.source "ParameterItem.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private f:Lcom/oplus/camera/timelapsepro/a/e;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->h:Z

    const/4 p3, 0x0

    .line 48
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->i:Landroid/os/Handler;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0171

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setClipChildren(Z)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setClipToPadding(Z)V

    const p2, 0x7f0901e0

    .line 67
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->a:Landroid/widget/ImageView;

    const p2, 0x7f0901dc

    .line 68
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    const p2, 0x7f0901db

    .line 69
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const p2, 0x7f09027e

    .line 70
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->d:Landroid/widget/TextView;

    const p2, 0x7f090061

    .line 71
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->e:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070148

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 74
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070146

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 75
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->d:Landroid/widget/TextView;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float v0, v0

    const v2, 0x7f060072

    invoke-static {p1, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p2, p3, v0, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->i:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->d()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/ParameterItem;)Lcom/oplus/camera/ui/RotateLottieAnimationView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/oplus/camera/timelapsepro/ParameterItem$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/timelapsepro/ParameterItem$1;-><init>(Lcom/oplus/camera/timelapsepro/ParameterItem;Lcom/a/a/f;)V

    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Lcom/oplus/camera/timelapsepro/a/e$a;)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Lcom/oplus/camera/timelapsepro/a/e$b;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->i:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public a(IIZ)V
    .locals 5

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const v0, 0x7f070c0d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f070c02

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    xor-int/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070c0e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 233
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070c03

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/a/e;Lcom/oplus/camera/timelapsepro/a/e$b;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setData, parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterItem"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->h()Z

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->h()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setItemEnabled(Z)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->h:Z

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    new-instance v0, Lcom/oplus/camera/timelapsepro/ParameterItem$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/timelapsepro/ParameterItem$2;-><init>(Lcom/oplus/camera/timelapsepro/ParameterItem;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/a/e;->a(Lcom/oplus/camera/timelapsepro/a/e$a;)V

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/a/e;->a(Lcom/oplus/camera/timelapsepro/a/e$b;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->h:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x118

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x96

    :goto_1
    const-wide/16 v5, 0x0

    sget-object v7, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    .line 163
    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v8, 0x8

    :goto_2
    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    invoke-static {v0, v8, v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->h()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setItemEnabled(Z)V

    :cond_3
    return-void
.end method

.method public getProParameter()Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method public setItemEnabled(Z)V
    .locals 3

    .line 177
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->f:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->f()V

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setProgress(F)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const/4 v0, 0x2

    const-string v1, "alpha"

    if-eqz p1, :cond_2

    .line 191
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->c:Lcom/oplus/camera/ui/RotateLottieAnimationView;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    :goto_0
    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    new-instance v1, Lcom/oplus/camera/timelapsepro/ParameterItem$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/timelapsepro/ParameterItem$3;-><init>(Lcom/oplus/camera/timelapsepro/ParameterItem;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->g:Landroid/animation/AnimatorSet;

    .line 205
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
