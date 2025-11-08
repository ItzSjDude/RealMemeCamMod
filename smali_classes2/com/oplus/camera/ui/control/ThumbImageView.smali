.class public Lcom/oplus/camera/ui/control/ThumbImageView;
.super Lcom/oplus/camera/ui/w;
.source "ThumbImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/ThumbImageView$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private A:Z

.field private B:Landroid/view/animation/PathInterpolator;

.field private C:Landroid/view/animation/PathInterpolator;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/animation/ValueAnimator;

.field private y:Landroid/graphics/Paint;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 72
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->b:I

    .line 73
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->c:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 76
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    .line 77
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->f:I

    .line 78
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->g:I

    .line 79
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->h:I

    .line 80
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->i:I

    .line 81
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    .line 82
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->l:J

    .line 85
    iput-wide v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->m:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 86
    iput v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->n:F

    .line 88
    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->o:Z

    .line 89
    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    .line 92
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->u:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    .line 102
    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->z:I

    .line 103
    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->A:Z

    .line 104
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->B:Landroid/view/animation/PathInterpolator;

    .line 105
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {p2, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->C:Landroid/view/animation/PathInterpolator;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070bd4

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->b:I

    const v0, 0x7f070bd5

    .line 112
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->c:I

    const v0, 0x7f08064b

    .line 113
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->u:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f070bdb

    .line 114
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070811

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->z:I

    .line 117
    iget-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->c:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060095

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->n:F

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->n:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/ThumbImageView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    .line 302
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v1

    .line 304
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v2

    .line 306
    iget-boolean v3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->A:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 307
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    int-to-float v7, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v8, v0

    iget v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->z:I

    int-to-float v9, v0

    int-to-float v10, v0

    iget-object v11, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->A:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 310
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->b:I

    iget v3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x2

    .line 404
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->B:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/ThumbImageView$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/ThumbImageView$1;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/control/ThumbImageView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/control/ThumbImageView$a;-><init>(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/ThumbImageView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 364
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 365
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 368
    :cond_0
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_3

    .line 372
    iget p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->b:I

    iget v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->c:I

    if-eqz p3, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->A:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p2, v0, p0}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method public a()V
    .locals 7

    const-string v0, "ThumbImageView"

    const-string v1, "startNewThumbAnimation"

    .line 380
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 382
    iput v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v1

    .line 384
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v2

    .line 385
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 386
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    .line 388
    iget-object v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->c()V

    .line 392
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    .line 393
    new-instance v5, Landroid/graphics/Rect;

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    div-int/2addr v4, v0

    add-int/2addr v2, v4

    invoke-direct {v5, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 400
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 135
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 136
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 138
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    if-ne p1, v0, :cond_1

    return-void

    .line 142
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    .line 144
    iget p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    if-eqz p1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_6

    .line 149
    iget p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->f:I

    .line 150
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->l:J

    .line 152
    iget p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    iget p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 156
    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->o:Z

    .line 157
    iget-wide v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->l:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->m:J

    goto :goto_3

    .line 159
    :cond_6
    iget p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 162
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->invalidate()V

    return-void
.end method

.method public a(IZI)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->b:I

    .line 531
    iput-boolean p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->A:Z

    .line 533
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 534
    invoke-virtual {p0, p3, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(IZ)V

    .line 535
    iget-object p2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    iget-boolean p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    invoke-virtual {p0, p2, p1, p3, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZZ)V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmap, mAnimationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isdefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbDefaultBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbImageView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    .line 319
    iput-boolean p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 322
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    .line 323
    iput-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 329
    iget-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 331
    :cond_1
    iput-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_2

    .line 334
    iget-boolean p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    if-nez p3, :cond_2

    .line 335
    iget-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 339
    invoke-virtual {p0, p1, p4, p3}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 341
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    .line 342
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    invoke-static {p1, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    const-string p1, "capture"

    .line 344
    invoke-static {p1}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    if-ne p4, p2, :cond_3

    .line 346
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    if-ne p1, p2, :cond_5

    .line 348
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 349
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 350
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->x:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    .line 354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const p2, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 355
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a()V

    goto :goto_1

    .line 358
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    iput-object v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    iput-object v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public b(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v3, v1, :cond_1

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v4

    if-eq v2, v4, :cond_2

    :cond_1
    if-ne v2, v1, :cond_3

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result v2

    if-ne v3, v2, :cond_3

    :cond_2
    return-void

    .line 435
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 437
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    .line 442
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 443
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 444
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 447
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0xfa

    .line 448
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 449
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    if-nez p2, :cond_5

    .line 454
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 458
    :cond_5
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 459
    iget-object v3, v0, Lcom/oplus/camera/ui/control/ThumbImageView;->C:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 460
    iget-object v3, v0, Lcom/oplus/camera/ui/control/ThumbImageView;->B:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 462
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 463
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->clearAnimation()V

    .line 466
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/ThumbImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected getDegree()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 167
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    add-int/2addr v0, v1

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    add-int/2addr v1, v2

    .line 169
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 172
    iget-boolean v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->p:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_9

    .line 173
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v6, "ThumbImageView"

    if-nez v4, :cond_0

    const-string p0, "ondraw(), drawable is null 1 ,so return "

    .line 176
    invoke-static {v6, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 181
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    .line 182
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    if-eqz v8, :cond_8

    if-nez v9, :cond_1

    goto/16 :goto_3

    .line 189
    :cond_1
    iget v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    iget v7, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    if-eq v6, v7, :cond_5

    .line 190
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 192
    iget-wide v10, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->m:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    .line 193
    iget-wide v10, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->l:J

    sub-long/2addr v6, v10

    long-to-int v6, v6

    .line 194
    iget v7, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->f:I

    iget-boolean v10, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->o:Z

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    neg-int v6, v6

    :goto_0
    mul-int/lit16 v6, v6, 0x10e

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v7, v6

    if-ltz v7, :cond_3

    .line 196
    rem-int/lit16 v7, v7, 0x168

    goto :goto_1

    .line 197
    :cond_3
    rem-int/lit16 v7, v7, 0x168

    add-int/lit16 v7, v7, 0x168

    .line 198
    :goto_1
    iput v7, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 199
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_2

    .line 201
    :cond_4
    iget v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    iput v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 205
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 208
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v10, :cond_7

    if-lt v2, v8, :cond_6

    if-ge v3, v9, :cond_7

    :cond_6
    int-to-float v7, v2

    int-to-float v8, v8

    div-float v8, v7, v8

    int-to-float v10, v3

    int-to-float v9, v9

    div-float v9, v10, v9

    .line 209
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v5

    mul-float/2addr v10, v5

    .line 210
    invoke-virtual {p1, v8, v8, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_7
    int-to-float v7, v0

    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float v9, v7, v8

    int-to-float v10, v3

    mul-float/2addr v10, v5

    add-float/2addr v7, v10

    .line 213
    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 214
    iget v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v0

    int-to-float v5, v5

    sub-float v7, v5, v8

    sub-float/2addr v5, v10

    .line 215
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 216
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 219
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    :cond_8
    :goto_3
    const-string p0, "ondraw w and h is zero,so return "

    .line 185
    invoke-static {v6, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_9
    iget v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->j:I

    if-nez v4, :cond_13

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    .line 228
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 229
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 230
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    if-eqz v7, :cond_12

    if-nez v8, :cond_b

    goto/16 :goto_7

    .line 236
    :cond_b
    iget v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    iget v9, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    if-eq v6, v9, :cond_f

    .line 237
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 239
    iget-wide v11, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->m:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_e

    .line 240
    iget-wide v11, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->l:J

    sub-long/2addr v9, v11

    long-to-int v6, v9

    .line 241
    iget v9, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->f:I

    iget-boolean v10, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->o:Z

    if-eqz v10, :cond_c

    goto :goto_4

    :cond_c
    neg-int v6, v6

    :goto_4
    mul-int/lit16 v6, v6, 0x10e

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v9, v6

    if-ltz v9, :cond_d

    .line 243
    rem-int/lit16 v9, v9, 0x168

    goto :goto_5

    .line 244
    :cond_d
    rem-int/lit16 v9, v9, 0x168

    add-int/lit16 v9, v9, 0x168

    .line 245
    :goto_5
    iput v9, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_6

    .line 248
    :cond_e
    iget v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->e:I

    iput v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    .line 252
    :cond_f
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 255
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v9

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_11

    if-lt v2, v7, :cond_10

    if-ge v3, v8, :cond_11

    :cond_10
    int-to-float v9, v2

    int-to-float v7, v7

    div-float v7, v9, v7

    int-to-float v10, v3

    int-to-float v8, v8

    div-float v8, v10, v8

    .line 256
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v9, v5

    mul-float/2addr v10, v5

    .line 257
    invoke-virtual {p1, v7, v7, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_11
    int-to-float v7, v0

    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    int-to-float v9, v1

    int-to-float v10, v3

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    .line 260
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v0

    int-to-float v5, v5

    sub-float/2addr v5, v8

    neg-int v7, v1

    int-to-float v7, v7

    sub-float/2addr v7, v10

    .line 263
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 266
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_12
    :goto_7
    return-void

    :cond_13
    const/4 v6, 0x2

    if-ne v4, v6, :cond_15

    int-to-float v4, v0

    int-to-float v6, v2

    mul-float v7, v6, v5

    add-float/2addr v4, v7

    int-to-float v8, v1

    int-to-float v9, v3

    mul-float/2addr v5, v9

    add-float/2addr v8, v5

    .line 271
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    iget v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->d:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v0

    int-to-float v4, v4

    sub-float/2addr v4, v7

    neg-int v7, v1

    int-to-float v7, v7

    sub-float/2addr v7, v5

    .line 274
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    iget v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->n:F

    mul-float/2addr v6, v4

    float-to-int v5, v6

    iput v5, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->h:I

    mul-float/2addr v9, v4

    float-to-int v4, v9

    .line 278
    iput v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->i:I

    .line 279
    iget-object v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    iget v6, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->h:I

    sub-int v7, v5, v6

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 280
    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    iget v8, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->i:I

    sub-int v9, v7, v8

    iput v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    .line 281
    iput v5, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 282
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 284
    iget-object v4, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_14

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 285
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    :cond_14
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 290
    iget-object v1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Canvas;)V

    :cond_15
    :goto_8
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

.method public setPaddingPlus(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView;->k:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 471
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/w;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->invalidate()V

    :cond_0
    return-void
.end method
