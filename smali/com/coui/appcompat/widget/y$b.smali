.class Lcom/coui/appcompat/widget/y$b;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/y$b$a;,
        Lcom/coui/appcompat/widget/y$b$b;
    }
.end annotation


# static fields
.field private static a:F = 1.0f


# instance fields
.field private b:Lcom/coui/appcompat/widget/y$b$b;

.field private c:Lcom/coui/appcompat/widget/y$b$b;

.field private d:Lcom/coui/appcompat/widget/y$b$b;

.field private e:Lcom/coui/appcompat/widget/y$b$a;

.field private f:Lcom/coui/appcompat/widget/y$b$a;

.field private g:Lcom/coui/appcompat/widget/y$b$a;

.field private h:F

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:F

.field private v:J

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Lcom/coui/appcompat/widget/y$b$a;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/y$b$a;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    .line 298
    new-instance v0, Lcom/coui/appcompat/widget/y$b$a;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/y$b$a;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/y$b;->f:Lcom/coui/appcompat/widget/y$b$a;

    .line 299
    new-instance v0, Lcom/coui/appcompat/widget/y$b$a;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/y$b$a;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    const v0, 0x3ea3d70a    # 0.32f

    .line 301
    iput v0, p0, Lcom/coui/appcompat/widget/y$b;->h:F

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 303
    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->i:D

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 304
    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->j:D

    const/4 v0, 0x1

    .line 312
    iput v0, p0, Lcom/coui/appcompat/widget/y$b;->q:I

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/y$b;->r:Z

    const v0, 0x3f547ae1    # 0.83f

    .line 316
    iput v0, p0, Lcom/coui/appcompat/widget/y$b;->u:F

    .line 321
    new-instance v0, Lcom/coui/appcompat/widget/y$b$b;

    iget v1, p0, Lcom/coui/appcompat/widget/y$b;->h:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/y$b$b;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    .line 322
    new-instance v0, Lcom/coui/appcompat/widget/y$b$b;

    const-wide v1, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/y$b$b;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/y$b;->d:Lcom/coui/appcompat/widget/y$b$b;

    .line 323
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/y$b;F)F
    .locals 0

    .line 269
    iput p1, p0, Lcom/coui/appcompat/widget/y$b;->u:F

    return p1
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/y$b;)J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->p:J

    return-wide v0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/y$b;)I
    .locals 0

    .line 269
    iget p0, p0, Lcom/coui/appcompat/widget/y$b;->n:I

    return p0
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/y$b;)D
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    return-wide v0
.end method

.method static synthetic d(Lcom/coui/appcompat/widget/y$b;)D
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->k:D

    return-wide v0
.end method

.method static synthetic e(Lcom/coui/appcompat/widget/y$b;)Lcom/coui/appcompat/widget/y$b$a;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    return-object p0
.end method


# virtual methods
.method a()D
    .locals 2

    .line 386
    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    return-wide v0
.end method

.method a(Lcom/coui/appcompat/widget/y$b$a;)D
    .locals 2

    .line 438
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    iget-wide p0, p1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method a(D)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide p1, p0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    return-void
.end method

.method a(DZ)V
    .locals 3

    .line 373
    iput-wide p1, p0, Lcom/coui/appcompat/widget/y$b;->k:D

    .line 374
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/y$b;->r:Z

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->f:Lcom/coui/appcompat/widget/y$b$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide p1, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    if-eqz p3, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/y$b;->d()V

    :cond_1
    return-void
.end method

.method a(F)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget v1, p0, Lcom/coui/appcompat/widget/y$b;->m:I

    iget p0, p0, Lcom/coui/appcompat/widget/y$b;->o:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v1, p0

    int-to-double p0, v1

    iput-wide p0, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    return-void
.end method

