.class public Lcom/oplus/camera/ui/preview/LongExposureTimeView;
.super Landroid/widget/LinearLayout;
.source "LongExposureTimeView.java"


# static fields
.field private static a:Landroid/graphics/Typeface;


# instance fields
.field private final b:Landroid/view/animation/PathInterpolator;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/animation/ObjectAnimator;

.field private h:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 p3, 0x0

    const v0, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->b:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->e:Landroid/widget/TextView;

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->f:Landroid/widget/TextView;

    .line 39
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureTimeView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 135
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView$1;-><init>(Lcom/oplus/camera/ui/preview/LongExposureTimeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 158
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setAlpha(F)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(Z)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureTimeView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 173
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;-><init>(Lcom/oplus/camera/ui/preview/LongExposureTimeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    .line 193
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setVisibility(I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getFontTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 73
    sget-object v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->a:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "sys-sans-en"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 650"

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->a:Landroid/graphics/Typeface;

    const-string v0, "LongExposureTimeView"

    const-string v1, "getFontTypeface, create special typeface fail"

    .line 84
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    sget-object v0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->a:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f090226

    .line 55
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    const v0, 0x7f090227

    .line 56
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    const v0, 0x7f090225

    .line 57
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->e:Landroid/widget/TextView;

    const v0, 0x7f090223

    .line 58
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->f:Landroid/widget/TextView;

    const v0, 0x7f090222

    .line 60
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090224

    .line 61
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-static {}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->getFontTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureTimeView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 118
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->a(Z)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->b(Z)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 12

    const-wide/32 v0, 0x186a0

    .line 91
    div-long v2, p1, v0

    .line 92
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x2710

    div-long v4, p1, v0

    .line 93
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long v6, p1, v0

    .line 94
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v8, v2, v0

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-lez v8, :cond_0

    .line 97
    iget-object v11, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v11, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-gtz v8, :cond_2

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 104
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->d:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->e:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->f:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
