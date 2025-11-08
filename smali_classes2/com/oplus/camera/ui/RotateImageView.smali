.class public Lcom/oplus/camera/ui/RotateImageView;
.super Lcom/oplus/camera/ui/w;
.source "RotateImageView.java"

# interfaces
.implements Lcom/oplus/camera/ui/a$a;
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:F

.field public i:F

.field protected j:Z

.field protected k:Z

.field protected l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    .line 58
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->b:I

    .line 59
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    .line 61
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->d:Z

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lcom/oplus/camera/ui/RotateImageView;->e:Z

    const-wide/16 p2, 0x0

    .line 64
    iput-wide p2, p0, Lcom/oplus/camera/ui/RotateImageView;->f:J

    .line 65
    iput-wide p2, p0, Lcom/oplus/camera/ui/RotateImageView;->g:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 67
    iput p2, p0, Lcom/oplus/camera/ui/RotateImageView;->h:F

    .line 68
    iput p2, p0, Lcom/oplus/camera/ui/RotateImageView;->i:F

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->j:Z

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->k:Z

    const/4 p2, -0x1

    .line 72
    iput p2, p0, Lcom/oplus/camera/ui/RotateImageView;->l:I

    .line 74
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->m:I

    .line 75
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->n:I

    .line 77
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->o:Z

    .line 78
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->p:I

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    return-void
.end method

.method public static b(II)F
    .locals 0

    sub-int/2addr p1, p0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, 0x168

    :goto_0
    const/16 p0, 0xb4

    if-le p1, p0, :cond_1

    add-int/lit16 p1, p1, -0x168

    :cond_1
    int-to-float p0, p1

    return p0
.end method