.method a(II)V
    .locals 4

    .line 327
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->v:J

    .line 328
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->v:J

    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->w:J

    const/4 v0, 0x1

    .line 329
    iput v0, p0, Lcom/coui/appcompat/widget/y$b;->q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    sput v1, Lcom/coui/appcompat/widget/y$b;->a:F

    .line 331
    iget-object v1, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    iget v2, p0, Lcom/coui/appcompat/widget/y$b;->h:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/y$b$b;->a(D)V

    .line 332
    iget-object v1, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/y$b$b;->b(D)V

    .line 333
    iget-object v1, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$b;)V

    int-to-double v1, p1

    .line 334
    invoke-virtual {p0, v1, v2, v0}, Lcom/coui/appcompat/widget/y$b;->a(DZ)V

    int-to-double p1, p2

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/y$b;->a(D)V

    return-void
.end method

.method a(Lcom/coui/appcompat/widget/y$b$b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 369
    iput-object p1, p0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    return-void

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(III)Z
    .locals 3

    int-to-double v0, p1

    const/4 v2, 0x0

    .line 339
    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/y$b;->a(DZ)V

    if-gt p1, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    new-instance p1, Lcom/coui/appcompat/widget/y$b$b;

    iget p2, p0, Lcom/coui/appcompat/widget/y$b;->h:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/coui/appcompat/widget/y$b$b;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$b;)V

    return v2

    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    int-to-double p1, p3

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/y$b;->b(D)V

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    int-to-double p1, p2

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/y$b;->b(D)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/y$b;->s:Z

    .line 347
    iget-object p2, p0, Lcom/coui/appcompat/widget/y$b;->d:Lcom/coui/appcompat/widget/y$b$b;

    const-wide v0, 0x40286147a0000000L    # 12.1899995803833

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/widget/y$b$b;->a(D)V

    .line 348
    iget-object p2, p0, Lcom/coui/appcompat/widget/y$b;->d:Lcom/coui/appcompat/widget/y$b$b;

    iget p3, p0, Lcom/coui/appcompat/widget/y$b;->u:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/widget/y$b$b;->b(D)V

    .line 349
    iget-object p2, p0, Lcom/coui/appcompat/widget/y$b;->d:Lcom/coui/appcompat/widget/y$b$b;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$b;)V

    return p1
.end method

.method b()D
    .locals 2

    .line 390
    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    return-wide v0
.end method

.method b(D)V
    .locals 2

    .line 405
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/y$b;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->k:D

    .line 409
    iput-wide p1, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    return-void
.end method

.method b(III)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/coui/appcompat/widget/y$b;->m:I

    add-int/2addr p1, p2

    .line 359
    iput p1, p0, Lcom/coui/appcompat/widget/y$b;->o:I

    .line 360
    iput p3, p0, Lcom/coui/appcompat/widget/y$b;->n:I

    .line 361
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/widget/y$b;->p:J

    .line 362
    iget-object p1, p0, Lcom/coui/appcompat/widget/y$b;->c:Lcom/coui/appcompat/widget/y$b$b;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$b;)V

    return-void
.end method

.method c()D
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    return-wide v0
.end method

.method c(III)V
    .locals 2

    .line 430
    iget-object p2, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    int-to-double v0, p1

    iput-wide v0, p2, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 431
    iget-object p1, p0, Lcom/coui/appcompat/widget/y$b;->f:Lcom/coui/appcompat/widget/y$b$a;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 432
    iput-wide p2, p1, Lcom/coui/appcompat/widget/y$b$a;->b:D

    .line 433
    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide p2, p0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 434
    iput-wide p2, p0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    return-void
.end method

.method d()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    iput-wide v0, p0, Lcom/coui/appcompat/widget/y$b;->l:D

    .line 414
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iget-object v1, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v1, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 415
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/y$b;->s:Z

    return-void
.end method

