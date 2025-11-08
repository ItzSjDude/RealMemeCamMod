.class Lcom/oplus/camera/gl/q$i;
.super Ljava/lang/Thread;
.source "OplusGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Ljava/lang/Runnable;

.field private v:Lcom/oplus/camera/gl/q$h;

.field private w:Z

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/gl/q;",
            ">;)V"
        }
    .end annotation

    .line 1233
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 1201
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->a:Z

    .line 1202
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->b:Z

    .line 1203
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->c:Z

    .line 1204
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->d:Z

    .line 1205
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->e:Z

    .line 1206
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->f:Z

    .line 1207
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->g:Z

    .line 1208
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->h:Z

    .line 1209
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->i:Z

    .line 1210
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->j:Z

    .line 1211
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->k:Z

    .line 1212
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->l:Z

    .line 1213
    iput v0, p0, Lcom/oplus/camera/gl/q$i;->m:I

    .line 1214
    iput v0, p0, Lcom/oplus/camera/gl/q$i;->n:I

    .line 1215
    iput v0, p0, Lcom/oplus/camera/gl/q$i;->o:I

    .line 1216
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    .line 1217
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->q:Z

    .line 1218
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->r:Z

    .line 1219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/gl/q$i;->s:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1220
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->t:Z

    const/4 v2, 0x0

    .line 1221
    iput-object v2, p0, Lcom/oplus/camera/gl/q$i;->u:Ljava/lang/Runnable;

    .line 1223
    iput-object v2, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    .line 1224
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->w:Z

    .line 1230
    iput-object v2, p0, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1234
    iput v0, p0, Lcom/oplus/camera/gl/q$i;->m:I

    .line 1235
    iput v0, p0, Lcom/oplus/camera/gl/q$i;->n:I

    .line 1236
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    .line 1237
    iput v1, p0, Lcom/oplus/camera/gl/q$i;->o:I

    .line 1238
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->q:Z

    .line 1239
    iput-object p1, p0, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q$i;)Lcom/oplus/camera/gl/q$h;
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    return-object p0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLSurface;I)V
    .locals 2

    .line 1668
    iget-object v0, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/gl/q$h;->b(Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1669
    iget-object v0, p0, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    .line 1671
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->k(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/r;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1672
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->k(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/r;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/oplus/camera/gl/r;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1675
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/q$h;->a(Ljavax/microedition/khronos/egl/EGLSurface;)I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/gl/q$i;Z)Z
    .locals 0

    .line 1196
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->c:Z

    return p1
.end method

.method private i()V
    .locals 1

    .line 1264
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1265
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->j:Z

    .line 1266
    iget-object p0, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$h;->d()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "GLSurfaceView"

    const-string v1, "stopEglContextLocked"

    .line 1271
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$h;->e()V

    const/4 v0, 0x0

    .line 1275
    iput-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->i:Z

    .line 1276
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/gl/q$j;->b(Lcom/oplus/camera/gl/q$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1281
    new-instance v0, Lcom/oplus/camera/gl/q$h;

    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/oplus/camera/gl/q$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    const/4 v0, 0x0

    .line 1282
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->i:Z

    .line 1283
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    .line 1285
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    .line 1286
    :try_start_0
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->q:Z

    .line 1287
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v9, v7

    move v10, v9

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v12, 0x0

    .line 1305
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v16

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1307
    :goto_2
    :try_start_2
    iget-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->b:Z

    if-eqz v2, :cond_0

    .line 1308
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 1660
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    .line 1661
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->j()V

    .line 1663
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1311
    :cond_0
    :try_start_4
    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1312
    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->s:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v12, v2

    goto/16 :goto_9

    .line 1319
    :cond_1
    iget-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->e:Z

    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->d:Z

    if-eq v2, v0, :cond_2

    .line 1320
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->d:Z

    .line 1321
    iget-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->d:Z

    iput-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->e:Z

    .line 1322
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1330
    :goto_3
    iget-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->l:Z

    if-eqz v2, :cond_3

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->j()V

    const/4 v2, 0x0

    .line 1337
    iput-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->l:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1343
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1349
    iget-boolean v2, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    if-eqz v2, :cond_5

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    :cond_5
    if-eqz v0, :cond_7

    .line 1358
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_7

    .line 1359
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    .line 1360
    :cond_6
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->f(Lcom/oplus/camera/gl/q;)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_7

    .line 1363
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->j()V

    .line 1372
    :cond_7
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->f:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->h:Z

    if-nez v0, :cond_9

    .line 1377
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    if-eqz v0, :cond_8

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    :cond_8
    const/4 v0, 0x1

    .line 1381
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->h:Z

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->g:Z

    .line 1383
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1387
    :cond_9
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->f:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1392
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->h:Z

    .line 1393
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->q:Z

    const/4 v0, 0x1

    .line 1403
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->r:Z

    .line 1404
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    .line 1407
    :cond_b
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 1408
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->u:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 1409
    iput-object v2, v1, Lcom/oplus/camera/gl/q$i;->u:Ljava/lang/Runnable;

    move-object v2, v0

    goto :goto_5

    :cond_c
    move-object v2, v6

    .line 1413
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->l()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1415
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-nez v0, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_6

    .line 1420
    :cond_d
    :try_start_5
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$h;->a()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const/4 v0, 0x1

    .line 1426
    :try_start_6
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->i:Z

    .line 1428
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v13, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1422
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/camera/gl/q$j;->b(Lcom/oplus/camera/gl/q$i;)V

    .line 1423
    throw v0

    .line 1432
    :cond_e
    :goto_6
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    const/4 v0, 0x1

    const/4 v7, 0x1

    const/4 v14, 0x1

    goto :goto_7

    :cond_f
    move v0, v9

    .line 1439
    :goto_7
    iget-boolean v6, v1, Lcom/oplus/camera/gl/q$i;->j:Z

    if-eqz v6, :cond_24

    .line 1440
    iget-boolean v6, v1, Lcom/oplus/camera/gl/q$i;->t:Z

    if-eqz v6, :cond_10

    .line 1442
    iget v10, v1, Lcom/oplus/camera/gl/q$i;->m:I

    .line 1443
    iget v11, v1, Lcom/oplus/camera/gl/q$i;->n:I

    const/4 v0, 0x1

    .line 1444
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->q:Z

    const/4 v0, 0x0

    .line 1453
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->t:Z

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    .line 1456
    :goto_8
    iput-boolean v6, v1, Lcom/oplus/camera/gl/q$i;->p:Z

    .line 1457
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1459
    iget-boolean v6, v1, Lcom/oplus/camera/gl/q$i;->q:Z

    if-eqz v6, :cond_11

    move v9, v0

    move-object v6, v2

    const/4 v15, 0x1

    goto :goto_9

    :cond_11
    move v9, v0

    move-object v6, v2

    .line 1488
    :goto_9
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v12, :cond_12

    .line 1491
    :try_start_7
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v14, :cond_14

    .line 1501
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$h;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1502
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    const/4 v0, 0x1

    .line 1503
    :try_start_8
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->k:Z

    .line 1504
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1505
    monitor-exit v2

    const/4 v14, 0x0

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    .line 1507
    :cond_13
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const/4 v0, 0x1

    .line 1508
    :try_start_a
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->k:Z

    .line 1509
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->g:Z

    .line 1510
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1511
    monitor-exit v2

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_14
    :goto_a
    if-eqz v7, :cond_15

    .line 1520
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->b(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    const/4 v7, 0x0

    :cond_15
    if-eqz v13, :cond_17

    .line 1529
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v0, :cond_16

    :try_start_c
    const-string v2, "onSurfaceCreated"

    .line 1533
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1535
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->g(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$m;

    move-result-object v0

    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v2}, Lcom/oplus/camera/gl/q$h;->c(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Lcom/oplus/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    const-string v0, "onSurfaceCreated"

    .line 1537
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto :goto_b

    :catchall_3
    move-exception v0

    const-string v2, "onSurfaceCreated"

    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 1538
    throw v0

    :cond_16
    :goto_b
    const/4 v13, 0x0

    :cond_17
    if-eqz v9, :cond_19

    .line 1549
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v0, :cond_18

    :try_start_e
    const-string v2, "onSurfaceChanged"

    .line 1553
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1555
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->g(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$m;

    move-result-object v0

    invoke-interface {v0, v8, v10, v11}, Lcom/oplus/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    const-string v0, "onSurfaceChanged"

    .line 1557
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto :goto_c

    :catchall_4
    move-exception v0

    const-string v2, "onSurfaceChanged"

    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 1558
    throw v0

    :cond_18
    :goto_c
    const/4 v9, 0x0

    .line 1569
    :cond_19
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v2}, Lcom/oplus/camera/gl/q$h;->a(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/q$h;->b(Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1570
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v0, :cond_1b

    :try_start_10
    const-string v2, "onDrawFrame"

    .line 1574
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1576
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->g(Lcom/oplus/camera/gl/q;)Lcom/oplus/camera/gl/q$m;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/oplus/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v6, :cond_1a

    .line 1579
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/4 v6, 0x0

    :cond_1a
    :try_start_11
    const-string v0, "onDrawFrame"

    .line 1583
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto :goto_d

    :catchall_5
    move-exception v0

    const-string v2, "onDrawFrame"

    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 1584
    throw v0

    .line 1589
    :cond_1b
    :goto_d
    iget-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->w:Z

    const/16 v2, 0x3000

    if-nez v0, :cond_1c

    .line 1590
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/q$h;->c()I

    move-result v0

    goto :goto_e

    :cond_1c
    move v0, v2

    :goto_e
    if-eq v0, v2, :cond_1e

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1d

    const-string v2, "GLSurfaceView"

    move/from16 v19, v3

    const-string v3, "eglSwapBuffers"

    .line 1609
    invoke-static {v2, v3, v0}, Lcom/oplus/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1611
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    const/4 v0, 0x1

    .line 1612
    :try_start_12
    iput-boolean v0, v1, Lcom/oplus/camera/gl/q$i;->g:Z

    .line 1613
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1614
    monitor-exit v2

    goto :goto_f

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0

    :cond_1d
    const/4 v3, 0x1

    goto :goto_10

    :cond_1e
    move/from16 v19, v3

    :goto_f
    move/from16 v3, v19

    .line 1620
    :goto_10
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->h(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1621
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->h(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1622
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->i(Lcom/oplus/camera/gl/q;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1623
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->d(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1624
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v2, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    move/from16 v16, v3

    iget-object v3, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1625
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/q;

    invoke-static {v3}, Lcom/oplus/camera/gl/q;->h(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v3

    .line 1624
    invoke-virtual {v2, v3}, Lcom/oplus/camera/gl/q$h;->a(Landroid/view/Surface;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/gl/q$h;->a(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_11

    :cond_1f
    move/from16 v16, v3

    :goto_11
    const-string v0, "GLSurfaceView"

    .line 1628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guardedRun, OutputSurfaceDraw swap start tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->d(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v8, v0, v2}, Lcom/oplus/camera/gl/q$i;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLSurface;I)V

    const-string v0, "GLSurfaceView"

    .line 1632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guardedRun, OutputSurfaceDraw swap end tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_20
    move/from16 v16, v3

    move/from16 v19, v4

    move/from16 v18, v5

    const/4 v2, 0x0

    .line 1634
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v3, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v3}, Lcom/oplus/camera/gl/q$h;->d(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/gl/q$h;->b(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1635
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/oplus/camera/gl/q$h;->a(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1638
    :goto_12
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1639
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1640
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->e(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1641
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v3, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v4, v1, Lcom/oplus/camera/gl/q$i;->x:Ljava/lang/ref/WeakReference;

    .line 1642
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/q;

    invoke-static {v4}, Lcom/oplus/camera/gl/q;->j(Lcom/oplus/camera/gl/q;)Landroid/view/Surface;

    move-result-object v4

    .line 1641
    invoke-virtual {v3, v4}, Lcom/oplus/camera/gl/q$h;->a(Landroid/view/Surface;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/gl/q$h;->c(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1645
    :cond_21
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v0}, Lcom/oplus/camera/gl/q$h;->e(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v8, v0, v3}, Lcom/oplus/camera/gl/q$i;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLSurface;I)V

    const/4 v4, 0x0

    goto :goto_13

    :cond_22
    const/4 v3, 0x1

    .line 1647
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    iget-object v4, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    invoke-static {v4}, Lcom/oplus/camera/gl/q$h;->e(Lcom/oplus/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/camera/gl/q$h;->b(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1648
    iget-object v0, v1, Lcom/oplus/camera/gl/q$i;->v:Lcom/oplus/camera/gl/q$h;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/oplus/camera/gl/q$h;->c(Lcom/oplus/camera/gl/q$h;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :goto_13
    if-eqz v15, :cond_23

    move v15, v2

    goto :goto_14

    :cond_23
    move/from16 v3, v19

    :goto_14
    move v0, v2

    move v4, v3

    move/from16 v3, v16

    move/from16 v5, v18

    goto/16 :goto_1

    :cond_24
    const/4 v6, 0x0

    const/16 v17, 0x0

    move v9, v0

    goto :goto_15

    :cond_25
    const/4 v6, 0x0

    const/16 v17, 0x0

    if-eqz v2, :cond_26

    :try_start_14
    const-string v0, "GLSurfaceView"

    const-string v6, "guardedRun, Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1467
    invoke-static {v0, v6}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    goto :goto_16

    :cond_26
    :goto_15
    move-object v6, v2

    .line 1486
    :goto_16
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move/from16 v0, v17

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    .line 1488
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_8
    move-exception v0

    .line 1660
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v3

    monitor-enter v3

    .line 1661
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->i()V

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/gl/q$i;->j()V

    .line 1663
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 1664
    throw v0

    :catchall_9
    move-exception v0

    .line 1663
    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v0

    :catchall_a
    move-exception v0

    .line 1287
    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v0
.end method

.method private l()Z
    .locals 2

    .line 1683
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/gl/q$i;->m:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/gl/q$i;->n:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/oplus/camera/gl/q$i;->o:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1696
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1697
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/gl/q$i;->o:I

    .line 1698
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1699
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1693
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(II)V
    .locals 1

    .line 1823
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1824
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/gl/q$i;->m:I

    .line 1825
    iput p2, p0, Lcom/oplus/camera/gl/q$i;->n:I

    const/4 p1, 0x1

    .line 1826
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->t:Z

    .line 1827
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    const/4 p1, 0x0

    .line 1828
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->r:Z

    .line 1833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1834
    monitor-exit v0

    return-void

    .line 1837
    :cond_0
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1840
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->e:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->r:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/q$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1846
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1848
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1851
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1888
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1889
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/gl/q$i;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1891
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1885
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Z)V
    .locals 0

    .line 1895
    iput-boolean p1, p0, Lcom/oplus/camera/gl/q$i;->w:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1679
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/gl/q$i;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 1

    .line 1703
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1704
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/gl/q$i;->o:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 2

    .line 1709
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1710
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    .line 1711
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1712
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 2

    .line 1734
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1739
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->f:Z

    const/4 v1, 0x0

    .line 1740
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->k:Z

    .line 1741
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1743
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->k:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1745
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1747
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1750
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 2

    .line 1754
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1759
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->f:Z

    .line 1760
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1762
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1764
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1766
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1769
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public f()V
    .locals 3

    .line 1773
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1778
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->d:Z

    .line 1779
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1781
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "GLSurfaceView"

    const-string v2, "onPause, sGLThreadManager.wait"

    .line 1787
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1791
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1794
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public g()V
    .locals 3

    .line 1798
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1803
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->d:Z

    const/4 v2, 0x1

    .line 1804
    iput-boolean v2, p0, Lcom/oplus/camera/gl/q$i;->p:Z

    .line 1805
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->r:Z

    .line 1806
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1808
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1814
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1816
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1819
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public h()V
    .locals 3

    .line 1856
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLSurfaceView"

    const-string v2, "requestExitAndWait"

    .line 1857
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1859
    iput-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->b:Z

    .line 1860
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1862
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/gl/q$i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1864
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1866
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1869
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    .line 1245
    iget-boolean v0, p0, Lcom/oplus/camera/gl/q$i;->a:Z

    if-eqz v0, :cond_0

    .line 1246
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const-string v1, "129"

    invoke-static {v1, v0}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;I)V

    .line 1250
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/gl/q$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1254
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1255
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/camera/gl/q$j;->a(Lcom/oplus/camera/gl/q$i;)V

    .line 1256
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 1254
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    monitor-enter v1

    .line 1255
    :try_start_2
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oplus/camera/gl/q$j;->a(Lcom/oplus/camera/gl/q$i;)V

    .line 1256
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1257
    throw v0

    :catchall_2
    move-exception p0

    .line 1256
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 1254
    :catch_0
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1255
    :try_start_4
    invoke-static {}, Lcom/oplus/camera/gl/q;->l()Lcom/oplus/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/camera/gl/q$j;->a(Lcom/oplus/camera/gl/q$i;)V

    .line 1256
    monitor-exit v0

    :goto_0
    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0
.end method
