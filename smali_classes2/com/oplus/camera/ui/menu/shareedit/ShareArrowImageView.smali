.class public Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;
.super Lcom/oplus/camera/ui/inverse/InverseImageView;
.source "ShareArrowImageView.java"


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;

.field private c:J

.field private d:Landroid/view/animation/PathInterpolator;

.field private e:Landroid/view/animation/PathInterpolator;

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 57
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    .line 51
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->d:Landroid/view/animation/PathInterpolator;

    .line 52
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    .line 53
    iput v3, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->d:Landroid/view/animation/PathInterpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    .line 53
    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->d:Landroid/view/animation/PathInterpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    .line 53
    iput v2, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 11

    .line 92
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 93
    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    const-wide/16 v5, 0x1b1

    const/high16 v7, 0x3f800000    # 1.0f

    if-gez v4, :cond_0

    cmp-long v4, v5, v0

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x43d88000    # 433.0f

    div-float/2addr v0, v1

    .line 101
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v7, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a:I

    int-to-float v1, v1

    mul-float/2addr v7, v1

    float-to-int v1, v7

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    .line 102
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 103
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->invalidate()V

    goto/16 :goto_0

    :cond_0
    cmp-long v2, v5, v0

    const-wide/16 v3, 0x4e2

    if-gez v2, :cond_1

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    cmp-long v2, v3, v0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x42ea0000    # 117.0f

    const-wide/16 v8, 0x557

    const/4 v10, 0x0

    if-gez v2, :cond_3

    cmp-long v2, v8, v0

    if-lez v2, :cond_3

    sub-long/2addr v0, v3

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 108
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v7, v0

    invoke-virtual {v1, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 110
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    .line 111
    iput v10, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->invalidate()V

    goto/16 :goto_0

    :cond_3
    cmp-long v2, v8, v0

    const-wide/16 v3, 0x5ed

    if-gez v2, :cond_4

    cmp-long v2, v3, v0

    if-lez v2, :cond_4

    goto :goto_0

    :cond_4
    cmp-long v2, v3, v0

    const-wide/16 v8, 0x72a

    if-gez v2, :cond_5

    cmp-long v2, v8, v0

    if-lez v2, :cond_5

    sub-long/2addr v0, v3

    long-to-float v0, v0

    const v1, 0x439e8000    # 317.0f

    div-float/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v7, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a:I

    int-to-float v1, v1

    mul-float/2addr v7, v1

    float-to-int v1, v7

    iput v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    .line 120
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 121
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->invalidate()V

    goto :goto_0

    :cond_5
    cmp-long v2, v8, v0

    const-wide/16 v3, 0xaae

    if-gez v2, :cond_6

    cmp-long v2, v3, v0

    if-lez v2, :cond_6

    goto :goto_0

    :cond_6
    cmp-long v2, v3, v0

    const-wide/16 v8, 0xb23

    if-gez v2, :cond_8

    cmp-long v2, v8, v0

    if-lez v2, :cond_8

    sub-long/2addr v0, v3

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 126
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->e:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v7, v0

    invoke-virtual {v1, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 128
    iget v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    .line 129
    iput v10, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->invalidate()V

    goto :goto_0

    :cond_8
    cmp-long v0, v8, v0

    if-gez v0, :cond_9

    const/4 v0, 0x0

    .line 135
    iput v10, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 136
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->invalidate()V

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x21

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    new-instance p1, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView$1;-><init>(Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->a()V

    return-void
.end method

.method private b()Z
    .locals 4

    .line 159
    iget-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb23

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 165
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 172
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 173
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getPaddingLeft()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getPaddingTop()I

    move-result v4

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getPaddingRight()I

    move-result v5

    .line 182
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getPaddingBottom()I

    move-result v6

    .line 183
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 184
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 187
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v2

    .line 188
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    .line 189
    iget v2, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget p0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->getVisibility()I

    move-result v0

    .line 147
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setVisibility(I)V

    if-ne v0, p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->g:I

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->f:F

    .line 153
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->c:J

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/ShareArrowImageView;->b:Landroid/os/Handler;

    const/4 p1, 0x3

    const-wide/16 v0, 0x21

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
