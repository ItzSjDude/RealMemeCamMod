.class public Lcom/oplus/camera/gl/GLRootView;
.super Lcom/oplus/camera/gl/q;
.source "GLRootView.java"

# interfaces
.implements Lcom/oplus/camera/gl/n;
.implements Lcom/oplus/camera/gl/q$m;
.implements Lcom/oplus/camera/gl/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/gl/GLRootView$IdleRunner;,
        Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/oplus/camera/gl/e;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/gl/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/oplus/camera/gl/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/oplus/camera/gl/GLRootView$IdleRunner;

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private g:I

.field private h:J

.field private i:I

.field private j:Ljavax/microedition/khronos/opengles/GL11;

.field private k:Lcom/oplus/camera/gl/h;

.field private l:Lcom/oplus/camera/gl/GLView;

.field private m:I

.field private n:Landroid/graphics/Matrix;

.field private o:I

.field private p:I

.field private volatile q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/gl/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/gl/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance p1, Lcom/oplus/camera/gl/e;

    invoke-direct {p1}, Lcom/oplus/camera/gl/e;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->a:Lcom/oplus/camera/gl/e;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    .line 72
    new-instance p1, Lcom/oplus/camera/gl/GLRootView$IdleRunner;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/gl/GLRootView$IdleRunner;-><init>(Lcom/oplus/camera/gl/GLRootView;Lcom/oplus/camera/gl/GLRootView$1;)V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->d:Lcom/oplus/camera/gl/GLRootView$IdleRunner;

    .line 73
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/oplus/camera/gl/GLRootView;->g:I

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/oplus/camera/gl/GLRootView;->h:J

    .line 77
    iput p1, p0, Lcom/oplus/camera/gl/GLRootView;->i:I

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 89
    iput v0, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->q:Z

    .line 94
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/oplus/camera/gl/GLRootView;->t:Z

    .line 96
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->u:Z

    .line 98
    iput p1, p0, Lcom/oplus/camera/gl/GLRootView;->v:I

    .line 99
    iput p1, p0, Lcom/oplus/camera/gl/GLRootView;->w:I

    .line 102
    iput-object p2, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    .line 103
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->y:Z

    .line 104
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->z:Z

    .line 114
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/GLRootView;->setEGLContextClientVersion(I)V

    .line 116
    iget p1, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    .line 117
    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->a:Lcom/oplus/camera/gl/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->setEGLConfigChooser(Lcom/oplus/camera/gl/q$e;)V

    const-string p1, "PreviewGLThread"

    .line 119
    invoke-virtual {p0, p0, p1}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/q$m;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p0}, Lcom/oplus/camera/gl/GLRootView;->setOutputRender(Lcom/oplus/camera/gl/r;)V

    .line 122
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private a(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->getWidth()I

    move-result v0

    .line 506
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->getHeight()I

    move-result v1

    .line 507
    div-int/lit8 v0, v0, 0x2

    .line 508
    div-int/lit8 v1, v1, 0x2

    .line 509
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 510
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/oplus/camera/gl/h;->a(FFFF)V

    .line 512
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_1

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    neg-int p1, v1

    int-to-float p1, p1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/gl/h;->a(FF)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    neg-int p1, v0

    int-to-float p1, p1

    neg-int v0, v1

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/gl/h;->a(FF)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 450
    invoke-direct {p0}, Lcom/oplus/camera/gl/GLRootView;->n()V

    .line 453
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->g()V

    .line 456
    invoke-static {}, Lcom/oplus/camera/gl/x;->s()V

    const/4 p1, 0x0

    .line 458
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->q:Z

    .line 460
    iget v0, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/oplus/camera/gl/GLRootView;->m()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 465
    iget v0, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/gl/GLRootView;->a(I)V

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz v0, :cond_1

    .line 468
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLView;->a(Lcom/oplus/camera/gl/h;)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    invoke-interface {v0}, Lcom/oplus/camera/gl/h;->f()V

    .line 472
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    invoke-static {}, Lcom/oplus/camera/gl/b;->b()J

    move-result-wide v0

    .line 474
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_2

    .line 475
    iget-object v3, p0, Lcom/oplus/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/f;

    invoke-virtual {v3, v0, v1}, Lcom/oplus/camera/gl/f;->a(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 477
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 480
    :cond_3
    invoke-static {}, Lcom/oplus/camera/gl/x;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->a()V

    .line 484
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    monitor-enter p1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 486
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->d:Lcom/oplus/camera/gl/GLRootView$IdleRunner;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->enable()V

    .line 488
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/oplus/camera/gl/GLRootView;)Lcom/oplus/camera/gl/h;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/gl/GLRootView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/gl/GLRootView;->q:Z

    return p0
.end method

.method private m()V
    .locals 8

    .line 238
    iget v0, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->getWidth()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->getHeight()I

    move-result v1

    .line 245
    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->v:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->w:I

    if-eq v1, v2, :cond_2

    .line 246
    :cond_0
    iput v3, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    .line 248
    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    rem-int/lit16 v4, v2, 0xb4

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 252
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 255
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 257
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    int-to-float v2, v2

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 260
    :goto_0
    iput v3, p0, Lcom/oplus/camera/gl/GLRootView;->o:I

    .line 261
    iput v0, p0, Lcom/oplus/camera/gl/GLRootView;->v:I

    .line 262
    iput v1, p0, Lcom/oplus/camera/gl/GLRootView;->w:I

    .line 266
    :cond_2
    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_3

    move v7, v1

    move v1, v0

    move v0, v7

    .line 272
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutContentPane, size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", compensation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GLRootView"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/oplus/camera/gl/GLView;->a(IIII)V

    :cond_4
    return-void
.end method

.method private n()V
    .locals 7

    .line 376
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lcom/oplus/camera/gl/GLRootView;->h:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 379
    iput-wide v0, p0, Lcom/oplus/camera/gl/GLRootView;->h:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputFps, fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/gl/GLRootView;->g:I

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/oplus/camera/gl/GLRootView;->h:J

    sub-long v5, v0, v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLRootView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-wide v0, p0, Lcom/oplus/camera/gl/GLRootView;->h:J

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lcom/oplus/camera/gl/GLRootView;->g:I

    .line 387
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oplus/camera/gl/GLRootView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/gl/GLRootView;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->u:Z

    if-eqz v0, :cond_0

    const-string p0, "GLRootView"

    const-string v0, "requestRender, Activity.finish(), so return"

    .line 198
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->q:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->q:Z

    .line 208
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->a()V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 399
    invoke-static {}, Lcom/oplus/camera/gl/b;->a()V

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 409
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->r:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 414
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->b(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 422
    iget-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->t:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 423
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->t:Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 416
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    throw p1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 0

    .line 392
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz p1, :cond_0

    .line 393
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/gl/GLView;->a(Lcom/oplus/camera/gl/h;I)V

    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGLRootViewListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 347
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 355
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/gl/y;->a(Z)V

    .line 358
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 360
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    if-eqz p1, :cond_1

    .line 361
    invoke-interface {p1}, Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;->onSurfaceChanged()V

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz p1, :cond_2

    .line 365
    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/gl/GLView;->a(II)V

    .line 368
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/gl/GLRootView;->y:Z

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const-string p2, "onSurfaceCreated, mRenderLock.unlock()"

    const-string v0, "GLRootView"

    const-string v1, "onSurfaceCreated(GL10 gl1, EGLConfig config)"

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 298
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLObject has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "onSurfaceCreated, mRenderLock.lock()"

    .line 303
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->j:Ljavax/microedition/khronos/opengles/GL11;

    .line 309
    new-instance p1, Lcom/oplus/camera/gl/i;

    invoke-direct {p1}, Lcom/oplus/camera/gl/i;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    iget-boolean v1, p0, Lcom/oplus/camera/gl/GLRootView;->z:Z

    invoke-interface {p1, v1}, Lcom/oplus/camera/gl/h;->a(Z)V

    .line 311
    invoke-static {}, Lcom/oplus/camera/gl/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 321
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->setRenderMode(I)V

    .line 324
    iget-object p2, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    if-eqz p2, :cond_1

    .line 325
    invoke-interface {p2}, Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;->onSurfaceCreated()V

    .line 328
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz p2, :cond_2

    .line 329
    invoke-virtual {p2}, Lcom/oplus/camera/gl/GLView;->f()V

    :cond_2
    const/4 p2, 0x1

    .line 332
    iput-boolean p2, p0, Lcom/oplus/camera/gl/GLRootView;->y:Z

    .line 333
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->u:Z

    const-string p0, "onSurfaceCreated mFinsh = false"

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    throw p1
.end method

.method public b()V
    .locals 3

    const-string v0, "requestLayoutContentPane, mRenderLock.unlock()"

    const-string v1, "GLRootView"

    const-string v2, "requestLayoutContentPane, mRenderLock.lock()"

    .line 213
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 231
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oplus/camera/gl/GLRootView;->p:I

    .line 229
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    throw v2
.end method

.method public c()V
    .locals 1

    .line 569
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->c()V

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->u:Z

    const-string p0, "GLRootView"

    const-string v0, "onResume mFinsh = false"

    .line 572
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V

    .line 578
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->d()V

    const/4 v0, 0x0

    .line 586
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->y:Z

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "dispatchTouchEvent, mRenderLock.unlock()"

    .line 521
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 529
    :cond_1
    iget-boolean v3, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    return v2

    .line 528
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z

    .line 533
    :cond_3
    iget v3, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    if-eqz v3, :cond_4

    .line 534
    iget-object v3, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_4
    const-string v3, "GLRootView"

    const-string v5, "dispatchTouchEvent, mRenderLock.lock()"

    .line 537
    invoke-static {v3, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v5, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 543
    :try_start_0
    iget-object v5, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    invoke-virtual {v5, p1}, Lcom/oplus/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v2, v4

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 546
    iput-boolean v4, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    .line 551
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    throw p1
.end method

.method public e()V
    .locals 3

    const-string v0, "unfreeze, mRenderLock.unlock()"

    const-string v1, "GLRootView"

    const-string v2, "unfreeze, mRenderLock.lock()"

    .line 622
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    .line 627
    :try_start_0
    iput-boolean v2, p0, Lcom/oplus/camera/gl/GLRootView;->r:Z

    .line 628
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    .line 630
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    throw v2
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->u:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/oplus/camera/gl/q;->finalize()V

    .line 690
    throw v0
.end method

.method public getCompensation()I
    .locals 0

    .line 597
    iget p0, p0, Lcom/oplus/camera/gl/GLRootView;->m:I

    return p0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 0

    .line 592
    iget p0, p0, Lcom/oplus/camera/gl/GLRootView;->o:I

    return p0
.end method

.method public declared-synchronized getSurfaceState()Z
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 680
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V

    .line 681
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->b()V

    :cond_0
    return-void
.end method

.method public setContentPane(Lcom/oplus/camera/gl/GLView;)V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 162
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/GLView;->b(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView;->s:Z

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLView;->b()V

    .line 169
    invoke-static {}, Lcom/oplus/camera/gl/c;->a()V

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->l:Lcom/oplus/camera/gl/GLView;

    if-eqz p1, :cond_3

    .line 175
    invoke-virtual {p1, p0}, Lcom/oplus/camera/gl/GLView;->a(Lcom/oplus/camera/gl/n;)V

    .line 176
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->b()V

    :cond_3
    return-void
.end method

.method public setGLRootViewListener(Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView;->x:Lcom/oplus/camera/gl/GLRootView$GLRootViewListener;

    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x105

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 643
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/GLRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setNeedLutTexture(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView;->z:Z

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView;->k:Lcom/oplus/camera/gl/h;

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0, p1}, Lcom/oplus/camera/gl/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 656
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V

    .line 657
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/gl/q;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 659
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "surfaceChanged, w: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLRootView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 664
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V

    .line 665
    invoke-super {p0, p1}, Lcom/oplus/camera/gl/q;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const-string p0, "GLRootView"

    const-string p1, "surfaceCreated"

    .line 667
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 672
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView;->e()V

    .line 673
    invoke-super {p0, p1}, Lcom/oplus/camera/gl/q;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const-string p0, "GLRootView"

    const-string p1, "surfaceDestroyed"

    .line 675
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
