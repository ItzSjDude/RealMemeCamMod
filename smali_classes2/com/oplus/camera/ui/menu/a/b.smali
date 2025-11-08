.class public Lcom/oplus/camera/ui/menu/a/b;
.super Landroid/view/View;
.source "HeadlineBackground.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;

.field private i:F

.field private j:I

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/animation/PathInterpolator;

.field private s:Landroid/animation/ValueAnimator;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->c:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->d:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->e:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/b;->f:F

    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    .line 32
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    iput v3, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->j:I

    .line 35
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/b;->l:Z

    .line 37
    iput v1, p0, Lcom/oplus/camera/ui/menu/a/b;->m:F

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->n:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->o:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->p:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->q:I

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v1, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->r:Landroid/view/animation/PathInterpolator;

    .line 44
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    .line 49
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/a/b;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    return p1
.end method

.method private a()V
    .locals 5

    .line 228
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->n:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->e:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->f:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/b;->e:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/b;->f:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/b;->m:F

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/b;->o:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/b;->p:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 242
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/b;->m:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/b;->o:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->p:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    .line 231
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ca3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    .line 233
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    add-float/2addr v2, p0

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->c:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->d:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->e:I

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->f:F

    const v0, 0x7f06004d

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->j:I

    .line 74
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->o:I

    .line 75
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->p:I

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialize, mBackgroundRadius: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->c:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HeadlineBackground"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(ILandroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_0

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineBackground"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    .line 129
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 130
    iget p2, p0, Lcom/oplus/camera/ui/menu/a/b;->q:I

    if-ne p1, p2, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    .line 135
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 137
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/b;->q:I

    .line 140
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateView, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineBackground"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    .line 100
    iget p2, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    if-eq p1, p2, :cond_1

    if-nez p2, :cond_0

    .line 102
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    .line 103
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->invalidate()V

    goto :goto_0

    .line 105
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->q:I

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/a/b;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/ui/menu/a/b$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/a/b$1;-><init>(Lcom/oplus/camera/ui/menu/a/b;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/b;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 2

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/a/b;->b(ILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HeadlineBackground"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/b;->t:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlpha()F
    .locals 0

    .line 186
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    return p0
.end method

.method public getBGHeight()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    return p0
.end method

.method public getBGWidth()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 206
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    const-string v1, "HeadlineBackground"

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 220
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/a/b;->a()V

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/b;->c:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 211
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw, mBackgroundWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mBackgroundHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/menu/a/b;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPaint: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", getWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha, alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineBackground"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 194
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->postInvalidate()V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 2

    .line 249
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/a/b;->l:Z

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/b;->g:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/b;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    const v1, 0x7f06002f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/b;->k:Landroid/content/Context;

    const v1, 0x7f06004d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/b;->invalidate()V

    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->m:F

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/b;->n:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineBackground"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/b;->i:F

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
