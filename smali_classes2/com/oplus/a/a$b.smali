.class Lcom/oplus/a/a$b;
.super Ljava/lang/Thread;
.source "OplusBlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/a/a;

.field private final b:I

.field private final c:J

.field private volatile d:Z

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/oplus/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/oplus/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;

.field private h:Z

.field private i:[B

.field private j:[Landroid/graphics/Rect;

.field private k:I

.field private l:I


# direct methods
.method private constructor <init>(Lcom/oplus/a/a;)V
    .locals 2

    .line 358
    iput-object p1, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x2

    .line 359
    iput p1, p0, Lcom/oplus/a/a$b;->b:I

    const-wide/16 v0, 0x64

    .line 360
    iput-wide v0, p0, Lcom/oplus/a/a$b;->c:J

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/oplus/a/a$b;->d:Z

    .line 363
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/a/a$b;->e:Ljava/util/concurrent/BlockingQueue;

    .line 364
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    .line 365
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/a/a$b;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 367
    iput-boolean p1, p0, Lcom/oplus/a/a$b;->h:Z

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/oplus/a/a$b;->i:[B

    .line 369
    iput-object v0, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    .line 370
    iput p1, p0, Lcom/oplus/a/a$b;->k:I

    .line 371
    iput p1, p0, Lcom/oplus/a/a$b;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/a/a;Lcom/oplus/a/a$1;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/oplus/a/a$b;-><init>(Lcom/oplus/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/a/a$b;)Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Lcom/oplus/a/a$b;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/a/a$b;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/oplus/a/a$b;->e:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/oplus/a/a$c;
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/oplus/a/a$b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 435
    monitor-exit v0

    return-object p0

    .line 438
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 439
    iget-object v1, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_1
    iget-object p0, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/a/a$c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([BIIZ[Landroid/graphics/Rect;)V
    .locals 0

    .line 447
    iput p2, p0, Lcom/oplus/a/a$b;->k:I

    .line 448
    iput p3, p0, Lcom/oplus/a/a$b;->l:I

    .line 449
    iput-boolean p4, p0, Lcom/oplus/a/a$b;->h:Z

    .line 451
    iget-object p2, p0, Lcom/oplus/a/a$b;->i:[B

    if-eqz p2, :cond_0

    array-length p3, p1

    array-length p2, p2

    if-eq p3, p2, :cond_1

    .line 452
    :cond_0
    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/oplus/a/a$b;->i:[B

    :cond_1
    const/4 p2, 0x0

    if-nez p5, :cond_2

    .line 456
    new-array p3, p2, [Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    goto :goto_0

    .line 457
    :cond_2
    iget-object p3, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    if-eqz p3, :cond_3

    array-length p4, p5

    array-length p3, p3

    if-eq p4, p3, :cond_4

    .line 458
    :cond_3
    array-length p3, p5

    new-array p3, p3, [Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    .line 461
    :cond_4
    :goto_0
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object p3, p0, Lcom/oplus/a/a$b;->i:[B

    array-length p4, p1

    invoke-static {p1, p2, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_5

    .line 465
    iget-object p1, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    array-length p3, p5

    invoke-static {p5, p2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 469
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/oplus/a/a$b;->d:Z

    .line 480
    invoke-virtual {p0}, Lcom/oplus/a/a$b;->interrupt()V

    .line 481
    invoke-virtual {p0}, Lcom/oplus/a/a$b;->d()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/oplus/a/a$b;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 486
    iget-object v0, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 487
    iget-object p0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/a/a;->a(Lcom/oplus/a/a;Z)Z

    return-void
.end method

.method public run()V
    .locals 11

    .line 375
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 378
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/a/a$b;->d:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/a/a$b;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 379
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->a(Lcom/oplus/a/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/oplus/a/a$b;->e:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/a/a$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/a/a$b;->d:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/a/a$b;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 392
    iget-object v2, v0, Lcom/oplus/a/a$a;->e:[Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/oplus/a/a$a;->e:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 393
    invoke-static {}, Lcom/oplus/a/a;->f()I

    move-result v1

    invoke-static {}, Lcom/oplus/a/a;->f()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    .line 394
    iget-object v2, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    iget-object v3, v0, Lcom/oplus/a/a$a;->b:[B

    iget v4, v0, Lcom/oplus/a/a$a;->c:I

    iget v5, v0, Lcom/oplus/a/a$a;->d:I

    iget-boolean v7, v0, Lcom/oplus/a/a$a;->f:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v6, v1

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/a/a;->a([BII[BZ[Landroid/graphics/Rect;II)V

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/oplus/a/a$b;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :try_start_1
    iget-object v3, p0, Lcom/oplus/a/a$b;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lcom/oplus/a/a$c;

    iget-object v5, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    iget v0, v0, Lcom/oplus/a/a$a;->a:I

    invoke-direct {v4, v5, v0, v1}, Lcom/oplus/a/a$c;-><init>(Lcom/oplus/a/a;I[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 400
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_3
    :goto_1
    return-void

    .line 402
    :cond_4
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 403
    :try_start_3
    iget-boolean v0, p0, Lcom/oplus/a/a$b;->d:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/a/a$b;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 408
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 410
    :try_start_4
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->b(Lcom/oplus/a/a;)I

    move-result v0

    if-gtz v0, :cond_5

    goto/16 :goto_0

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->c(Lcom/oplus/a/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {}, Lcom/oplus/a/a;->f()I

    move-result v1

    invoke-static {}, Lcom/oplus/a/a;->f()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/a/a;->a(Lcom/oplus/a/a;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->c(Lcom/oplus/a/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 419
    iget-object v1, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    iget-object v2, p0, Lcom/oplus/a/a$b;->i:[B

    iget v3, p0, Lcom/oplus/a/a$b;->k:I

    iget v4, p0, Lcom/oplus/a/a$b;->l:I

    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->c(Lcom/oplus/a/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-boolean v6, p0, Lcom/oplus/a/a$b;->h:Z

    iget-object v7, p0, Lcom/oplus/a/a$b;->j:[Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/oplus/a/a;->a([BII[BZ[Landroid/graphics/Rect;II)V

    .line 422
    iget-object v0, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v0}, Lcom/oplus/a/a;->d(Lcom/oplus/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 423
    :try_start_5
    iget-object v1, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    iget-object v2, p0, Lcom/oplus/a/a$b;->a:Lcom/oplus/a/a;

    invoke-static {v2}, Lcom/oplus/a/a;->c(Lcom/oplus/a/a;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/a/a;->a(Lcom/oplus/a/a;[B)[B

    .line 424
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 406
    :cond_7
    :try_start_7
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    .line 408
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_8
    return-void
.end method
