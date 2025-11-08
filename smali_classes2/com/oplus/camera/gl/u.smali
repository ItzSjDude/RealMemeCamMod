.class public Lcom/oplus/camera/gl/u;
.super Lcom/oplus/camera/gl/q;
.source "TeleSmallPreviewGLSurfaceView.java"

# interfaces
.implements Lcom/oplus/camera/gl/n;
.implements Lcom/oplus/camera/gl/q$m;


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:J

.field private E:I

.field private F:I

.field private G:F

.field private H:I

.field private I:I

.field private J:Landroid/content/Context;

.field private K:Z

.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oplus/camera/gl/l;

.field private f:Lcom/oplus/camera/gl/l;

.field private g:Lcom/oplus/camera/gl/l;

.field private h:Lcom/oplus/camera/gl/l;

.field private i:Ljavax/microedition/khronos/opengles/GL11;

.field private j:Lcom/oplus/camera/gl/h;

.field private k:Lcom/oplus/camera/gl/g;

.field private l:J

.field private m:[F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/animation/AnimatorSet;

.field private v:Landroid/view/animation/Interpolator;

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/gl/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->J:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/gl/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    .line 44
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->c:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->h:Lcom/oplus/camera/gl/l;

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->i:Ljavax/microedition/khronos/opengles/GL11;

    .line 53
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->l:J

    const/16 p2, 0x10

    .line 56
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/oplus/camera/gl/u;->m:[F

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->n:Z

    .line 58
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->o:Z

    .line 59
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->p:Z

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, p0, Lcom/oplus/camera/gl/u;->q:Z

    .line 61
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->r:Z

    .line 62
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->s:Z

    .line 63
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->t:Z

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    .line 65
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->v:Landroid/view/animation/Interpolator;

    const-wide v2, 0x7fffffffffffffffL

    .line 66
    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->w:J

    .line 67
    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->x:J

    .line 68
    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->y:J

    .line 69
    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->z:J

    const/4 v2, 0x0

    .line 70
    iput v2, p0, Lcom/oplus/camera/gl/u;->A:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    iput v3, p0, Lcom/oplus/camera/gl/u;->B:F

    .line 72
    iput p2, p0, Lcom/oplus/camera/gl/u;->C:I

    .line 73
    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->D:J

    .line 74
    iput p2, p0, Lcom/oplus/camera/gl/u;->E:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/gl/u;->F:I

    .line 76
    iput v2, p0, Lcom/oplus/camera/gl/u;->G:F

    .line 77
    iput p2, p0, Lcom/oplus/camera/gl/u;->H:I

    .line 78
    iput p2, p0, Lcom/oplus/camera/gl/u;->I:I

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->J:Landroid/content/Context;

    .line 80
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->K:Z

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;IIII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    .line 332
    iget-object v1, v0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v2, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 334
    iget-object v2, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v11, v2

    .line 336
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v1, 0x0

    if-eqz v11, :cond_2

    .line 338
    iget-wide v3, v0, Lcom/oplus/camera/gl/u;->l:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 339
    iget-object v3, v0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    :try_start_1
    iget-object v4, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 341
    iget-object v4, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_1
    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->close()V

    .line 345
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 348
    :cond_2
    :goto_2
    iget-wide v3, v0, Lcom/oplus/camera/gl/u;->l:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    if-eqz v11, :cond_5

    const/4 v1, 0x2

    .line 349
    invoke-interface {v8, v1}, Lcom/oplus/camera/gl/h;->a(I)V

    .line 351
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->d()I

    move-result v12

    .line 352
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->e()I

    move-result v13

    .line 353
    invoke-interface {v8, v9, v10}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 354
    div-int/lit8 v1, v9, 0x2

    add-int v14, p2, v1

    .line 355
    div-int/lit8 v1, v10, 0x2

    add-int v15, p3, v1

    int-to-float v7, v14

    int-to-float v6, v15

    .line 356
    invoke-interface {v8, v7, v6}, Lcom/oplus/camera/gl/h;->a(FF)V

    .line 357
    iget-boolean v1, v0, Lcom/oplus/camera/gl/u;->K:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-interface {v8, v1, v2, v3}, Lcom/oplus/camera/gl/h;->a(FFF)V

    neg-int v1, v14

    int-to-float v1, v1

    neg-int v2, v15

    int-to-float v2, v2

    .line 358
    invoke-interface {v8, v1, v2}, Lcom/oplus/camera/gl/h;->a(FF)V

    const v1, 0x8d65

    .line 360
    iget-object v2, v0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/g;->e()I

    move-result v2

    iget-wide v3, v0, Lcom/oplus/camera/gl/u;->l:J

    invoke-static {v11, v1, v2, v3, v4}, Lcom/oplus/camera/jni/PreviewShow;->process(Landroid/hardware/HardwareBuffer;IIJ)V

    .line 361
    iget-object v2, v0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    iget-object v3, v0, Lcom/oplus/camera/gl/u;->m:[F

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v16, v6

    move/from16 v6, p4

    move/from16 v17, v7

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 364
    iget-object v1, v0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/l;->b()F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v18, v1, v7

    const/4 v3, 0x0

    int-to-float v10, v10

    .line 365
    iget-object v6, v0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v4, v18

    move v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    int-to-float v9, v9

    sub-float v4, v9, v18

    .line 366
    iget-object v6, v0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    move v2, v4

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    mul-float v19, v18, v7

    sub-float v20, v9, v19

    .line 367
    iget-object v6, v0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    sub-float v5, v10, v18

    .line 369
    iget-object v6, v0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    move v3, v5

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 374
    iget-object v1, v0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/l;->b()F

    move-result v1

    div-float v18, v1, v7

    .line 375
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    sub-int v2, v14, v1

    int-to-float v2, v2

    sub-float v2, v2, v18

    iget v3, v0, Lcom/oplus/camera/gl/u;->I:I

    sub-int v4, v15, v3

    int-to-float v4, v4

    mul-float v7, v7, v18

    sub-float/2addr v4, v7

    sub-int v1, v14, v1

    int-to-float v1, v1

    sub-float v5, v1, v18

    add-int/2addr v3, v15

    int-to-float v1, v3

    add-float v6, v1, v7

    iget-object v3, v0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move-object/from16 v19, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v19

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 377
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    add-int v2, v14, v1

    int-to-float v2, v2

    add-float v2, v2, v18

    iget v3, v0, Lcom/oplus/camera/gl/u;->I:I

    sub-int v4, v15, v3

    int-to-float v4, v4

    sub-float/2addr v4, v7

    add-int/2addr v1, v14

    int-to-float v1, v1

    add-float v5, v1, v18

    add-int/2addr v3, v15

    int-to-float v1, v3

    add-float v6, v1, v7

    iget-object v7, v0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 379
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    sub-int v2, v14, v1

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/gl/u;->I:I

    add-int v4, v15, v3

    int-to-float v4, v4

    add-float v4, v4, v18

    add-int/2addr v1, v14

    int-to-float v5, v1

    add-int/2addr v3, v15

    int-to-float v1, v3

    add-float v6, v1, v18

    iget-object v7, v0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 381
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    sub-int v2, v14, v1

    int-to-float v2, v2

    iget v3, v0, Lcom/oplus/camera/gl/u;->I:I

    sub-int v4, v15, v3

    int-to-float v4, v4

    sub-float v4, v4, v18

    add-int/2addr v1, v14

    int-to-float v5, v1

    sub-int v1, v15, v3

    int-to-float v1, v1

    sub-float v6, v1, v18

    iget-object v7, v0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    const/4 v2, 0x0

    .line 385
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    sub-int v1, v14, v1

    int-to-float v4, v1

    iget-object v6, v0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v5, v16

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 386
    iget v1, v0, Lcom/oplus/camera/gl/u;->H:I

    add-int/2addr v14, v1

    int-to-float v2, v14

    iget-object v6, v0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move v4, v9

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    const/4 v3, 0x0

    .line 387
    iget v1, v0, Lcom/oplus/camera/gl/u;->I:I

    sub-int v1, v15, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v4, v17

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 388
    iget v1, v0, Lcom/oplus/camera/gl/u;->I:I

    add-int/2addr v15, v1

    int-to-float v3, v15

    iget-object v6, v0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    move-object/from16 v1, p1

    move v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/gl/h;->a(FFFFLcom/oplus/camera/gl/l;)V

    .line 390
    invoke-interface {v8, v12, v13}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 391
    invoke-interface/range {p1 .. p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 393
    iget-object v1, v0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_2
    iget-object v2, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 395
    iget-object v0, v0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 397
    :cond_4
    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->close()V

    .line 399
    :goto_4
    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_5
    return-void

    :catchall_2
    move-exception v0

    .line 336
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 281
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->g()V

    const/4 p1, 0x0

    .line 283
    iput-boolean p1, p0, Lcom/oplus/camera/gl/u;->p:Z

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/gl/h;->a(I)V

    const/4 p1, 0x4

    .line 286
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    invoke-interface {v0, p1}, Lcom/oplus/camera/gl/h;->a([F)V

    .line 290
    iget-boolean p1, p0, Lcom/oplus/camera/gl/u;->t:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    iget v0, p0, Lcom/oplus/camera/gl/u;->A:F

    invoke-interface {p1, v0}, Lcom/oplus/camera/gl/h;->a(F)V

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/oplus/camera/gl/u;->E:I

    iget v6, p0, Lcom/oplus/camera/gl/u;->F:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/gl/u;->a(Lcom/oplus/camera/gl/h;IIII)V

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->f()V

    .line 296
    invoke-direct {p0}, Lcom/oplus/camera/gl/u;->n()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private n()V
    .locals 12

    .line 300
    iget-boolean v0, p0, Lcom/oplus/camera/gl/u;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/oplus/camera/gl/b;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->w:J

    .line 302
    iput-boolean v1, p0, Lcom/oplus/camera/gl/u;->t:Z

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/u;->s:Z

    if-eqz v0, :cond_4

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->y:J

    const-wide/16 v2, 0x0

    .line 309
    iget-wide v4, p0, Lcom/oplus/camera/gl/u;->x:J

    cmp-long v0, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 310
    iget-wide v6, p0, Lcom/oplus/camera/gl/u;->y:J

    iget-wide v8, p0, Lcom/oplus/camera/gl/u;->w:J

    iget-wide v10, p0, Lcom/oplus/camera/gl/u;->z:J

    add-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-float v0, v6

    long-to-float v3, v4

    div-float/2addr v0, v3

    goto :goto_0

    .line 314
    :cond_1
    iget-wide v3, p0, Lcom/oplus/camera/gl/u;->y:J

    iget-wide v5, p0, Lcom/oplus/camera/gl/u;->w:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 318
    iput-boolean v1, p0, Lcom/oplus/camera/gl/u;->s:Z

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    iget v1, p0, Lcom/oplus/camera/gl/u;->B:F

    invoke-interface {v0, v1}, Lcom/oplus/camera/gl/h;->a(F)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    goto :goto_1

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->v:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 323
    iget v1, p0, Lcom/oplus/camera/gl/u;->A:F

    .line 324
    iget-object v2, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    iget p0, p0, Lcom/oplus/camera/gl/u;->B:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    invoke-interface {v2, v1}, Lcom/oplus/camera/gl/h;->a(F)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/HardwareBuffer;)I
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string p1, "addFrame, imageList is null"

    .line 137
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    monitor-exit v0

    return v2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xf

    if-le v1, v3, :cond_1

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()V
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/oplus/camera/gl/u;->o:Z

    if-eqz v0, :cond_0

    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string v0, "requestRender, Activity.finish(), so return"

    .line 476
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/u;->p:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->p:Z

    .line 486
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->a()V

    return-void
.end method

.method public a(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 168
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    .line 169
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->x:J

    .line 170
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->z:J

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 171
    :goto_0
    iput v1, p0, Lcom/oplus/camera/gl/u;->A:F

    if-nez p2, :cond_1

    move p1, v0

    .line 172
    :cond_1
    iput p1, p0, Lcom/oplus/camera/gl/u;->B:F

    :cond_2
    if-eqz p3, :cond_3

    .line 176
    iput-object p3, p0, Lcom/oplus/camera/gl/u;->v:Landroid/view/animation/Interpolator;

    :cond_3
    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string p1, "setTeleSmallPreviewAnimation"

    .line 179
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/gl/u;->r:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 269
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/u;->b(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    iget-boolean p1, p0, Lcom/oplus/camera/gl/u;->q:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/oplus/camera/gl/u;->q:Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 271
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 272
    throw p1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged, size: "

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleSmallPreviewGLSurfaceView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->i:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/gl/y;->a(Z)V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    if-nez p1, :cond_1

    .line 245
    new-instance p1, Lcom/oplus/camera/gl/g;

    iget-object v0, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    const v2, 0x8d65

    invoke-direct {p1, v0, v2}, Lcom/oplus/camera/gl/g;-><init>(Lcom/oplus/camera/gl/h;I)V

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    :cond_1
    const-wide/16 v2, 0x0

    .line 248
    iget-wide v4, p0, Lcom/oplus/camera/gl/u;->l:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    .line 249
    invoke-static {}, Lcom/oplus/camera/jni/PreviewShow;->init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->l:J

    .line 252
    :cond_2
    iput p2, p0, Lcom/oplus/camera/gl/u;->E:I

    .line 253
    iput p3, p0, Lcom/oplus/camera/gl/u;->F:I

    .line 254
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/gl/h;->a(II)V

    .line 255
    iget p1, p0, Lcom/oplus/camera/gl/u;->E:I

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/gl/u;->G:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/u;->H:I

    .line 256
    iget p1, p0, Lcom/oplus/camera/gl/u;->F:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/u;->I:I

    .line 257
    iput-boolean v1, p0, Lcom/oplus/camera/gl/u;->n:Z

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const-string p2, "TeleSmallPreviewGLSurfaceView"

    const-string v0, "onSurfaceCreated(GL10 gl1, EGLConfig config)"

    .line 197
    invoke-static {p2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 202
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 204
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->i:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLObject has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/gl/u;->i:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->i:Ljavax/microedition/khronos/opengles/GL11;

    .line 212
    new-instance p1, Lcom/oplus/camera/gl/i;

    invoke-direct {p1}, Lcom/oplus/camera/gl/i;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    .line 213
    new-instance p1, Lcom/oplus/camera/gl/g;

    iget-object p2, p0, Lcom/oplus/camera/gl/u;->j:Lcom/oplus/camera/gl/h;

    const v1, 0x8d65

    invoke-direct {p1, p2, v1}, Lcom/oplus/camera/gl/g;-><init>(Lcom/oplus/camera/gl/h;I)V

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    .line 214
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p1, v1, p2, v1}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 216
    invoke-virtual {p1, v0, p2, v0}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 217
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/renderscript/Matrix4f;->rotate(FFFF)V

    .line 218
    invoke-virtual {p1, v0, p2, v0}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 219
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/gl/u;->m:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    iget-boolean p1, p0, Lcom/oplus/camera/gl/u;->s:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 225
    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/u;->setRenderMode(I)V

    :cond_1
    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/oplus/camera/gl/u;->n:Z

    .line 229
    iput-boolean p2, p0, Lcom/oplus/camera/gl/u;->o:Z

    return-void

    :catchall_0
    move-exception p1

    .line 221
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    throw p1
.end method

.method public b()V
    .locals 8

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setEGLContextClientVersion(I)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v1, p0

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/gl/u;->a(IIIIII)V

    .line 96
    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const-string v0, "TeleSmallPreviewGLThread"

    .line 97
    invoke-virtual {p0, p0, v0}, Lcom/oplus/camera/gl/u;->a(Lcom/oplus/camera/gl/q$m;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/oplus/camera/jni/PreviewShow;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/gl/u;->l:J

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/oplus/camera/gl/l;

    invoke-direct {v0}, Lcom/oplus/camera/gl/l;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/u;->h:Lcom/oplus/camera/gl/l;

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->h:Lcom/oplus/camera/gl/l;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setOuterFramePaint(Lcom/oplus/camera/gl/l;)V

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->h:Lcom/oplus/camera/gl/l;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setInnerFramePaint(Lcom/oplus/camera/gl/l;)V

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->h:Lcom/oplus/camera/gl/l;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setLinePaint(Lcom/oplus/camera/gl/l;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->c()V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->o:Z

    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string v0, "onResume"

    .line 408
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 413
    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->m()V

    .line 415
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->d()V

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->n:Z

    .line 418
    iget-wide v0, p0, Lcom/oplus/camera/gl/u;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 419
    invoke-static {v0, v1}, Lcom/oplus/camera/jni/PreviewShow;->release(J)V

    .line 420
    iput-wide v2, p0, Lcom/oplus/camera/gl/u;->l:J

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Lcom/oplus/camera/gl/g;->o()V

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/oplus/camera/gl/u;->k:Lcom/oplus/camera/gl/g;

    :cond_1
    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string v0, "onPause"

    .line 428
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "TeleSmallPreviewGLSurfaceView"

    const-string v1, "removeTeleSmallPreviewImage"

    .line 155
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 159
    monitor-exit v0

    return-void

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->s:Z

    .line 184
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->t:Z

    .line 186
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->u:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 190
    :cond_0
    invoke-static {}, Lcom/oplus/camera/gl/b;->a()V

    const-string p0, "TeleSmallPreviewGLSurfaceView"

    const-string v0, "startTeleSmallPreviewAnimation"

    .line 192
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-super {p0}, Lcom/oplus/camera/gl/q;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/oplus/camera/gl/q;->finalize()V

    .line 460
    throw v0
.end method

.method public getCompensation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 2

    const-string v0, "TeleSmallPreviewGLSurfaceView"

    const-string v1, "unfreeze"

    .line 442
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/oplus/camera/gl/u;->r:Z

    .line 446
    iget-object v0, p0, Lcom/oplus/camera/gl/u;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 447
    iget-object p0, p0, Lcom/oplus/camera/gl/u;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setContentPane(Lcom/oplus/camera/gl/GLView;)V
    .locals 0

    return-void
.end method

.method public setFrameDelta(F)V
    .locals 1

    .line 119
    iput p1, p0, Lcom/oplus/camera/gl/u;->G:F

    .line 120
    iget p1, p0, Lcom/oplus/camera/gl/u;->E:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/camera/gl/u;->G:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/u;->H:I

    .line 121
    iget p1, p0, Lcom/oplus/camera/gl/u;->F:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/gl/u;->I:I

    return-void
.end method

.method public setInnerFramePaint(Lcom/oplus/camera/gl/l;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->f:Lcom/oplus/camera/gl/l;

    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 0

    return-void
.end method

.method public setLinePaint(Lcom/oplus/camera/gl/l;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->g:Lcom/oplus/camera/gl/l;

    return-void
.end method

.method public setOuterFramePaint(Lcom/oplus/camera/gl/l;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oplus/camera/gl/u;->e:Lcom/oplus/camera/gl/l;

    return-void
.end method

.method public setRearMirrorEnable(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/oplus/camera/gl/u;->K:Z

    return-void
.end method

.method public setTeleSmallPreviewRenderModeDirty(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setRenderMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setRenderMode(I)V

    :goto_0
    return-void
.end method
