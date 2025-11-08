.class public Lcom/oplus/camera/ui/widget/f;
.super Landroid/view/View;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/widget/f$b;,
        Lcom/oplus/camera/ui/widget/f$c;,
        Lcom/oplus/camera/ui/widget/f$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field public final a:Landroid/graphics/Rect;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/widget/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Lcom/oplus/camera/ui/widget/f$c;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:I

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Paint;

.field private r:Z

.field private s:I

.field private t:I

.field private u:F

.field private final v:Landroid/graphics/Rect;

.field private w:F

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0x2e

    .line 41
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/oplus/camera/ui/widget/f;->b:I

    .line 42
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/oplus/camera/ui/widget/f;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    const/16 p1, 0x32

    .line 343
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    const/4 p1, 0x0

    .line 352
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    .line 353
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/f;->o:Landroid/graphics/Rect;

    .line 354
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/f;->p:Landroid/graphics/Rect;

    const/16 p2, 0x64

    .line 357
    iput p2, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    .line 358
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    .line 360
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->v:Landroid/graphics/Rect;

    .line 363
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    const p1, 0x3f99999a    # 1.2f

    .line 365
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->z:F

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 28
    sget v0, Lcom/oplus/camera/ui/widget/f;->b:I

    return v0
.end method

.method public static a(Landroid/content/res/Resources;F)I
    .locals 1

    .line 804
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 805
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(IZZ)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 623
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 625
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    if-ne v0, p1, :cond_2

    return-void

    .line 627
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    if-eqz p2, :cond_3

    .line 632
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/f;->c()V

    .line 633
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->invalidate()V

    .line 637
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/f$a;

    invoke-virtual {v0, p0, p1, p3}, Lcom/oplus/camera/ui/widget/f$a;->a(Lcom/oplus/camera/ui/widget/f;IZ)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic b()I
    .locals 1

    .line 28
    sget v0, Lcom/oplus/camera/ui/widget/f;->c:I

    return v0
.end method

.method private c()V
    .locals 7

    .line 757
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingLeft()I

    move-result v0

    .line 758
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingTop()I

    move-result v1

    .line 759
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingRight()I

    move-result v2

    .line 760
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingBottom()I

    move-result v3

    .line 761
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 762
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 764
    iget v5, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    if-gtz v5, :cond_0

    const-string p0, "Wheel"

    const-string v0, "updateWheelBounds, Invalid max value"

    .line 765
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 770
    :cond_0
    iget v6, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 771
    iget v5, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    if-eqz v5, :cond_1

    goto :goto_2

    .line 775
    :cond_1
    div-int/lit8 v5, v4, 0x2

    add-int/2addr v0, v5

    iput v0, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    int-to-float v0, v4

    .line 776
    iget v4, p0, Lcom/oplus/camera/ui/widget/f;->z:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 777
    iget-object v4, p0, Lcom/oplus/camera/ui/widget/f;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    if-le v4, v3, :cond_4

    :goto_1
    move v4, v3

    .line 782
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 783
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p0, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, p0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/widget/f$a;)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCenterValue()I
    .locals 0

    .line 395
    iget p0, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    return p0
.end method

