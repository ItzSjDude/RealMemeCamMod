.class public Lcom/coui/appcompat/preference/ListSelectedItemLayout;
.super Landroid/widget/LinearLayout;
.source "ListSelectedItemLayout.java"


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Landroid/view/animation/Interpolator;

.field private i:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->c:Z

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    .line 29
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->e:Z

    const/4 p1, 0x2

    .line 33
    iput p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->g:I

    .line 37
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e2e147b    # 0.17f

    const p3, 0x3f2b851f    # 0.67f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->h:Landroid/view/animation/Interpolator;

    .line 38
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->i:Landroid/view/animation/Interpolator;

    .line 54
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/ListSelectedItemLayout;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->g:I

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_list_color_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$color;->coui_list_selector_color_pressed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 107
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/4 v0, 0x2

    .line 108
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    .line 109
    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/preference/ListSelectedItemLayout$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout$1;-><init>(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout$2;-><init>(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    new-array v0, v0, [I

    aput p1, v0, v2

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    .line 144
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x16f

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout$3;-><init>(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout$4;-><init>(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/ListSelectedItemLayout;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/coui/appcompat/preference/ListSelectedItemLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->g:I

    if-ne v0, v1, :cond_1

    .line 78
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->c:Z

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b()V

    .line 70
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBackgroundAnimationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundAnimationEnabled(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->c:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a()V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method
