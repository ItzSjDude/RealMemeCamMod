.class public Lcom/oplus/camera/t/b;
.super Landroid/view/View;
.source "ScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/t/b$c;,
        Lcom/oplus/camera/t/b$b;,
        Lcom/oplus/camera/t/b$a;
    }
.end annotation


# static fields
.field private static a:I = 0xff

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/graphics/Paint;

.field private C:Lcom/oplus/camera/t/b$c;

.field private D:Landroid/view/VelocityTracker;

.field private E:Lcom/oplus/camera/t/b$b;

.field private F:Landroid/os/Handler;

.field private G:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    sget v0, Lcom/oplus/camera/t/b;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/oplus/camera/t/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    .line 55
    iput v0, p0, Lcom/oplus/camera/t/b;->g:I

    .line 56
    iput v0, p0, Lcom/oplus/camera/t/b;->h:I

    const/16 v0, 0x1e

    .line 60
    iput v0, p0, Lcom/oplus/camera/t/b;->l:I

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/oplus/camera/t/b;->r:I

    const/16 v1, 0xa

    .line 68
    iput v1, p0, Lcom/oplus/camera/t/b;->t:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/oplus/camera/t/b;->v:F

    .line 76
    iput-boolean v0, p0, Lcom/oplus/camera/t/b;->z:Z

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/oplus/camera/t/b;->G:I

    .line 97
    iput-object p3, p0, Lcom/oplus/camera/t/b;->F:Landroid/os/Handler;

    .line 98
    iput p2, p0, Lcom/oplus/camera/t/b;->i:I

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/t/b;->A:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/oplus/camera/t/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    return-object p0
.end method