.method e()Z
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/widget/y$b;->i:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    .line 421
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$a;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/widget/y$b;->j:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v0, p0, Lcom/coui/appcompat/widget/y$b$b;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method f()Z
    .locals 27

    move-object/from16 v0, p0

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/y$b;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 451
    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v3, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 452
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v5, v1, Lcom/coui/appcompat/widget/y$b$a;->b:D

    .line 453
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v7, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 454
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v9, v1, Lcom/coui/appcompat/widget/y$b$a;->b:D

    .line 466
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/y$b;->s:Z

    const/4 v9, 0x1

    if-nez v1, :cond_6

    .line 467
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 468
    iget-wide v12, v0, Lcom/coui/appcompat/widget/y$b;->v:J

    sub-long v12, v1, v12

    .line 469
    iget v14, v0, Lcom/coui/appcompat/widget/y$b;->q:I

    if-ne v14, v9, :cond_3

    .line 470
    iget-object v14, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v14, v14, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x40af400000000000L    # 4000.0

    cmpl-double v14, v14, v16

    const-wide v18, 0x40c3880000000000L    # 10000.0

    if-lez v14, :cond_1

    iget-object v14, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v14, v14, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_1

    .line 471
    iget-object v14, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    const-wide v15, 0x4004cccccccccccdL    # 2.6

    iget-object v10, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v10, v10, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    div-double v10, v10, v18

    add-double/2addr v10, v15

    iput-wide v10, v14, Lcom/coui/appcompat/widget/y$b$b;->a:D

    goto :goto_0

    .line 472
    :cond_1
    iget-object v10, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v10, v10, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v10, v10, v16

    if-gtz v10, :cond_2

    .line 473
    iget-object v10, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    iget-object v11, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    move-object/from16 v17, v10

    iget-wide v9, v11, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double v9, v9, v18

    add-double/2addr v9, v14

    move-object/from16 v11, v17

    iput-wide v9, v11, Lcom/coui/appcompat/widget/y$b$b;->a:D

    .line 475
    :cond_2
    :goto_0
    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b;->w:J

    .line 477
    :cond_3
    iget v9, v0, Lcom/coui/appcompat/widget/y$b;->q:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    const-wide/16 v9, 0x1e0

    cmp-long v9, v12, v9

    if-lez v9, :cond_5

    .line 479
    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v9, v9, Lcom/coui/appcompat/widget/y$b$a;->b:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x409f400000000000L    # 2000.0

    cmpl-double v9, v9, v11

    const-wide v10, 0x3f547ae147ae147bL    # 0.00125

    if-lez v9, :cond_4

    .line 480
    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v12, v9, Lcom/coui/appcompat/widget/y$b$b;->a:D

    iget-wide v14, v0, Lcom/coui/appcompat/widget/y$b;->w:J

    sub-long v14, v1, v14

    long-to-double v14, v14

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    iput-wide v12, v9, Lcom/coui/appcompat/widget/y$b$b;->a:D

    goto :goto_1

    .line 481
    :cond_4
    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v12, v9, Lcom/coui/appcompat/widget/y$b$b;->a:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v9, v12, v14

    if-lez v9, :cond_5

    .line 482
    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v12, v9, Lcom/coui/appcompat/widget/y$b$b;->a:D

    iget-wide v14, v0, Lcom/coui/appcompat/widget/y$b;->w:J

    sub-long v14, v1, v14

    long-to-double v14, v14

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    iput-wide v12, v9, Lcom/coui/appcompat/widget/y$b$b;->a:D

    .line 485
    :cond_5
    :goto_1
    iput-wide v1, v0, Lcom/coui/appcompat/widget/y$b;->w:J

    goto :goto_2

    .line 488
    :cond_6
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/y$b;->a(Lcom/coui/appcompat/widget/y$b$a;)D

    move-result-wide v9

    .line 489
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/y$b;->t:Z

    if-nez v1, :cond_7

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpg-double v1, v9, v11

    if-gez v1, :cond_7

    .line 491
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v9, v1, Lcom/coui/appcompat/widget/y$b$b;->b:D

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    add-double/2addr v9, v11

    iput-wide v9, v1, Lcom/coui/appcompat/widget/y$b$b;->b:D

    const/4 v1, 0x1

    .line 492
    iput-boolean v1, v0, Lcom/coui/appcompat/widget/y$b;->t:Z

    goto :goto_2

    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    cmpg-double v1, v9, v11

    if-gez v1, :cond_8

    .line 495
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v3, v0, Lcom/coui/appcompat/widget/y$b;->l:D

    iput-wide v3, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 496
    iput-boolean v2, v0, Lcom/coui/appcompat/widget/y$b;->t:Z

    .line 497
    iput-boolean v2, v0, Lcom/coui/appcompat/widget/y$b;->s:Z

    return v2

    .line 503
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v1, v1, Lcom/coui/appcompat/widget/y$b$b;->b:D

    iget-wide v9, v0, Lcom/coui/appcompat/widget/y$b;->l:D

    sub-double/2addr v9, v7

    mul-double/2addr v1, v9

    iget-object v7, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v7, v7, Lcom/coui/appcompat/widget/y$b$b;->a:D

    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->f:Lcom/coui/appcompat/widget/y$b$a;

    iget-wide v9, v9, Lcom/coui/appcompat/widget/y$b$a;->b:D

    mul-double/2addr v7, v9

    sub-double/2addr v1, v7

    .line 505
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double/2addr v7, v3

    .line 506
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v1

    div-double/2addr v11, v9

    add-double/2addr v11, v5

    .line 508
    iget-object v9, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v9, v9, Lcom/coui/appcompat/widget/y$b$b;->b:D

    iget-wide v13, v0, Lcom/coui/appcompat/widget/y$b;->l:D

    sub-double/2addr v13, v7

    mul-double/2addr v9, v13

    iget-object v7, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v7, v7, Lcom/coui/appcompat/widget/y$b$b;->a:D

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    .line 510
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v13

    add-double/2addr v7, v3

    .line 511
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v15

    move-wide/from16 v17, v1

    float-to-double v1, v15

    mul-double/2addr v1, v9

    div-double/2addr v1, v13

    add-double/2addr v1, v5

    .line 513
    iget-object v13, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v13, v13, Lcom/coui/appcompat/widget/y$b$b;->b:D

    move-wide/from16 v21, v9

    iget-wide v9, v0, Lcom/coui/appcompat/widget/y$b;->l:D

    sub-double/2addr v9, v7

    mul-double/2addr v13, v9

    iget-object v7, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v7, v7, Lcom/coui/appcompat/widget/y$b$b;->a:D

    mul-double/2addr v7, v1

    sub-double/2addr v13, v7

    .line 515
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v1

    add-double/2addr v7, v3

    .line 516
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v9, v13

    add-double/2addr v9, v5

    .line 518
    iget-object v15, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    move-wide/from16 v23, v3

    iget-wide v3, v15, Lcom/coui/appcompat/widget/y$b$b;->b:D

    move-wide/from16 v25, v13

    iget-wide v13, v0, Lcom/coui/appcompat/widget/y$b;->l:D

    sub-double/2addr v13, v7

    mul-double/2addr v3, v13

    iget-object v13, v0, Lcom/coui/appcompat/widget/y$b;->b:Lcom/coui/appcompat/widget/y$b$b;

    iget-wide v13, v13, Lcom/coui/appcompat/widget/y$b$b;->a:D

    mul-double/2addr v13, v9

    sub-double/2addr v3, v13

    add-double/2addr v11, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v1

    add-double/2addr v11, v5

    add-double/2addr v11, v9

    const-wide v13, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double/2addr v11, v13

    add-double v19, v21, v25

    mul-double v19, v19, v1

    add-double v1, v17, v19

    add-double/2addr v1, v3

    mul-double/2addr v1, v13

    .line 524
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v11, v3

    add-double v3, v23, v11

    .line 525
    invoke-static {}, Lcom/coui/appcompat/widget/y;->h()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v1, v11

    add-double/2addr v5, v1

    .line 527
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->g:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide v9, v1, Lcom/coui/appcompat/widget/y$b$a;->b:D

    .line 528
    iput-wide v7, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 530
    iget-object v1, v0, Lcom/coui/appcompat/widget/y$b;->e:Lcom/coui/appcompat/widget/y$b$a;

    iput-wide v5, v1, Lcom/coui/appcompat/widget/y$b$a;->b:D

    .line 531
    iput-wide v3, v1, Lcom/coui/appcompat/widget/y$b$a;->a:D

    .line 533
    iget v1, v0, Lcom/coui/appcompat/widget/y$b;->q:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/y$b;->q:I

    return v2
.end method