.method public static c(II)J
    .locals 2

    .line 331
    invoke-static {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->b(II)F

    move-result p0

    float-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x10e

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 308
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/b;->a(Landroid/widget/ImageView;II)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 311
    iget-object p2, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 312
    iget-object p2, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    iput-boolean p2, p0, Lcom/oplus/camera/ui/RotateImageView;->e:Z

    goto :goto_0

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/RotateImageView;->e:Z

    :goto_0
    if-ltz p1, :cond_1

    .line 125
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 126
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 128
    :goto_1
    iget p2, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    if-ne p1, p2, :cond_2

    return-void

    .line 132
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    .line 134
    iget-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->e:Z

    if-eqz p1, :cond_6

    .line 135
    iget p1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->b:I

    .line 136
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/RotateImageView;->f:J

    .line 138
    iget p1, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    iget p2, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    .line 145
    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/ui/RotateImageView;->d:Z

    .line 146
    iget-wide v0, p0, Lcom/oplus/camera/ui/RotateImageView;->f:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/RotateImageView;->g:J

    goto :goto_3

    .line 148
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    .line 151
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->o:Z

    .line 267
    iput p2, p0, Lcom/oplus/camera/ui/RotateImageView;->p:I

    .line 268
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->postInvalidate()V

    return-void
.end method

.method protected getDegree()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .line 224
    iget v0, p0, Lcom/oplus/camera/ui/RotateImageView;->l:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    add-int/2addr p1, v0

    .line 223
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/w;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 226
    iget-boolean v0, p0, Lcom/oplus/camera/ui/RotateImageView;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 227
    new-array v0, v3, [I

    const v4, 0x7f040583

    aput v4, v0, v2

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->mergeDrawableStates([I[I)[I

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/RotateImageView;->k:Z

    if-eqz v0, :cond_2

    .line 231
    new-array v0, v3, [I

    const v4, 0x7f040586

    aput v4, v0, v2

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->mergeDrawableStates([I[I)[I

    .line 234
    :cond_2
    iget p0, p0, Lcom/oplus/camera/ui/RotateImageView;->l:I

    if-eq v1, p0, :cond_6

    const/16 v0, 0x30

    if-eq p0, v0, :cond_5

    const/16 v0, 0x32

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    goto :goto_1

    .line 245
    :cond_3
    new-array p0, v3, [I

    const v0, 0x7f040655

    aput v0, p0, v2

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->mergeDrawableStates([I[I)[I

    goto :goto_1

    .line 241
    :cond_4
    new-array p0, v3, [I

    const v0, 0x7f040654

    aput v0, p0, v2

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->mergeDrawableStates([I[I)[I

    goto :goto_1

    .line 237
    :cond_5
    new-array p0, v3, [I

    const v0, 0x7f040653

    aput v0, p0, v2

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->mergeDrawableStates([I[I)[I

    :cond_6
    :goto_1
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/oplus/camera/ui/RotateImageView;->q:Landroid/animation/Animator;

    .line 303
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;)V

    .line 304
    invoke-super {p0}, Lcom/oplus/camera/ui/w;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 156
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 163
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 164
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_d

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 170
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/ui/RotateImageView;->o:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v1

    iget v4, p0, Lcom/oplus/camera/ui/RotateImageView;->p:I

    invoke-virtual {v1, p0, p1, v4}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Landroid/graphics/Canvas;I)V

    .line 174
    :cond_2
    iget v1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    iget v4, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    if-eq v1, v4, :cond_6

    .line 175
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 177
    iget-wide v6, p0, Lcom/oplus/camera/ui/RotateImageView;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 178
    iget-wide v6, p0, Lcom/oplus/camera/ui/RotateImageView;->f:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 179
    iget v4, p0, Lcom/oplus/camera/ui/RotateImageView;->b:I

    iget-boolean v5, p0, Lcom/oplus/camera/ui/RotateImageView;->d:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_4

    .line 180
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    .line 181
    :cond_4
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 182
    :goto_1
    iput v4, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    .line 183
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    goto :goto_2

    .line 185
    :cond_5
    iget v1, p0, Lcom/oplus/camera/ui/RotateImageView;->c:I

    iput v1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    .line 189
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v1

    .line 190
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v5

    .line 192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v6

    .line 193
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 194
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 199
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    if-lt v7, v2, :cond_7

    if-ge v5, v3, :cond_8

    :cond_7
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 200
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v8, v11

    mul-float/2addr v10, v11

    .line 201
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 204
    :cond_8
    iget v8, p0, Lcom/oplus/camera/ui/RotateImageView;->h:F

    const/4 v9, 0x0

    cmpl-float v10, v9, v8

    const/high16 v11, 0x3f800000    # 1.0f

    if-gtz v10, :cond_9

    cmpg-float v8, v11, v8

    if-gez v8, :cond_a

    .line 205
    :cond_9
    iput v11, p0, Lcom/oplus/camera/ui/RotateImageView;->h:F

    .line 208
    :cond_a
    iget v8, p0, Lcom/oplus/camera/ui/RotateImageView;->i:F

    cmpl-float v9, v9, v8

    if-gtz v9, :cond_b

    cmpg-float v8, v11, v8

    if-gez v8, :cond_c

    .line 209
    :cond_b
    iput v11, p0, Lcom/oplus/camera/ui/RotateImageView;->i:F

    .line 212
    :cond_c
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    iget v1, p0, Lcom/oplus/camera/ui/RotateImageView;->h:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 214
    iget v1, p0, Lcom/oplus/camera/ui/RotateImageView;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    .line 215
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    iget p0, p0, Lcom/oplus/camera/ui/RotateImageView;->i:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDrawableAlpha(F)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->i:F

    return-void
.end method

.method public setDrawableScale(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->h:F

    return-void
.end method

.method public setHighResolutionType(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/oplus/camera/ui/RotateImageView;->l:I

    .line 292
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->refreshDrawableState()V

    .line 293
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->j:Z

    .line 260
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->refreshDrawableState()V

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method public setLightBackground(Z)V
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/oplus/camera/ui/RotateImageView;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 285
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateImageView;->k:Z

    .line 286
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->refreshDrawableState()V

    .line 287
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method public setNormalBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080641

    .line 274
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08063f

    .line 276
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
