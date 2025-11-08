.class public Lcom/heytap/accessory/b/a/e;
.super Ljava/lang/Object;
.source "BufferPoolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/b/a/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static final b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/heytap/accessory/b/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/heytap/accessory/b/a/a;
    .locals 1

    .line 241
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 244
    invoke-static {p0, v0}, Lcom/heytap/accessory/b/a/e;->a(IZ)Lcom/heytap/accessory/b/a/a;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(IIZ)Lcom/heytap/accessory/b/a/a;
    .locals 5

    .line 306
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->e(I)Lcom/heytap/accessory/b/a/e$a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 309
    monitor-exit v0

    return-object v2

    .line 311
    :cond_0
    invoke-virtual {v1}, Lcom/heytap/accessory/b/a/e$a;->b()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 312
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p2, :cond_3

    if-ne p0, p1, :cond_1

    .line 315
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_2

    .line 319
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_1

    :cond_2
    move-object p0, v2

    goto :goto_1

    .line 322
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_1
    if-eqz p0, :cond_4

    .line 326
    sget p2, Lcom/heytap/accessory/b/a/e;->i:I

    array-length v2, p0

    sub-int/2addr p2, v2

    sput p2, Lcom/heytap/accessory/b/a/e;->i:I

    .line 327
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e$a;->a(Lcom/heytap/accessory/b/a/e$a;)V

    .line 328
    new-instance v2, Lcom/heytap/accessory/b/a/a;

    invoke-direct {v2, p0, p1}, Lcom/heytap/accessory/b/a/a;-><init>([BI)V

    .line 331
    :cond_4
    monitor-exit v0

    return-object v2

    .line 333
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(IZ)Lcom/heytap/accessory/b/a/a;
    .locals 6

    .line 259
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    sget v1, Lcom/heytap/accessory/b/a/e;->f:I

    if-le p0, v1, :cond_0

    .line 261
    sget-object p1, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p1, Lcom/heytap/accessory/b/a/a;

    new-array v1, p0, [B

    invoke-direct {p1, v1, p0}, Lcom/heytap/accessory/b/a/a;-><init>([BI)V

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_1

    move v1, p0

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->d(I)I

    move-result v1

    .line 268
    :goto_0
    invoke-static {v1, p0, p1}, Lcom/heytap/accessory/b/a/e;->a(IIZ)Lcom/heytap/accessory/b/a/a;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v3, 0x1

    move v4, v1

    :goto_1
    if-nez v2, :cond_6

    const/4 v5, 0x3

    if-gt v3, v5, :cond_6

    if-eqz p1, :cond_4

    .line 273
    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->d(I)I

    move-result v5

    if-ne p0, v5, :cond_2

    goto :goto_2

    .line 1531
    :cond_2
    sget-object v5, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    const/high16 v4, -0x80000000

    goto :goto_3

    .line 1532
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    .line 1526
    :cond_4
    :goto_2
    sget-object v5, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_5

    const v4, 0x7fffffff

    goto :goto_3

    .line 1527
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    const/16 v5, 0x18

    if-lt v4, v5, :cond_6

    const v5, 0x10400

    if-gt v4, v5, :cond_6

    .line 278
    sget v5, Lcom/heytap/accessory/b/a/e;->f:I

    if-gt v4, v5, :cond_6

    .line 281
    invoke-static {v4, p0, p1}, Lcom/heytap/accessory/b/a/e;->a(IIZ)Lcom/heytap/accessory/b/a/a;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-nez v2, :cond_8

    .line 286
    new-instance p1, Lcom/heytap/accessory/b/a/a;

    new-array v2, v1, [B

    invoke-direct {p1, v2, p0}, Lcom/heytap/accessory/b/a/a;-><init>([BI)V

    .line 287
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->e(I)Lcom/heytap/accessory/b/a/e$a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 289
    invoke-static {p0}, Lcom/heytap/accessory/b/a/e$a;->a(Lcom/heytap/accessory/b/a/e$a;)V

    goto :goto_4

    .line 291
    :cond_7
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    .line 292
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->e(I)Lcom/heytap/accessory/b/a/e$a;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 293
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->e(I)Lcom/heytap/accessory/b/a/e$a;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/b/a/e$a;->a(Lcom/heytap/accessory/b/a/e$a;)V

    goto :goto_4

    :cond_8
    move-object p1, v2

    .line 299
    :cond_9
    :goto_4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/heytap/accessory/b/a/d;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/a/d;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->a(Lcom/heytap/accessory/b/a/d;)V

    return-void
.end method

.method public static a(Lcom/heytap/accessory/b/a/d;)V
    .locals 5

    .line 66
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v0, "BufferPool already initialised!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_8

    .line 71
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 73
    :try_start_0
    sput v1, Lcom/heytap/accessory/b/a/e;->i:I

    .line 74
    iget-boolean v1, p0, Lcom/heytap/accessory/b/a/d;->d:Z

    const/16 v2, 0x18

    const v3, 0x10400

    if-eqz v1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/heytap/accessory/b/a/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x200000

    .line 76
    sput p0, Lcom/heytap/accessory/b/a/e;->e:I

    goto :goto_0

    :cond_1
    const/high16 p0, 0x400000

    .line 78
    sput p0, Lcom/heytap/accessory/b/a/e;->e:I

    .line 81
    :goto_0
    sput v3, Lcom/heytap/accessory/b/a/e;->f:I

    goto :goto_1

    .line 83
    :cond_2
    iget v1, p0, Lcom/heytap/accessory/b/a/d;->c:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/heytap/accessory/b/a/d;->b:I

    iget v4, p0, Lcom/heytap/accessory/b/a/d;->c:I

    if-lt v1, v4, :cond_7

    .line 88
    iget v1, p0, Lcom/heytap/accessory/b/a/d;->b:I

    sput v1, Lcom/heytap/accessory/b/a/e;->e:I

    .line 89
    iget p0, p0, Lcom/heytap/accessory/b/a/d;->c:I

    .line 90
    sput p0, Lcom/heytap/accessory/b/a/e;->f:I

    if-gt p0, v3, :cond_3

    .line 91
    sget p0, Lcom/heytap/accessory/b/a/e;->f:I

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v3

    .line 95
    :goto_2
    sget v1, Lcom/heytap/accessory/b/a/e;->e:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/heytap/accessory/b/a/e;->g:I

    .line 96
    sget v1, Lcom/heytap/accessory/b/a/e;->e:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/heytap/accessory/b/a/e;->h:I

    const/16 v1, 0x24

    move v4, v1

    move v1, v2

    :goto_3
    if-gt v1, p0, :cond_5

    .line 100
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    if-eq v1, v2, :cond_4

    if-gt v4, p0, :cond_4

    .line 103
    invoke-static {v4}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    :cond_4
    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 109
    :cond_5
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->e()V

    .line 110
    sget v1, Lcom/heytap/accessory/b/a/e;->f:I

    if-le v1, v3, :cond_6

    .line 111
    sget p0, Lcom/heytap/accessory/b/a/e;->f:I

    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    goto :goto_4

    .line 113
    :cond_6
    invoke-static {p0}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    :goto_4
    const/4 p0, 0x1

    .line 116
    sput-boolean p0, Lcom/heytap/accessory/b/a/e;->j:Z

    .line 117
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BufferPool[v1.0.2] initialised with capacity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/heytap/accessory/b/a/e;->e:I

    const/high16 v3, 0x100000

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v0

    return-void

    .line 84
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialise the Bufferpool! [Cache size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/heytap/accessory/b/a/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Max chunk size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/heytap/accessory/b/a/d;->c:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 69
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to initialise the Bufferpool!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 123
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-boolean v1, Lcom/heytap/accessory/b/a/e;->j:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a([B)Z
    .locals 8

    .line 340
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v0, "Failed to recycle buffer - Bufferpool not initialised!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 344
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v0, "Cannot recycle null buffer!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 347
    :cond_1
    array-length v0, p0

    .line 348
    sget-object v2, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    sget v3, Lcom/heytap/accessory/b/a/e;->f:I

    if-le v0, v3, :cond_2

    .line 350
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot recycle buffer \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Non-matcing size!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v2

    return v1

    .line 353
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2521
    sget-object v2, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    .line 2522
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    :goto_0
    sget-object v3, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    :try_start_1
    invoke-static {v2}, Lcom/heytap/accessory/b/a/e;->e(I)Lcom/heytap/accessory/b/a/e$a;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 359
    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/e$a;->a()Ljava/util/LinkedList;

    move-result-object v5

    .line 360
    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/e$a;->e()Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    monitor-exit v3

    return v1

    .line 364
    :cond_4
    sget v6, Lcom/heytap/accessory/b/a/e;->i:I

    add-int/2addr v6, v0

    sget v7, Lcom/heytap/accessory/b/a/e;->e:I

    if-le v6, v7, :cond_6

    .line 365
    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/e$a;->d()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v2

    .line 366
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lt v6, v4, :cond_5

    .line 367
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Cannot recycle buffer \'"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\', Buffer chunk count("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") exceeded the limit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v3

    return v1

    .line 371
    :cond_5
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->d()I

    .line 372
    sget v4, Lcom/heytap/accessory/b/a/e;->i:I

    add-int/2addr v4, v0

    sget v6, Lcom/heytap/accessory/b/a/e;->e:I

    if-le v4, v6, :cond_6

    .line 373
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Cannot recycle buffer \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v3

    return v1

    :cond_6
    if-ne v2, v0, :cond_7

    .line 379
    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 381
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 384
    :goto_1
    sget p0, Lcom/heytap/accessory/b/a/e;->i:I

    add-int/2addr p0, v0

    sput p0, Lcom/heytap/accessory/b/a/e;->i:I

    const/4 p0, 0x1

    .line 385
    monitor-exit v3

    return p0

    .line 388
    :cond_8
    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    .line 390
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 353
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static b(I)Lcom/heytap/accessory/b/a/a;
    .locals 1

    .line 249
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 252
    invoke-static {p0, v0}, Lcom/heytap/accessory/b/a/e;->a(IZ)Lcom/heytap/accessory/b/a/a;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 546
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 548
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v1, "isLowMemoryDevice(): ActivityManager is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 550
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 551
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    .line 553
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c()I
    .locals 1

    .line 30
    sget v0, Lcom/heytap/accessory/b/a/e;->e:I

    return v0
.end method

.method public static c(I)Z
    .locals 6

    .line 395
    invoke-static {}, Lcom/heytap/accessory/b/a/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 396
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v0, "Failed to clear cache - Bufferpool not initialised!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 399
    :cond_0
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_3

    const/16 v2, 0xa

    if-eq p0, v2, :cond_2

    const/16 v2, 0xf

    if-eq p0, v2, :cond_1

    const/16 v2, 0x28

    if-eq p0, v2, :cond_3

    const/16 v2, 0x3c

    if-eq p0, v2, :cond_2

    const/16 v2, 0x50

    if-eq p0, v2, :cond_1

    .line 415
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    move v2, v1

    goto :goto_0

    .line 408
    :cond_2
    sget v2, Lcom/heytap/accessory/b/a/e;->h:I

    goto :goto_0

    .line 404
    :cond_3
    sget v2, Lcom/heytap/accessory/b/a/e;->g:I

    .line 418
    :goto_0
    sget-object v3, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClearCache["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : Cache Size BEFORE = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/heytap/accessory/b/a/e;->i:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget p0, Lcom/heytap/accessory/b/a/e;->i:I

    if-gt p0, v2, :cond_4

    .line 420
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    const-string v3, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    monitor-exit v0

    return v1

    .line 423
    :cond_4
    sget-object p0, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_6

    .line 426
    sget-object v3, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/accessory/b/a/e$a;

    .line 427
    invoke-virtual {v3}, Lcom/heytap/accessory/b/a/e$a;->b()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 429
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/heytap/accessory/b/a/e;->i:I

    if-le v4, v2, :cond_5

    .line 430
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 431
    sget v5, Lcom/heytap/accessory/b/a/e;->i:I

    array-length v4, v4

    sub-int/2addr v5, v4

    sput v5, Lcom/heytap/accessory/b/a/e;->i:I

    goto :goto_2

    .line 435
    :cond_5
    sget v3, Lcom/heytap/accessory/b/a/e;->i:I

    if-le v3, v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_6
    sget-object p0, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClearCache : Cache Size AFTER = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/heytap/accessory/b/a/e;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 443
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static d()I
    .locals 10

    .line 448
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    sget v1, Lcom/heytap/accessory/b/a/e;->i:I

    .line 450
    sget-object v2, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 453
    sget-object v5, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/heytap/accessory/b/a/e$a;

    if-eqz v5, :cond_2

    .line 455
    invoke-virtual {v5}, Lcom/heytap/accessory/b/a/e$a;->d()F

    move-result v6

    invoke-virtual {v5}, Lcom/heytap/accessory/b/a/e$a;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 456
    invoke-virtual {v5}, Lcom/heytap/accessory/b/a/e$a;->b()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_0

    move v7, v3

    goto :goto_1

    .line 457
    :cond_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    :cond_1
    :goto_1
    if-le v7, v6, :cond_2

    if-eqz v5, :cond_1

    .line 461
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 462
    sget v9, Lcom/heytap/accessory/b/a/e;->i:I

    array-length v8, v8

    sub-int/2addr v9, v8

    sput v9, Lcom/heytap/accessory/b/a/e;->i:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    :cond_3
    sget-object v2, Lcom/heytap/accessory/b/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pool Stabilized; Cache size reduced from  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/heytap/accessory/b/a/e;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget v2, Lcom/heytap/accessory/b/a/e;->i:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static d(I)I
    .locals 2

    .line 516
    sget-object v0, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p0

    .line 517
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static e(I)Lcom/heytap/accessory/b/a/e$a;
    .locals 2

    .line 536
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/b/a/e$a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static e()V
    .locals 5

    const/4 v0, 0x4

    .line 558
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 559
    sget-object v2, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 560
    :try_start_0
    aget v4, v1, v3

    .line 561
    invoke-static {v4}, Lcom/heytap/accessory/b/a/e;->f(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static f(I)Z
    .locals 5

    .line 568
    sget-object v0, Lcom/heytap/accessory/b/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    sget v1, Lcom/heytap/accessory/b/a/e;->f:I

    const/4 v2, 0x0

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 570
    sget-object v1, Lcom/heytap/accessory/b/a/e;->b:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v1, Lcom/heytap/accessory/b/a/e;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/heytap/accessory/b/a/e$a;

    invoke-direct {v3, p0, v2}, Lcom/heytap/accessory/b/a/e$a;-><init>(IB)V

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 572
    monitor-exit v0

    return p0

    .line 574
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
