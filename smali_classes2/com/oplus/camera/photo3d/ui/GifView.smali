.class public final Lcom/oplus/camera/photo3d/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/Movie;

.field private l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/photo3d/ui/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/photo3d/ui/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    .line 25
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->l:Landroid/graphics/Path;

    return-void
.end method

.method private a(II)F
    .locals 0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    int-to-float p0, p2

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private final a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    iget v1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->l:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 147
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->h:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    iget v1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->f:F

    iget p0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->g:F

    invoke-virtual {v0, p1, v1, p0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final e()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 6

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 134
    iget-wide v2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    move-wide v2, v0

    :cond_0
    iput-wide v2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->a:J

    .line 135
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 137
    :goto_0
    iget-wide v3, p0, Lcom/oplus/camera/photo3d/ui/GifView;->a:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    long-to-int v0, v0

    .line 138
    :goto_1
    iput v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->e:I

    .line 139
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->e:I

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final c()V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->e:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->a:J

    .line 67
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    .line 74
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->i:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/GifView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->f()V

    .line 121
    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/GifView;->a(Landroid/graphics/Canvas;)V

    .line 122
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->e()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 105
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->c:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->f:F

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/oplus/camera/photo3d/ui/GifView;->d:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->g:F

    .line 107
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oplus/camera/photo3d/ui/GifView;->a(II)F

    move-result p2

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/photo3d/ui/GifView;->a(II)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->h:F

    .line 88
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->h:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->c:I

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->h:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->d:I

    .line 90
    iget p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->c:I

    iget p2, p0, Lcom/oplus/camera/photo3d/ui/GifView;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/GifView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    .line 156
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->e()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    .line 163
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->e()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->j:Z

    .line 170
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->e()V

    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    .line 42
    iput p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->b:I

    .line 43
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/photo3d/ui/GifView;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GifView;->k:Landroid/graphics/Movie;

    .line 44
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->requestLayout()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->c()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GifView;->d()V

    :goto_0
    return-void
.end method
