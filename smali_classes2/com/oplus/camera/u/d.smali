.class public Lcom/oplus/camera/u/d;
.super Ljava/lang/Object;
.source "SuperTextManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/ui/CameraUIListener;

.field private c:Lcom/oplus/camera/u/a;

.field private d:Lcom/oplus/camera/u/b;

.field private final e:Ljava/lang/Object;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/u/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/u/d;->a:Landroid/app/Activity;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/u/d;->e:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/u/d;->f:Landroid/os/HandlerThread;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/u/d;->h:Z

    .line 46
    new-instance v0, Lcom/oplus/camera/u/d$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/u/d$1;-><init>(Lcom/oplus/camera/u/d;)V

    iput-object v0, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/u/d;->a:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    .line 56
    invoke-static {}, Lcom/oplus/camera/u/c;->d()Lcom/oplus/camera/u/c;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    .line 57
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SuperTextManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/camera/u/d;->f:Landroid/os/HandlerThread;

    .line 58
    iget-object p1, p0, Lcom/oplus/camera/u/d;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance p1, Lcom/oplus/camera/u/d$2;

    iget-object p2, p0, Lcom/oplus/camera/u/d;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/u/d$2;-><init>(Lcom/oplus/camera/u/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .line 325
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    .line 326
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcDiff, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", p1: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", p2: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SuperTextManager"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private a(IIIJ)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oplus/camera/u/b;->a(IIIZ)Lcom/oplus/camera/u/a;

    move-result-object p1

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->c()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p2, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/oplus/camera/u/d;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/oplus/camera/u/d;->a(Lcom/oplus/camera/u/a;)V

    .line 184
    iget-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/CameraUIListener;->a(Lcom/oplus/camera/u/a;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->a(Lcom/oplus/camera/u/a;)V

    .line 189
    :goto_0
    invoke-direct {p0, p4, p5, p1}, Lcom/oplus/camera/u/d;->a(JLcom/oplus/camera/u/a;)V

    :cond_1
    return-void
.end method

.method private a(JLcom/oplus/camera/u/a;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/oplus/camera/u/d;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 171
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    iget-object p0, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/oplus/camera/u/a;)V
    .locals 11

    if-eqz p1, :cond_8

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    if-eqz v0, :cond_8

    .line 268
    invoke-virtual {p1}, Lcom/oplus/camera/u/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    .line 269
    invoke-virtual {v0}, Lcom/oplus/camera/u/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/u/a;->b()[Landroid/graphics/PointF;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    invoke-virtual {v1}, Lcom/oplus/camera/u/a;->b()[Landroid/graphics/PointF;

    move-result-object v1

    .line 280
    array-length v2, v1

    new-array v2, v2, [Z

    const/4 v3, 0x0

    move v4, v3

    .line 283
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 284
    aput-boolean v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    move v5, v4

    move v6, v5

    .line 287
    :goto_1
    array-length v7, v0

    const/4 v8, 0x1

    if-ge v4, v7, :cond_5

    move v7, v3

    .line 290
    :goto_2
    array-length v9, v1

    if-ge v7, v9, :cond_3

    .line 291
    aget-object v9, v0, v4

    aget-object v10, v1, v7

    invoke-direct {p0, v9, v10}, Lcom/oplus/camera/u/d;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v9

    const v10, 0x38d1b717    # 1.0E-4f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 294
    aget-object v9, v1, v7

    aput-object v9, v0, v4

    add-int/lit8 v5, v5, 0x1

    .line 296
    aput-boolean v8, v2, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_3
    if-nez v8, :cond_4

    move v6, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 307
    :cond_5
    array-length v4, v0

    sub-int/2addr v4, v8

    if-ne v5, v4, :cond_7

    .line 308
    :goto_4
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 309
    aget-boolean v4, v2, v3

    if-nez v4, :cond_6

    .line 310
    aget-object v2, v0, v6

    aget-object v4, v1, v3

    invoke-direct {p0, v2, v4}, Lcom/oplus/camera/u/d;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    .line 311
    aget-object v1, v1, v3

    aput-object v1, v0, v6

    const-string v0, "SuperTextManager"

    const-string v1, "optimisedResult, 3 points are reusable then reuse the fourth one"

    .line 313
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 321
    :cond_7
    :goto_5
    iput-object p1, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    return-void

    .line 270
    :cond_8
    :goto_6
    iput-object p1, p0, Lcom/oplus/camera/u/d;->c:Lcom/oplus/camera/u/a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/u/d;IIIJ)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/u/d;->a(IIIJ)V

    return-void
.end method

.method private g()Z
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/u/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 341
    monitor-exit v0

    return v3

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/u/a;

    if-eqz v4, :cond_1

    .line 347
    invoke-virtual {v4}, Lcom/oplus/camera/u/a;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-lt v2, p0, :cond_3

    move v1, v3

    .line 352
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-interface {p0}, Lcom/oplus/camera/u/b;->b()I

    move-result p0

    return p0
.end method

.method public a(J)Lcom/oplus/camera/u/a;
    .locals 13

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/u/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 127
    new-instance p0, Lcom/oplus/camera/u/a;

    invoke-direct {p0}, Lcom/oplus/camera/u/a;-><init>()V

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    .line 137
    iget-object v8, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 138
    iget-object v11, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oplus/camera/u/a;

    if-eqz v11, :cond_1

    .line 140
    invoke-virtual {v11}, Lcom/oplus/camera/u/a;->c()Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v9

    move-object v7, v11

    goto :goto_0

    :cond_2
    const-string v8, "SuperTextManager"

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProperDetectResultByTimestamp, time diff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v3

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", availableCount: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", availableResult: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v2, v1, :cond_3

    if-eqz v7, :cond_3

    .line 153
    invoke-virtual {v7}, Lcom/oplus/camera/u/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    cmp-long p1, p1, v5

    if-gtz p1, :cond_3

    .line 155
    monitor-exit v0

    return-object v7

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->d()V

    .line 158
    new-instance p0, Lcom/oplus/camera/u/a;

    invoke-direct {p0}, Lcom/oplus/camera/u/a;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-interface {v0}, Lcom/oplus/camera/u/b;->b()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-interface {v0, p1}, Lcom/oplus/camera/u/b;->a(I)V

    .line 95
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->d()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-interface {p0, p1}, Lcom/oplus/camera/u/b;->b(Z)V

    return-void
.end method

.method public a([BIIJ)V
    .locals 3

    .line 195
    iget-boolean v0, p0, Lcom/oplus/camera/u/d;->h:Z

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 197
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "timestamp"

    .line 198
    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p4, 0x66

    .line 199
    iput p4, v0, Landroid/os/Message;->what:I

    .line 200
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 202
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(IIIIJ)Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/camera/u/b;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x65

    .line 233
    iput v0, p1, Landroid/os/Message;->what:I

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "width"

    .line 235
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "height"

    .line 236
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "orientation"

    .line 237
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "timestamp"

    .line 238
    invoke-virtual {v0, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "SuperTextManager"

    const-string p1, "setOesTextureId, sendMsg"

    .line 242
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, mSuperTextEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperTextManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/oplus/camera/u/d;->a(Z)V

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    const-string v0, "com.oplus.feature.super.text.cpu.process"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/oplus/camera/u/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b([BIIJ)V
    .locals 2

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/oplus/camera/u/d;->h:Z

    .line 211
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->a()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oplus/camera/u/b;->a([BIII)Lcom/oplus/camera/u/a;

    move-result-object p1

    .line 215
    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/oplus/camera/u/d;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/oplus/camera/u/d;->a(Lcom/oplus/camera/u/a;)V

    .line 218
    iget-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/CameraUIListener;->a(Lcom/oplus/camera/u/a;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/u/d;->b:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->a(Lcom/oplus/camera/u/a;)V

    .line 223
    :goto_0
    invoke-direct {p0, p4, p5, p1}, Lcom/oplus/camera/u/d;->a(JLcom/oplus/camera/u/a;)V

    :cond_1
    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lcom/oplus/camera/u/d;->h:Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0}, Lcom/oplus/camera/u/b;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/u/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/u/d;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/u/d;->d:Lcom/oplus/camera/u/b;

    invoke-interface {p0}, Lcom/oplus/camera/u/b;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/u/d;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    iput-object v1, p0, Lcom/oplus/camera/u/d;->g:Landroid/os/Handler;

    :cond_1
    return-void
.end method
