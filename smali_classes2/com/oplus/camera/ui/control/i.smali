.class public Lcom/oplus/camera/ui/control/i;
.super Ljava/lang/Object;
.source "TimerSnapShotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/control/i$b;,
        Lcom/oplus/camera/ui/control/i$a;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/Typeface;


# instance fields
.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/oplus/camera/ui/control/i$b;

.field private n:Lcom/oplus/camera/ui/control/i$a;

.field private o:Lcom/oplus/camera/ui/RotableTextView;

.field private p:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->b:F

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->c:F

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->d:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->e:I

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->f:Z

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->g:Z

    .line 70
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->h:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->i:Z

    .line 72
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->j:I

    .line 73
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->k:I

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/oplus/camera/ui/control/i;->l:J

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->p:Landroid/animation/ValueAnimator;

    .line 83
    new-instance v1, Lcom/oplus/camera/ui/control/i$a;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/control/i$a;-><init>(Lcom/oplus/camera/ui/control/i;Lcom/oplus/camera/ui/control/i$1;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/i;I)I
    .locals 1

    .line 42
    iget v0, p0, Lcom/oplus/camera/ui/control/i;->j:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/ui/control/i;->j:I

    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/i;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/ui/control/i;->p:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f090193

    .line 353
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 355
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c33

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 356
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 357
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c32

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 358
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c35

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/i;->b:F

    .line 359
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c36

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/i;->c:F

    .line 360
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c34

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/camera/ui/control/i;->d:I

    .line 361
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/ui/control/i;->e:I

    .line 363
    new-instance v5, Lcom/oplus/camera/ui/RotableTextView;

    invoke-direct {v5, p1}, Lcom/oplus/camera/ui/RotableTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    .line 364
    iget-object v5, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/oplus/camera/ui/RotableTextView;->setShadowLayer(FFFI)V

    .line 366
    sget-object v2, Lcom/oplus/camera/ui/control/i;->a:Landroid/graphics/Typeface;

    if-nez v2, :cond_1

    .line 367
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/oplus/camera/ui/control/i;->a:Landroid/graphics/Typeface;

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    sget-object v2, Lcom/oplus/camera/ui/control/i;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    iget v2, p0, Lcom/oplus/camera/ui/control/i;->b:F

    invoke-virtual {p1, v6, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 372
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1, p1, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 475
    array-length v1, p2

    if-lez v1, :cond_2

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x10

    .line 478
    array-length p1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    aget-object v4, p2, v3

    .line 479
    invoke-direct {p0, v4, v1}, Lcom/oplus/camera/ui/control/i;->a(Landroid/hardware/camera2/params/Face;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method

.method private a(Landroid/hardware/camera2/params/Face;I)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 496
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    if-gt v0, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/control/i;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/i;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/control/i;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->j:I

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/control/i$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/control/i;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/i;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/control/i;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->b:F

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/control/i;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->c:F

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/control/i;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/i;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/control/i;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->e:I

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/control/i;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->d:I

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/control/i;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/ui/control/i;->k:I

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/control/i;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->p:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    .line 378
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    .line 380
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->p:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 382
    iput-object v0, p0, Lcom/oplus/camera/ui/control/i;->p:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public a(ILandroid/app/Activity;IZZ)V
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimerSnapShot, time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerSnapShotManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iput-boolean p5, p0, Lcom/oplus/camera/ui/control/i;->i:Z

    .line 407
    iput-boolean p4, p0, Lcom/oplus/camera/ui/control/i;->h:Z

    mul-int/lit16 p1, p1, 0x3e8

    .line 408
    iput p1, p0, Lcom/oplus/camera/ui/control/i;->j:I

    .line 409
    iget p1, p0, Lcom/oplus/camera/ui/control/i;->j:I

    iput p1, p0, Lcom/oplus/camera/ui/control/i;->k:I

    .line 411
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/control/i;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/i;->f:Z

    .line 415
    iget-object p2, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz p2, :cond_0

    const/4 p4, 0x0

    .line 416
    invoke-virtual {p2, p4}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 419
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/i$a;->removeMessages(I)V

    .line 420
    iget-object p2, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/oplus/camera/ui/control/i$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/i$a;->sendMessage(Landroid/os/Message;)Z

    .line 422
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/i;->i:Z

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/control/i$b;->b(Z)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)V
    .locals 4

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/ui/control/i;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/control/i;->l:J

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/control/i;->a(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)Z

    move-result p1

    .line 460
    iget-object p2, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/control/i$a;->removeMessages(I)V

    .line 461
    iget-object p2, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/control/i$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 462
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 464
    iget-object p3, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    invoke-virtual {p3, p2}, Lcom/oplus/camera/ui/control/i$a;->sendMessage(Landroid/os/Message;)Z

    .line 466
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    if-eqz p0, :cond_0

    .line 467
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/control/i$b;->d(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/i$b;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotableTextView;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotableTextView;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    .line 397
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->getBottom()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 426
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/i;->f:Z

    return p0
.end method

.method public e()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/oplus/camera/ui/control/i;->g:Z

    return p0
.end method

.method public f()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/i$a;->removeMessages(I)V

    .line 435
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/i$a;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i;->n:Lcom/oplus/camera/ui/control/i$a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/i$a;->a()V

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->f:Z

    .line 438
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->i:Z

    .line 440
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    .line 442
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->o:Lcom/oplus/camera/ui/RotableTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i;->m:Lcom/oplus/camera/ui/control/i$b;

    if-eqz v1, :cond_1

    .line 446
    iget-boolean v2, p0, Lcom/oplus/camera/ui/control/i;->g:Z

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/control/i$b;->c(Z)V

    .line 449
    :cond_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i;->g:Z

    .line 450
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->j:I

    .line 451
    iput v0, p0, Lcom/oplus/camera/ui/control/i;->k:I

    const-wide/16 v0, 0x0

    .line 452
    iput-wide v0, p0, Lcom/oplus/camera/ui/control/i;->l:J

    return-void
.end method
