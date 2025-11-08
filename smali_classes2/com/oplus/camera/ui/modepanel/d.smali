.class public Lcom/oplus/camera/ui/modepanel/d;
.super Landroid/widget/RelativeLayout;
.source "FloatView.java"


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F


# instance fields
.field private final d:Landroid/view/animation/Interpolator;

.field private final e:Landroid/view/animation/Interpolator;

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Landroid/text/TextPaint;

.field private h:Landroid/text/TextPaint;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/animation/AnimatorSet;

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/modepanel/d;->a:F

    .line 73
    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/modepanel/d;->b:F

    .line 74
    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa28f5c    # 1.27f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/oplus/camera/ui/modepanel/d;->c:F

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/modepanel/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3e4ccccd    # 0.2f

    .line 76
    invoke-static {v0, p3, v1, p2}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3f2b851f    # 0.67f

    .line 77
    invoke-static {v0, p3, v1, p2}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->e:Landroid/view/animation/Interpolator;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3dcccccd    # 0.1f

    .line 78
    invoke-static {v0, p3, v1, p2}, Landroidx/core/h/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->f:Landroid/view/animation/Interpolator;

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    .line 80
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    const/4 p3, 0x0

    .line 81
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    .line 82
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->j:I

    .line 83
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->k:I

    .line 84
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->l:I

    .line 85
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    .line 86
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->n:I

    .line 87
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    .line 88
    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    .line 89
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    .line 90
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->r:I

    .line 91
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->s:I

    .line 92
    iput-boolean p3, p0, Lcom/oplus/camera/ui/modepanel/d;->t:Z

    .line 93
    iput p3, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    const/16 p2, 0x5a

    .line 94
    iput p2, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    const p2, 0x7f0c00d6

    .line 106
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/ui/modepanel/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090186

    .line 107
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    const p1, 0x7f090188

    .line 108
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    .line 110
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07079d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/d;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/text/TextPaint;)F
    .locals 3

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->l:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/d;->j:I

    .line 195
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 196
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 197
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 198
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 200
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p0, p1

    return p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 448
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 449
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/d;->s:I

    sub-int v0, p1, v0

    .line 450
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->s:I

    int-to-float p1, v0

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/modepanel/d;->a(FF)V

    return-void
.end method