.method private a(F)V
    .locals 4

    .line 315
    iget-boolean v0, p0, Lcom/oplus/camera/t/b;->z:Z

    if-nez v0, :cond_0

    const-string p0, "ScaleBar"

    const-string p1, "onMove return, is not valid"

    .line 316
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_0
    iget v0, p0, Lcom/oplus/camera/t/b;->f:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    .line 323
    iget p1, p0, Lcom/oplus/camera/t/b;->f:I

    iget v0, p0, Lcom/oplus/camera/t/b;->k:I

    if-lt p1, v0, :cond_1

    .line 324
    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    goto :goto_0

    .line 325
    :cond_1
    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    iget v2, p0, Lcom/oplus/camera/t/b;->i:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v1

    add-int/2addr p1, v3

    if-gt p1, v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 326
    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    .line 329
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    invoke-interface {p1}, Lcom/oplus/camera/t/b$c;->a()V

    .line 331
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->a()V

    .line 332
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/t/b;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/b;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/t/b;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/camera/t/b;->F:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 104
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/oplus/camera/t/b;->z:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/oplus/camera/t/b;->z:Z

    .line 112
    iget-object v2, p0, Lcom/oplus/camera/t/b;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709ae

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/t/b;->p:I

    const v4, 0x7f0709b9

    .line 114
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/t/b;->q:I

    const v4, 0x7f0709ac

    .line 115
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oplus/camera/t/b;->o:I

    const v4, 0x7f0709b6

    .line 116
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/t/b;->l:I

    const v4, 0x7f0709b0

    .line 117
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/t/b;->m:I

    const v4, 0x7f070b21

    .line 118
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/camera/t/b;->n:I

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/t/b;->p:I

    .line 120
    iget-object v3, p0, Lcom/oplus/camera/t/b;->A:Landroid/content/Context;

    const v4, 0x7f06004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/t/b;->c:I

    const v3, 0x7f0604e0

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/oplus/camera/t/b;->d:I

    .line 122
    iget-object v2, p0, Lcom/oplus/camera/t/b;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/oplus/camera/t/b;->e:I

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    .line 125
    iget-object v2, p0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v2, p0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/t/b;->c:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v2, p0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v2, p0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oplus/camera/t/b;->q:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v2, p0, Lcom/oplus/camera/t/b;->A:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/t/b;->u:I

    .line 131
    iget v2, p0, Lcom/oplus/camera/t/b;->i:I

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lcom/oplus/camera/t/b;->s:I

    .line 133
    iget v0, p0, Lcom/oplus/camera/t/b;->s:I

    if-gez v0, :cond_2

    .line 134
    iput v1, p0, Lcom/oplus/camera/t/b;->s:I

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/t/b;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oplus/camera/t/b;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 296
    iget v0, p0, Lcom/oplus/camera/t/b;->f:I

    iget v1, p0, Lcom/oplus/camera/t/b;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 299
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/t/b;->l:I

    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_1

    if-lez v0, :cond_0

    .line 301
    iget v1, p0, Lcom/oplus/camera/t/b;->f:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/t/b;->f:I

    goto :goto_0

    .line 303
    :cond_0
    iget v1, p0, Lcom/oplus/camera/t/b;->f:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/t/b;->f:I

    goto :goto_0

    .line 306
    :cond_1
    iget v1, p0, Lcom/oplus/camera/t/b;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/t/b;->f:I

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->a()V

    .line 310
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->postInvalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 336
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    if-eqz v0, :cond_1

    .line 337
    iget v0, p0, Lcom/oplus/camera/t/b;->k:I

    iget v1, p0, Lcom/oplus/camera/t/b;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/t/b;->i:I

    rem-int/2addr v0, v1

    .line 339
    iget-object v1, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    if-eqz v1, :cond_0

    .line 340
    iget v2, p0, Lcom/oplus/camera/t/b;->h:I

    if-eq v0, v2, :cond_0

    .line 341
    invoke-interface {v1, v0}, Lcom/oplus/camera/t/b$c;->a(I)V

    .line 345
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/b;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 393
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget v0, p0, Lcom/oplus/camera/t/b;->k:I

    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    .line 398
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 350
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    if-eqz v0, :cond_1

    .line 351
    iget v0, p0, Lcom/oplus/camera/t/b;->k:I

    iget v1, p0, Lcom/oplus/camera/t/b;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/t/b;->i:I

    rem-int/2addr v0, v1

    .line 353
    iget-object v1, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v1, v0}, Lcom/oplus/camera/t/b$c;->a(I)V

    .line 357
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/b;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 402
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iput p1, p0, Lcom/oplus/camera/t/b;->h:I

    .line 408
    iget-boolean v0, p0, Lcom/oplus/camera/t/b;->y:Z

    if-nez v0, :cond_1

    return-void

    .line 412
    :cond_1
    iget v0, p0, Lcom/oplus/camera/t/b;->k:I

    iget v1, p0, Lcom/oplus/camera/t/b;->l:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/t/b;->f:I

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lcom/oplus/camera/t/b;->x:Z

    .line 414
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/oplus/camera/t/b;->h:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 168
    iget-boolean v1, v0, Lcom/oplus/camera/t/b;->z:Z

    if-nez v1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/t/b;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v2, v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/t/b;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/t/b;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    .line 176
    :goto_0
    iget-object v1, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v4, Lcom/oplus/camera/t/b;->c:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget v1, v0, Lcom/oplus/camera/t/b;->o:I

    iget v4, v0, Lcom/oplus/camera/t/b;->m:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    .line 179
    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v1, v4

    .line 183
    iget v4, v0, Lcom/oplus/camera/t/b;->r:I

    const/4 v6, 0x0

    if-ne v4, v3, :cond_2

    .line 184
    iget v4, v0, Lcom/oplus/camera/t/b;->s:I

    iget v7, v0, Lcom/oplus/camera/t/b;->t:I

    rem-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    move v14, v6

    .line 187
    :goto_2
    iget v7, v0, Lcom/oplus/camera/t/b;->i:I

    if-ge v14, v7, :cond_5

    .line 188
    iget v7, v0, Lcom/oplus/camera/t/b;->h:I

    sub-int/2addr v7, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 189
    iget v8, v0, Lcom/oplus/camera/t/b;->l:I

    mul-int/2addr v7, v8

    .line 190
    iget v8, v0, Lcom/oplus/camera/t/b;->j:I

    div-int/2addr v8, v3

    sub-int/2addr v8, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/oplus/camera/t/b;->j:I

    div-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 192
    iget v8, v0, Lcom/oplus/camera/t/b;->t:I

    rem-int v8, v14, v8

    if-eq v8, v4, :cond_4

    iget v8, v0, Lcom/oplus/camera/t/b;->G:I

    if-ne v14, v8, :cond_3

    goto :goto_3

    .line 196
    :cond_3
    iget-object v8, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oplus/camera/t/b;->q:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object v8, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v9, Lcom/oplus/camera/t/b;->b:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 193
    :cond_4
    :goto_3
    iget-object v8, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    iget v9, v0, Lcom/oplus/camera/t/b;->q:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    iget-object v8, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v9, Lcom/oplus/camera/t/b;->a:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    :goto_4
    iget v7, v0, Lcom/oplus/camera/t/b;->f:I

    iget v8, v0, Lcom/oplus/camera/t/b;->l:I

    mul-int v9, v8, v14

    add-int/2addr v9, v7

    int-to-float v9, v9

    int-to-float v10, v5

    mul-int/2addr v8, v14

    add-int/2addr v7, v8

    int-to-float v11, v7

    int-to-float v12, v1

    iget-object v15, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 203
    :cond_5
    iget v1, v0, Lcom/oplus/camera/t/b;->o:I

    iget v2, v0, Lcom/oplus/camera/t/b;->m:I

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    .line 204
    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 206
    iget-boolean v2, v0, Lcom/oplus/camera/t/b;->w:Z

    if-eqz v2, :cond_6

    .line 207
    iget-object v2, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/t/b;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 209
    :cond_6
    iget-object v2, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/t/b;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    :goto_5
    iget-object v2, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    sget v3, Lcom/oplus/camera/t/b;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    iget-object v2, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    iget v3, v0, Lcom/oplus/camera/t/b;->p:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    iget v2, v0, Lcom/oplus/camera/t/b;->k:I

    int-to-float v8, v2

    int-to-float v9, v4

    int-to-float v10, v2

    int-to-float v11, v1

    iget-object v12, v0, Lcom/oplus/camera/t/b;->B:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 371
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 373
    iget p1, p0, Lcom/oplus/camera/t/b;->j:I

    if-lez p1, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/b;->j:I

    .line 378
    iget p1, p0, Lcom/oplus/camera/t/b;->j:I

    div-int/lit8 p1, p1, 0x2

    .line 379
    iget p2, p0, Lcom/oplus/camera/t/b;->p:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/t/b;->k:I

    .line 380
    iget v0, p0, Lcom/oplus/camera/t/b;->l:I

    rem-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/t/b;->g:I

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcom/oplus/camera/t/b;->y:Z

    .line 383
    iget-boolean p1, p0, Lcom/oplus/camera/t/b;->x:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 384
    iput p1, p0, Lcom/oplus/camera/t/b;->f:I

    .line 387
    :cond_1
    iget p1, p0, Lcom/oplus/camera/t/b;->h:I

    if-ltz p1, :cond_2

    .line 388
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/b;->b(I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 281
    iput-object v1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/t/b;->d()V

    goto/16 :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oplus/camera/t/b;->v:F

    sub-float/2addr v0, v1

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/t/b;->v:F

    .line 239
    iget-object v1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 240
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_4

    neg-float p1, v0

    .line 244
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/b;->a(F)V

    goto :goto_0

    .line 246
    :cond_4
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/b;->a(F)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6

    .line 255
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/oplus/camera/t/b;->u:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 261
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8

    .line 262
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->getLayoutDirection()I

    move-result p1

    if-ne v2, p1, :cond_7

    neg-float v0, v0

    .line 266
    :cond_7
    new-instance p1, Lcom/oplus/camera/t/b$b;

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/t/b$b;-><init>(Lcom/oplus/camera/t/b;F)V

    iput-object p1, p0, Lcom/oplus/camera/t/b;->E:Lcom/oplus/camera/t/b$b;

    .line 267
    iget-object p1, p0, Lcom/oplus/camera/t/b;->F:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/t/b;->E:Lcom/oplus/camera/t/b$b;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 269
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/t/b;->d()V

    .line 271
    iget-object p0, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    if-eqz p0, :cond_a

    .line 272
    invoke-interface {p0}, Lcom/oplus/camera/t/b$c;->b()V

    goto :goto_0

    .line 225
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/b;->v:F

    .line 226
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/t/b;->D:Landroid/view/VelocityTracker;

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/t/b;->E:Lcom/oplus/camera/t/b$b;

    if-eqz p1, :cond_a

    .line 229
    invoke-virtual {p1}, Lcom/oplus/camera/t/b$b;->a()V

    .line 230
    iput-object v1, p0, Lcom/oplus/camera/t/b;->E:Lcom/oplus/camera/t/b$b;

    :cond_a
    :goto_0
    return v2
.end method

.method public setAlign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 427
    :cond_0
    iput p1, p0, Lcom/oplus/camera/t/b;->r:I

    :cond_1
    return-void
.end method

.method public setAuto(Z)V
    .locals 0

    .line 418
    iput-boolean p1, p0, Lcom/oplus/camera/t/b;->w:Z

    .line 419
    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->invalidate()V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 139
    iget v0, p0, Lcom/oplus/camera/t/b;->i:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iput p1, p0, Lcom/oplus/camera/t/b;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setForceBigScaleAlphaPosition(I)V
    .locals 0

    .line 507
    iput p1, p0, Lcom/oplus/camera/t/b;->G:I

    return-void
.end method

.method public setLevelNum(I)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelNum, levelNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaleBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput p1, p0, Lcom/oplus/camera/t/b;->i:I

    .line 151
    iget-boolean p1, p0, Lcom/oplus/camera/t/b;->z:Z

    if-eqz p1, :cond_1

    .line 152
    iget p1, p0, Lcom/oplus/camera/t/b;->i:I

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/oplus/camera/t/b;->s:I

    goto :goto_1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/t/b;->c()V

    :goto_1
    return-void
.end method

.method public setScaleBarValueChangeListener(Lcom/oplus/camera/t/b$c;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/t/b;->C:Lcom/oplus/camera/t/b$c;

    return-void
.end method
