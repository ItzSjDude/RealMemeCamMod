.class public Lcom/oplus/camera/ui/preview/r$b;
.super Ljava/lang/Object;
.source "GuideLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/r;

.field private b:I

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/r;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 422
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r$b;->a:Lcom/oplus/camera/ui/preview/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 414
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$b;->b:I

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    .line 416
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r$b;->d:Landroid/graphics/PointF;

    .line 417
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$b;->e:I

    .line 418
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$b;->f:I

    .line 419
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    .line 420
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/r$b;->h:Z

    .line 423
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    .line 424
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/r$b;->d:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/r$b;)I
    .locals 0

    .line 411
    iget p0, p0, Lcom/oplus/camera/ui/preview/r$b;->b:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->d:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/RectF;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/r$b;)I
    .locals 0

    .line 411
    iget p0, p0, Lcom/oplus/camera/ui/preview/r$b;->e:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/r$b;)I
    .locals 0

    .line 411
    iget p0, p0, Lcom/oplus/camera/ui/preview/r$b;->f:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/r$b;)Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/r$b;->h:Z

    return p0
.end method


# virtual methods
.method public a(FFFF)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r$b;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    .line 430
    iput p1, p0, Lcom/oplus/camera/ui/preview/r$b;->b:I

    return-void
.end method

.method public a(FFFZII)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r$b;->d:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 435
    iput p5, p0, Lcom/oplus/camera/ui/preview/r$b;->e:I

    .line 436
    iput p6, p0, Lcom/oplus/camera/ui/preview/r$b;->f:I

    .line 437
    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/r$b;->h:Z

    const/4 p4, 0x1

    .line 438
    iput p4, p0, Lcom/oplus/camera/ui/preview/r$b;->b:I

    .line 440
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    if-nez p4, :cond_0

    .line 441
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    .line 444
    :cond_0
    rem-int/lit16 p5, p5, 0x168

    if-gez p5, :cond_1

    add-int/lit16 p5, p5, 0x168

    :cond_1
    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p5, :cond_5

    const/16 p6, 0x5a

    if-eq p5, p6, :cond_4

    const/16 p6, 0xb4

    if-eq p5, p6, :cond_3

    const/16 p6, 0x10e

    if-eq p5, p6, :cond_2

    goto :goto_0

    .line 457
    :cond_2
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    sub-float p6, p1, p3

    sub-float v0, p2, p3

    invoke-virtual {p5, p6, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 458
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    mul-float/2addr p4, p3

    sub-float p4, p1, p4

    add-float/2addr p2, p3

    invoke-virtual {p0, p4, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 462
    :cond_3
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    sub-float p6, p1, p3

    add-float v0, p2, p3

    invoke-virtual {p5, p6, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 463
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    add-float/2addr p1, p3

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    invoke-virtual {p0, p6, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 467
    :cond_4
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    add-float p6, p1, p3

    add-float v0, p2, p3

    invoke-virtual {p5, p6, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 468
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    sub-float/2addr p2, p3

    mul-float/2addr p3, p4

    add-float/2addr p3, p1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 452
    :cond_5
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/r$b;->c:Landroid/graphics/PointF;

    add-float p6, p1, p3

    sub-float v0, p2, p3

    invoke-virtual {p5, p6, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 453
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$b;->g:Landroid/graphics/RectF;

    sub-float/2addr p1, p3

    mul-float/2addr p3, p4

    sub-float p3, p2, p3

    invoke-virtual {p0, p1, p3, p6, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method
