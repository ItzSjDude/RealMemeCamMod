.class public Lcom/oplus/camera/ui/preview/AiTextHintView;
.super Landroid/widget/LinearLayout;
.source "AiTextHintView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/oplus/camera/ui/menu/OplusTextView;

.field private i:Lcom/oplus/camera/ui/preview/AiTextHintView;

.field private j:Lcom/oplus/camera/ui/CameraUIListener;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->a:I

    .line 33
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->b:I

    .line 34
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->c:I

    .line 35
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    .line 36
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->e:I

    .line 37
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->f:I

    .line 38
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->g:I

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 41
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->i:Lcom/oplus/camera/ui/preview/AiTextHintView;

    .line 42
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->j:Lcom/oplus/camera/ui/CameraUIListener;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->k:Landroid/widget/ImageView;

    .line 44
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->l:Landroid/widget/ImageView;

    .line 45
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->m:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->m:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/oplus/camera/ui/widget/d;

    invoke-direct {p1}, Lcom/oplus/camera/ui/widget/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/util/Size;
    .locals 2

    .line 123
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->measure(II)V

    .line 124
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 125
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/AiTextHintView;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->j:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/AiTextHintView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->g:I

    return p0
.end method

.method private c()V
    .locals 7

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-direct {p0, p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    .line 135
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->e:I

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const/16 v6, 0xa

    if-eq v2, v5, :cond_3

    const/16 v5, 0x9

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 164
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->a:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 169
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->j:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->bN()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 158
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->f:I

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 149
    iget v1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->a:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v4

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->b:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 140
    iget v2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->f:I

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move v3, v5

    .line 177
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    neg-int v0, v3

    int-to-float v0, v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public a(FF)Landroid/view/animation/AnimationSet;
    .locals 2

    .line 182
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 183
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p1, 0xb4

    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 185
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->m:Landroid/content/Context;

    const p1, 0x7f0100cb

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/content/Context;I)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    const-string p0, "AiTextHintView"

    const-string v0, "hideAiHintUI, return"

    .line 110
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setVisibility(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    const-string v0, "AiTextHintView"

    const-string v1, "showAiHintUI"

    .line 90
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->e:I

    .line 93
    iput p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->a:I

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setVisibility(I)V

    .line 97
    iget p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->g:I

    if-nez p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->k:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->l:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->m:Landroid/content/Context;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->c()V

    return-void
.end method

.method public a(IIIIILcom/oplus/camera/ui/CameraUIListener;)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->a:I

    .line 65
    iput p2, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->b:I

    .line 66
    iput p3, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->c:I

    .line 67
    iput p4, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->d:I

    .line 68
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070971

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->f:I

    .line 69
    iput-object p6, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->j:Lcom/oplus/camera/ui/CameraUIListener;

    .line 70
    iput p5, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->g:I

    const p1, 0x7f090045

    .line 72
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    const p1, 0x7f090046

    .line 73
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/AiTextHintView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->i:Lcom/oplus/camera/ui/preview/AiTextHintView;

    const p1, 0x7f090044

    .line 74
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->k:Landroid/widget/ImageView;

    const p1, 0x7f090047

    .line 75
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->l:Landroid/widget/ImageView;

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 77
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->k:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView;->i:Lcom/oplus/camera/ui/preview/AiTextHintView;

    new-instance p2, Lcom/oplus/camera/ui/preview/AiTextHintView$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/AiTextHintView$1;-><init>(Lcom/oplus/camera/ui/preview/AiTextHintView;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/AiTextHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
