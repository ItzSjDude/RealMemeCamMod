.class public Lcom/oplus/camera/ui/f;
.super Ljava/lang/Object;
.source "CompoundHintView.java"


# instance fields
.field private a:Landroid/view/animation/PathInterpolator;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:I

.field private g:Z

.field private final h:Lcom/oplus/camera/ui/menu/OplusTextView;

.field private final i:Lcom/oplus/camera/ui/menu/OplusTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/f;->a:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/f;->b:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/f;->c:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/ui/f;->d:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/oplus/camera/ui/f;->f:I

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/ui/f;->g:Z

    const v0, 0x7f0900ac

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    const v0, 0x7f0900a9

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/f;)Lcom/oplus/camera/ui/menu/OplusTextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/f;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/oplus/camera/ui/f;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/f;->f:I

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->measure(II)V

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_1

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->measure(II)V

    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 136
    iget v0, p0, Lcom/oplus/camera/ui/f;->c:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setBackgroundResource(I)V

    .line 139
    iget v0, p0, Lcom/oplus/camera/ui/f;->d:I

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextColor(I)V

    .line 143
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/f;->c:I

    .line 144
    iput p2, p0, Lcom/oplus/camera/ui/f;->d:I

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_4

    if-eq v1, p2, :cond_4

    if-eqz p2, :cond_4

    if-eq v1, p3, :cond_3

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {v0, p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 150
    :cond_3
    iget-object p3, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setBackgroundResource(I)V

    .line 153
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->a(IZ)V

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->invalidate()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->a(IZ)V

    .line 120
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Animation;Z)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 215
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/f;->e:Ljava/lang/CharSequence;

    .line 216
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->clearAnimation()V

    .line 218
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-wide/16 v0, 0x96

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 222
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->clearAnimation()V

    .line 223
    iget-object p2, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    .line 225
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 226
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    new-instance v0, Lcom/oplus/camera/ui/f$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/f$1;-><init>(Lcom/oplus/camera/ui/f;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_2

    .line 249
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompoundHintView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->b()Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/oplus/camera/ui/f;->e:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->clearAnimation()V

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/f;->e:Ljava/lang/CharSequence;

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public b(I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public b(III)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 265
    iget-object v1, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    .line 268
    iget v2, p0, Lcom/oplus/camera/ui/f;->f:I

    iget-object v3, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_1

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    .line 280
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->layout(IIII)V

    .line 282
    iget-object p3, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    .line 283
    iget-object p3, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 284
    iget-object p3, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p3, p1, p2, v0, p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->layout(IIII)V

    return-void
.end method

.method public c()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getVisibility()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public c(I)V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const v1, 0x7f06006f

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 159
    iget v0, p0, Lcom/oplus/camera/ui/f;->b:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 163
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 162
    invoke-virtual {v0, v2, v4, v4, v5}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, v4, v4, v4, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    .line 169
    :cond_2
    :goto_1
    iput p1, p0, Lcom/oplus/camera/ui/f;->b:I

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 174
    invoke-virtual {p0, v2, v4, v4, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p0, v4, v4, v4, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setShadowLayer(FFFI)V

    :cond_4
    :goto_2
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMaxWidth(I)V

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMaxWidth(I)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public e()Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->isShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Lcom/oplus/camera/ui/menu/OplusTextView;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    return-object p0
.end method

.method public g()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->clearAnimation()V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->clearAnimation()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->i:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getViewWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()I
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getViewHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/oplus/camera/ui/f;->h:Lcom/oplus/camera/ui/menu/OplusTextView;

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