.method public getFadingEdgeLength()I
    .locals 0

    .line 405
    iget p0, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    return p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 415
    iget p0, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 434
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingLeft()I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingTop()I

    move-result v1

    .line 437
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getPaddingBottom()I

    move-result v2

    .line 438
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    sub-int/2addr v3, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 439
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v6, v0

    int-to-float v7, v1

    add-int v5, v0, v3

    int-to-float v8, v5

    add-int v5, v1, v2

    int-to-float v9, v5

    const/4 v10, 0x0

    move-object v5, p1

    .line 440
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v5

    .line 444
    :try_start_0
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->y:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 447
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->k:Lcom/oplus/camera/ui/widget/f$c;

    if-nez v6, :cond_0

    .line 448
    new-instance v6, Lcom/oplus/camera/ui/widget/f$c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    invoke-direct {v6, v7, v8}, Lcom/oplus/camera/ui/widget/f$c;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/oplus/camera/ui/widget/f;->k:Lcom/oplus/camera/ui/widget/f$c;

    .line 449
    :cond_0
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->k:Lcom/oplus/camera/ui/widget/f$c;

    .line 451
    :cond_1
    instance-of v7, v6, Lcom/oplus/camera/ui/widget/f$c;

    if-eqz v7, :cond_3

    .line 453
    iget v7, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    if-eqz v7, :cond_2

    goto :goto_0

    .line 456
    :cond_2
    move-object v7, v6

    check-cast v7, Lcom/oplus/camera/ui/widget/f$c;

    iget v8, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    invoke-virtual {v7, v8}, Lcom/oplus/camera/ui/widget/f$c;->a(I)V

    .line 462
    :goto_0
    move-object v7, v6

    check-cast v7, Lcom/oplus/camera/ui/widget/f$c;

    iget v8, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    iget v9, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    iget v10, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/oplus/camera/ui/widget/f$c;->a(III)V

    .line 464
    :cond_3
    iget-object v7, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 465
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 468
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->f:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    .line 471
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->j:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 473
    new-instance v6, Lcom/oplus/camera/ui/widget/f$b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    invoke-direct {v6, v7, v8}, Lcom/oplus/camera/ui/widget/f$b;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/oplus/camera/ui/widget/f;->j:Landroid/graphics/drawable/Drawable;

    .line 474
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/oplus/camera/ui/widget/f;->h:I

    .line 475
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/oplus/camera/ui/widget/f;->g:I

    .line 477
    :cond_4
    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->j:Landroid/graphics/drawable/Drawable;

    .line 479
    :cond_5
    iget v7, p0, Lcom/oplus/camera/ui/widget/f;->h:I

    .line 480
    iget v8, p0, Lcom/oplus/camera/ui/widget/f;->g:I

    .line 481
    iget v9, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    if-lez v7, :cond_6

    if-le v7, v3, :cond_7

    :cond_6
    move v7, v3

    .line 483
    :cond_7
    iget v9, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    if-eqz v9, :cond_8

    if-lez v8, :cond_8

    if-le v8, v2, :cond_9

    :cond_8
    move v8, v2

    :cond_9
    sub-int/2addr v3, v7

    const/4 v9, 0x2

    .line 485
    div-int/2addr v3, v9

    add-int/2addr v0, v3

    sub-int/2addr v2, v8

    .line 486
    div-int/2addr v2, v9

    add-int/2addr v1, v2

    add-int/2addr v7, v0

    add-int/2addr v8, v1

    .line 487
    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 491
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    if-lez v0, :cond_e

    .line 493
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getWidth()I

    move-result v0

    .line 494
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->getHeight()I

    move-result v1

    .line 495
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->q:Landroid/graphics/Paint;

    if-nez v2, :cond_a

    .line 497
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/f;->q:Landroid/graphics/Paint;

    .line 498
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->q:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 500
    :cond_a
    iget v2, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    if-eqz v2, :cond_b

    goto/16 :goto_1

    .line 505
    :cond_b
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    .line 506
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    .line 507
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v10, :cond_d

    .line 509
    :cond_c
    iget v2, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    .line 510
    iget v2, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/widget/f;->l:Landroid/graphics/Bitmap;

    .line 511
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v9, [I

    aput v4, v6, v4

    const/4 v7, -0x1

    aput v7, v6, v10

    invoke-direct {v2, v3, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 512
    iget-object v3, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2, v4, v4, v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 513
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 515
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->l:Landroid/graphics/Bitmap;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    :cond_d
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2, v4, v4, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 520
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->o:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/f;->p:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/f;->o:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oplus/camera/ui/widget/f;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 522
    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->o:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 523
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->l:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/f;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/ui/widget/f;->o:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/f;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_e
    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 538
    throw p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 547
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/f;->c()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_4

    .line 573
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/widget/f;->t:I

    if-eqz p1, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/f;->v:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 579
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oplus/camera/ui/widget/f;->u:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 580
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    if-le p1, v0, :cond_2

    .line 581
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 582
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    if-ge p1, v0, :cond_3

    .line 583
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 586
    :cond_3
    :goto_0
    iget p1, p0, Lcom/oplus/camera/ui/widget/f;->i:I

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 587
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 588
    invoke-direct {p0, p1, v1, v2}, Lcom/oplus/camera/ui/widget/f;->a(IZZ)V

    .line 598
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->invalidate()V

    goto :goto_4

    .line 605
    :cond_4
    iput-boolean v1, p0, Lcom/oplus/camera/ui/widget/f;->r:Z

    .line 606
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_6

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/f$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/widget/f$a;->b(Lcom/oplus/camera/ui/widget/f;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 562
    :cond_5
    iput v0, p0, Lcom/oplus/camera/ui/widget/f;->u:F

    .line 563
    iput v1, p0, Lcom/oplus/camera/ui/widget/f;->w:F

    .line 564
    iput-boolean v2, p0, Lcom/oplus/camera/ui/widget/f;->r:Z

    .line 565
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->v:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 566
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_6

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/f$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/widget/f$a;->a(Lcom/oplus/camera/ui/widget/f;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    return v2
.end method

.method public setCenterValue(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 660
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 662
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    if-ne v0, p1, :cond_2

    return-void

    .line 664
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    .line 665
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->invalidate()V

    return-void
.end method

.method public setCurrentValueIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 1

    .line 684
    iget v0, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    if-ne v0, p1, :cond_0

    return-void

    .line 686
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->n:I

    const/4 p1, 0x0

    .line 687
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->m:Landroid/graphics/Bitmap;

    .line 688
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->l:Landroid/graphics/Bitmap;

    .line 689
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 701
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    if-le v1, p1, :cond_2

    .line 705
    iget v1, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/widget/f;->e:I

    .line 706
    iget v1, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    if-le v1, p1, :cond_2

    .line 708
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    .line 709
    iget v1, p0, Lcom/oplus/camera/ui/widget/f;->x:I

    invoke-direct {p0, v1, v0, v0}, Lcom/oplus/camera/ui/widget/f;->a(IZZ)V

    .line 713
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    .line 714
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/f;->c()V

    .line 715
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/f;->invalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 727
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/widget/f;->s:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 729
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/ui/widget/f;->a(IZZ)V

    return-void
.end method

.method public setWheelDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/f;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setWheelLengthRatio(F)V
    .locals 0

    .line 748
    iput p1, p0, Lcom/oplus/camera/ui/widget/f;->z:F

    .line 749
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/f;->c()V

    return-void
.end method