.method private synthetic a(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 465
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sub-int/2addr p2, p4

    sub-int/2addr p3, p4

    .line 466
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 440
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 441
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/d;->r:I

    sub-int v0, p1, v0

    .line 442
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->r:I

    int-to-float p1, v0

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/modepanel/d;->a(FF)V

    return-void
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 403
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->setGradientAlpha(F)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 115
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->k:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/d;->k:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->setGradientAlpha(F)V

    return-void
.end method

.method private synthetic e()V
    .locals 7

    .line 395
    sget-object v0, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v5, Lcom/oplus/camera/ui/modepanel/d;->c:F

    const/4 v6, 0x1

    aput v5, v2, v6

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    sget-object v2, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v3, v5, v4

    sget v3, Lcom/oplus/camera/ui/modepanel/d;->c:F

    aput v3, v5, v6

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 400
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    new-array v3, v1, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 402
    new-instance v5, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$iNYon3EQJoADA4b47HfwaSkTx_E;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$iNYon3EQJoADA4b47HfwaSkTx_E;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 405
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    .line 407
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v4

    aput-object v2, v5, v6

    aput-object v3, v5, v1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 408
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v2

    .line 287
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 289
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic f()V
    .locals 8

    .line 372
    sget-object v0, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    sget v3, Lcom/oplus/camera/ui/modepanel/d;->a:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x3f933333    # 1.15f

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 374
    sget-object v2, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v6, v1, [F

    sget v7, Lcom/oplus/camera/ui/modepanel/d;->a:F

    aput v7, v6, v4

    aput v3, v6, v5

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 376
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 377
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 379
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic f(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v2

    .line 220
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$Kf8E8CG25W5CtT39bhXmxo1xC60(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$Mz_5tnuj8Geg4crOWA4lfVZXrwI(Lcom/oplus/camera/ui/modepanel/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/d;->e()V

    return-void
.end method

.method public static synthetic lambda$QYYfPHf2NKQ0Jf_i_Cuz6rTWWVc(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$RZo5pF01pvDdmgFjWb2gxsQ7T2M(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$VE8tu2SVc_4pOVveeZwOVeLHUOo(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->f(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$Z63t23L2aCR7p2BAOlmeuAx_eNY(Lcom/oplus/camera/ui/modepanel/d;Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/d;->a(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$fzODbe1bIMXJ558ukT1zXA7elzo(Lcom/oplus/camera/ui/modepanel/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/modepanel/d;->f()V

    return-void
.end method

.method public static synthetic lambda$iNYon3EQJoADA4b47HfwaSkTx_E(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$uM_cHLhT-Xp6YeTW1SM_LYar1RE(Lcom/oplus/camera/ui/modepanel/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private setGradientAlpha(F)V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/d;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 137
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 138
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)F
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 526
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 549
    new-array v0, v0, [I

    .line 550
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getLocationOnScreen([I)V

    .line 552
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v3, 0x4

    if-ne v3, v1, :cond_2

    :cond_0
    const/16 v1, 0x10e

    .line 553
    iget v3, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 554
    new-instance p1, Landroid/graphics/Rect;

    aget v1, v0, v4

    aget v3, v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    aget v4, v0, v4

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleX()F

    move-result p0

    mul-float/2addr v5, p0

    float-to-int p0, v5

    add-int/2addr v4, p0

    aget p0, v0, v2

    invoke-direct {p1, v1, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_1
    const/16 v1, 0x5a

    if-ne v1, v3, :cond_2

    .line 557
    new-instance p1, Landroid/graphics/Rect;

    aget v1, v0, v4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleX()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v1, v3

    aget v3, v0, v2

    aget v4, v0, v4

    aget v0, v0, v2

    .line 558
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleY()F

    move-result p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    add-int/2addr v0, p0

    invoke-direct {p1, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    return-object p1
.end method

.method protected a()V
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090390

    .line 208
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v1, 0x2

    .line 213
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/d;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    new-instance v3, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$VE8tu2SVc_4pOVveeZwOVeLHUOo;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$VE8tu2SVc_4pOVveeZwOVeLHUOo;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xc8

    .line 224
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 226
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/modepanel/d;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f090394

    .line 229
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    const v2, 0x3fa28f5c    # 1.27f

    goto :goto_0

    .line 232
    :cond_2
    sget v2, Lcom/oplus/camera/ui/modepanel/d;->c:F

    .line 235
    :goto_0
    sget-object v6, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleX()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    aput v2, v7, v5

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 236
    sget-object v7, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleY()F

    move-result v10

    aput v10, v8, v9

    aput v2, v8, v5

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 237
    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 238
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 239
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v2, v6

    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    .line 240
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v7, Lcom/oplus/camera/ui/modepanel/d;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v1, [F

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTranslationY()F

    move-result v10

    aput v10, v8, v9

    aput v2, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 241
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 244
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 246
    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 245
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 248
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 249
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 250
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 251
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 253
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 254
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f090392

    .line 257
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 260
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getX()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setX(F)V

    :cond_0
    cmpl-float p1, v0, p2

    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/modepanel/d;->setY(F)V

    :cond_1
    return-void
.end method

.method protected a(I)V
    .locals 9

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f090394

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/modepanel/d;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/oplus/camera/ui/modepanel/d;->t:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v3, p1, :cond_0

    .line 365
    sget-object p1, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v0

    sget v7, Lcom/oplus/camera/ui/modepanel/d;->a:F

    aput v7, v5, v3

    invoke-static {p0, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 366
    sget-object v5, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v6, v7, v0

    sget v6, Lcom/oplus/camera/ui/modepanel/d;->a:F

    aput v6, v7, v3

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 367
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 368
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v0

    aput-object v5, v4, v3

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 369
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 371
    new-instance p1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$fzODbe1bIMXJ558ukT1zXA7elzo;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$fzODbe1bIMXJ558ukT1zXA7elzo;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/modepanel/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-ne v4, p1, :cond_1

    .line 382
    sget-object p1, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p0, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 383
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    sget-object v5, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 385
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    new-array v6, v4, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 387
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/d;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    new-instance v7, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$QYYfPHf2NKQ0Jf_i_Cuz6rTWWVc;

    invoke-direct {v7, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$QYYfPHf2NKQ0Jf_i_Cuz6rTWWVc;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    .line 392
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object p1, v8, v0

    aput-object v5, v8, v3

    aput-object v6, v8, v4

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 393
    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 394
    new-instance p1, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Mz_5tnuj8Geg4crOWA4lfVZXrwI;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Mz_5tnuj8Geg4crOWA4lfVZXrwI;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/ui/modepanel/d;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method public a(II)V
    .locals 0

    .line 533
    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    .line 534
    iput p2, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07079d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    .line 543
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cc5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    .line 538
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cca

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    :goto_0
    return-void
.end method

.method protected a(Landroid/graphics/Rect;I)V
    .locals 13

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 419
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/d;->r:I

    .line 420
    iput v0, p0, Lcom/oplus/camera/ui/modepanel/d;->s:I

    .line 421
    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    iget v2, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 423
    iget v2, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v4, v2, :cond_1

    if-ne v3, v2, :cond_2

    .line 424
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 432
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v1, p1

    .line 434
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v2, v5

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x2

    .line 437
    new-array v5, v1, [I

    aput v0, v5, v0

    aput v2, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 438
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 439
    new-instance v5, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Kf8E8CG25W5CtT39bhXmxo1xC60;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Kf8E8CG25W5CtT39bhXmxo1xC60;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 445
    new-array v5, v1, [I

    aput v0, v5, v0

    aput p1, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 446
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    new-instance v5, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$uM_cHLhT-Xp6YeTW1SM_LYar1RE;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$uM_cHLhT-Xp6YeTW1SM_LYar1RE;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x7f090394

    const-wide/16 v7, 0xc8

    if-ne v1, p2, :cond_5

    .line 456
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne v4, p2, :cond_6

    .line 458
    sget v5, Lcom/oplus/camera/ui/modepanel/d;->b:F

    .line 459
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 460
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 461
    iget v9, v6, Landroid/graphics/Rect;->right:I

    .line 462
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 463
    new-array v11, v1, [I

    aput v0, v11, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v12, 0x3d75c28f    # 0.06f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    aput v6, v11, v4

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 464
    new-instance v11, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Z63t23L2aCR7p2BAOlmeuAx_eNY;

    invoke-direct {v11, p0, p2, v9, v10}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$Z63t23L2aCR7p2BAOlmeuAx_eNY;-><init>(Lcom/oplus/camera/ui/modepanel/d;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 469
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 472
    :cond_5
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne v1, p2, :cond_6

    .line 474
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v6, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v9, v1, [F

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScaleX()F

    move-result v10

    aput v10, v9, v0

    sget v10, Lcom/oplus/camera/ui/modepanel/d;->a:F

    aput v10, v9, v4

    invoke-static {p2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 475
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v9, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v10, v1, [F

    iget-object v11, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getScaleY()F

    move-result v11

    aput v11, v10, v0

    sget v11, Lcom/oplus/camera/ui/modepanel/d;->a:F

    aput v11, v10, v4

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 476
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 477
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 481
    :cond_6
    :goto_0
    sget-object p2, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleX()F

    move-result v9

    aput v9, v6, v0

    aput v5, v6, v4

    invoke-static {p0, p2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 482
    sget-object v6, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v9, v1, [F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getScaleY()F

    move-result v10

    aput v10, v9, v0

    aput v5, v9, v4

    invoke-static {p0, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 483
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    const/4 p1, 0x3

    aput-object v5, v3, p1

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 486
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected a(Lcom/oplus/camera/ui/modepanel/k;I)V
    .locals 8

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initChildren, id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    iget v2, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    int-to-float v2, v2

    invoke-static {}, Lcom/oplus/camera/k;->o()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/modepanel/d;->n:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, p2, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-direct {p0, p2, v1}, Lcom/oplus/camera/ui/modepanel/d;->a(Ljava/lang/String;Landroid/text/TextPaint;)F

    move-result p2

    .line 159
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    const v5, 0x7f090393

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f090392

    .line 165
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 166
    iget v2, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    invoke-static {}, Lcom/oplus/camera/k;->o()I

    move-result v6

    add-int/2addr v2, v6

    iget v6, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int p2, v2

    add-int/2addr p2, v5

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 168
    :cond_0
    iget v6, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    invoke-static {}, Lcom/oplus/camera/k;->o()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, p2

    .line 169
    invoke-static {}, Lcom/oplus/camera/k;->a()I

    move-result p2

    int-to-float p2, p2

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v2

    sub-float/2addr p2, v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v6, p2

    float-to-int p2, v6

    add-int/2addr p2, v5

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    const/16 p2, 0xe

    .line 172
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->g:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result p2

    mul-int/2addr p2, v3

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 176
    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    if-ne v3, p2, :cond_2

    .line 179
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 181
    iget-object p2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-static {}, Lcom/oplus/camera/k;->g()I

    move-result v0

    mul-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xd

    .line 183
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    const p2, 0x3dcccccd    # 0.1f

    .line 187
    invoke-static {p2, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected b()V
    .locals 13

    .line 269
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090391

    .line 273
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 277
    iput-boolean v2, p0, Lcom/oplus/camera/ui/modepanel/d;->t:Z

    .line 278
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v3, 0x2

    .line 280
    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 281
    iget-object v7, p0, Lcom/oplus/camera/ui/modepanel/d;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    new-instance v7, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$RZo5pF01pvDdmgFjWb2gxsQ7T2M;

    invoke-direct {v7, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$d$RZo5pF01pvDdmgFjWb2gxsQ7T2M;-><init>(Lcom/oplus/camera/ui/modepanel/d;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v7, 0xc8

    .line 291
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 293
    invoke-virtual {p0, v0, v6}, Lcom/oplus/camera/ui/modepanel/d;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f090394

    .line 296
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v9, 0x7f090392

    if-ne v2, v6, :cond_2

    goto/16 :goto_1

    .line 299
    :cond_2
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    const v6, 0x7f090393

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 300
    invoke-virtual {p0, v9}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v10

    if-le v5, v10, :cond_3

    .line 301
    iget v5, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    invoke-static {}, Lcom/oplus/camera/k;->o()I

    move-result v10

    add-int/2addr v5, v10

    iget v10, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    .line 302
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v10

    goto :goto_0

    .line 304
    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 305
    iget v10, p0, Lcom/oplus/camera/ui/modepanel/d;->m:I

    invoke-static {}, Lcom/oplus/camera/k;->o()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oplus/camera/ui/modepanel/d;->i:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    .line 306
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/oplus/camera/ui/modepanel/d;->h:Landroid/text/TextPaint;

    invoke-direct {p0, v11, v12}, Lcom/oplus/camera/ui/modepanel/d;->a(Ljava/lang/String;Landroid/text/TextPaint;)F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    .line 307
    iget-object v11, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v5

    sub-float/2addr v11, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v11, v5

    sub-float/2addr v10, v11

    move v5, v10

    .line 310
    :goto_0
    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 312
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 316
    :goto_1
    iget-object v6, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v10, Lcom/oplus/camera/ui/modepanel/d;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v3, [F

    iget-object v12, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTranslationY()F

    move-result v12

    aput v12, v11, v4

    aput v5, v11, v2

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 317
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_5

    goto :goto_2

    .line 324
    :cond_5
    invoke-static {}, Lcom/oplus/camera/k;->f()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/oplus/camera/k;->m()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 327
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v5, Lcom/oplus/camera/ui/modepanel/d;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScaleX()F

    move-result v10

    aput v10, v6, v4

    aput v1, v6, v2

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 328
    iget-object v5, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    sget-object v6, Lcom/oplus/camera/ui/modepanel/d;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget-object v10, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScaleY()F

    move-result v10

    aput v10, v3, v4

    aput v1, v3, v2

    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 330
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 331
    invoke-virtual {p0, v9}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 334
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 335
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x4

    .line 337
    iget v4, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    if-ne v3, v4, :cond_6

    .line 338
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 339
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 340
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    .line 342
    :cond_6
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 343
    invoke-static {}, Lcom/oplus/camera/k;->e()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 344
    invoke-static {}, Lcom/oplus/camera/k;->d()I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 347
    :goto_3
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected c()Z
    .locals 2

    const v0, 0x7f090390

    .line 500
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f090391

    .line 501
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/modepanel/d;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 503
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    .line 507
    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected getFloatLocation()Landroid/graphics/Rect;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    iget p0, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 357
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/modepanel/d;->u:I

    iget v1, p0, Lcom/oplus/camera/ui/modepanel/d;->v:I

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/ui/modepanel/c;->c(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected getModeId()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oplus/camera/ui/modepanel/d;->n:I

    return p0
.end method

.method protected getTextTranslationY()F
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/d;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationY()F

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
