.class public final Llibcore/io/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/a$b;,
        Llibcore/io/a$a;,
        Llibcore/io/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private final f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Llibcore/io/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 113
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Llibcore/io/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, v0, Llibcore/io/a;->h:J

    .line 164
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    .line 173
    iput-wide v2, v0, Llibcore/io/a;->l:J

    .line 272
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Llibcore/io/a;->m:Ljava/util/concurrent/ExecutorService;

    .line 274
    new-instance v2, Llibcore/io/a$1;

    invoke-direct {v2, p0}, Llibcore/io/a$1;-><init>(Llibcore/io/a;)V

    iput-object v2, v0, Llibcore/io/a;->n:Ljava/util/concurrent/Callable;

    .line 291
    iput-object v1, v0, Llibcore/io/a;->b:Ljava/io/File;

    move/from16 v2, p2

    .line 292
    iput v2, v0, Llibcore/io/a;->e:I

    .line 293
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Llibcore/io/a;->c:Ljava/io/File;

    .line 294
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Llibcore/io/a;->d:Ljava/io/File;

    move/from16 v1, p3

    .line 295
    iput v1, v0, Llibcore/io/a;->g:I

    move-wide/from16 v1, p4

    .line 296
    iput-wide v1, v0, Llibcore/io/a;->f:J

    return-void
.end method

.method static synthetic a(Llibcore/io/a;I)I
    .locals 0

    .line 102
    iput p1, p0, Llibcore/io/a;->k:I

    return p1
.end method

.method static synthetic a(Llibcore/io/a;)Ljava/io/Writer;
    .locals 0

    .line 102
    iget-object p0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-char v1, v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Llibcore/io/a$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    invoke-direct {p0}, Llibcore/io/a;->i()V

    .line 514
    invoke-direct {p0, p1}, Llibcore/io/a;->e(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/a$b;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 517
    invoke-static {v0}, Llibcore/io/a$b;->e(Llibcore/io/a$b;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    .line 518
    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    .line 521
    :try_start_1
    new-instance v0, Llibcore/io/a$b;

    invoke-direct {v0, p0, p1, v2}, Llibcore/io/a$b;-><init>(Llibcore/io/a;Ljava/lang/String;Llibcore/io/a$1;)V

    .line 522
    iget-object p2, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    :cond_2
    invoke-static {v0}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 524
    monitor-exit p0

    return-object v2

    .line 527
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Llibcore/io/a$a;

    invoke-direct {p2, p0, v0, v2}, Llibcore/io/a$a;-><init>(Llibcore/io/a;Llibcore/io/a$b;Llibcore/io/a$1;)V

    .line 528
    invoke-static {v0, p2}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Llibcore/io/a$a;)Llibcore/io/a$a;

    .line 531
    iget-object p3, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Llibcore/io/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    if-lez p2, :cond_1

    .line 319
    new-instance v0, Llibcore/io/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Llibcore/io/a;-><init>(Ljava/io/File;IIJ)V

    .line 320
    iget-object v1, v0, Llibcore/io/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    invoke-direct {v0}, Llibcore/io/a;->e()V

    .line 323
    invoke-direct {v0}, Llibcore/io/a;->f()V

    .line 324
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Llibcore/io/a;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Llibcore/io/a;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    invoke-virtual {v0}, Llibcore/io/a;->d()V

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v0, Llibcore/io/a;

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Llibcore/io/a;-><init>(Ljava/io/File;IIJ)V

    .line 335
    invoke-direct {v0}, Llibcore/io/a;->g()V

    return-object v0

    .line 315
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 244
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    invoke-static {v2}, Llibcore/io/a;->a(Ljava/io/File;)V

    .line 265
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    .line 259
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized a(Llibcore/io/a$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 561
    :try_start_0
    invoke-static {p1}, Llibcore/io/a$a;->a(Llibcore/io/a$a;)Llibcore/io/a$b;

    move-result-object v0

    .line 562
    invoke-static {v0}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v1

    if-ne v1, p1, :cond_9

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 567
    invoke-static {v0}, Llibcore/io/a$b;->d(Llibcore/io/a$b;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    .line 568
    :goto_0
    iget v3, p0, Llibcore/io/a;->g:I

    if-ge v2, v3, :cond_1

    .line 569
    invoke-virtual {v0, v2}, Llibcore/io/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p1}, Llibcore/io/a$a;->b()V

    .line 571
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit didn\'t create file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_1
    :goto_1
    iget p1, p0, Llibcore/io/a;->g:I

    if-ge v1, p1, :cond_4

    .line 577
    invoke-virtual {v0, v1}, Llibcore/io/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 579
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    invoke-virtual {v0, v1}, Llibcore/io/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 581
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 582
    invoke-static {v0}, Llibcore/io/a$b;->b(Llibcore/io/a$b;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 583
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 584
    invoke-static {v0}, Llibcore/io/a$b;->b(Llibcore/io/a$b;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 585
    iget-wide v7, p0, Llibcore/io/a;->h:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Llibcore/io/a;->h:J

    goto :goto_2

    .line 588
    :cond_2
    invoke-static {p1}, Llibcore/io/a;->b(Ljava/io/File;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_4
    iget p1, p0, Llibcore/io/a;->k:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Llibcore/io/a;->k:I

    const/4 p1, 0x0

    .line 593
    invoke-static {v0, p1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Llibcore/io/a$a;)Llibcore/io/a$a;

    .line 594
    invoke-static {v0}, Llibcore/io/a$b;->d(Llibcore/io/a$b;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_5

    .line 595
    invoke-static {v0, v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Z)Z

    .line 596
    iget-object p1, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Llibcore/io/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 598
    iget-wide p1, p0, Llibcore/io/a;->l:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Llibcore/io/a;->l:J

    invoke-static {v0, p1, p2}, Llibcore/io/a$b;->a(Llibcore/io/a$b;J)J

    goto :goto_3

    .line 601
    :cond_5
    iget-object p1, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object p1, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 605
    :cond_6
    :goto_3
    iget-wide p1, p0, Llibcore/io/a;->h:J

    iget-wide v0, p0, Llibcore/io/a;->f:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_7

    invoke-direct {p0}, Llibcore/io/a;->h()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 606
    :cond_7
    iget-object p1, p0, Llibcore/io/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Llibcore/io/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_8
    monitor-exit p0

    return-void

    .line 563
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Llibcore/io/a;Llibcore/io/a$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Llibcore/io/a;->a(Llibcore/io/a$a;Z)V

    return-void
.end method

.method private static a([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 178
    array-length v0, p0

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 186
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 189
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 180
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Llibcore/io/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Llibcore/io/a;->j()V

    return-void
.end method

.method static synthetic c(Llibcore/io/a;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Llibcore/io/a;->h()Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    array-length v1, v0

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    const/4 v1, 0x1

    .line 374
    aget-object v4, v0, v1

    const/4 v5, 0x0

    .line 375
    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 376
    iget-object p0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 380
    :cond_0
    iget-object v6, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llibcore/io/a$b;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 382
    new-instance v6, Llibcore/io/a$b;

    invoke-direct {v6, p0, v4, v7}, Llibcore/io/a$b;-><init>(Llibcore/io/a;Ljava/lang/String;Llibcore/io/a$1;)V

    .line 383
    iget-object v8, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_1
    aget-object v4, v0, v5

    const-string v8, "CLEAN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v0

    iget v8, p0, Llibcore/io/a;->g:I

    add-int/2addr v8, v3

    if-ne v4, v8, :cond_2

    .line 387
    invoke-static {v6, v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Z)Z

    .line 388
    invoke-static {v6, v7}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Llibcore/io/a$a;)Llibcore/io/a$a;

    .line 389
    array-length p0, v0

    invoke-static {v0, v3, p0}, Llibcore/io/a;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v6, p0}, Llibcore/io/a$b;->a(Llibcore/io/a$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    aget-object v1, v0, v5

    const-string v4, "DIRTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 391
    new-instance p1, Llibcore/io/a$a;

    invoke-direct {p1, p0, v6, v7}, Llibcore/io/a$a;-><init>(Llibcore/io/a;Llibcore/io/a$b;Llibcore/io/a$1;)V

    invoke-static {v6, p1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Llibcore/io/a$a;)Llibcore/io/a$a;

    goto :goto_0

    .line 392
    :cond_3
    aget-object p0, v0, v5

    const-string v1, "READ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    array-length p0, v0

    if-ne p0, v3, :cond_4

    :goto_0
    return-void

    .line 395
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic d(Llibcore/io/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Llibcore/io/a;->g()V

    return-void
.end method

.method static synthetic e(Llibcore/io/a;)I
    .locals 0

    .line 102
    iget p0, p0, Llibcore/io/a;->g:I

    return p0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 340
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Llibcore/io/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 342
    :try_start_0
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 347
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 348
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llibcore/io/a;->e:I

    .line 349
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Llibcore/io/a;->g:I

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 351
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 358
    :goto_0
    :try_start_1
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/io/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catch_0
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/Closeable;)V

    return-void

    .line 352
    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 364
    invoke-static {v1}, Llibcore/io/a;->a(Ljava/io/Closeable;)V

    .line 365
    throw p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    const-string p0, " "

    .line 712
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\r"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 713
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must not contain spaces or newlines: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic f(Llibcore/io/a;)Ljava/io/File;
    .locals 0

    .line 102
    iget-object p0, p0, Llibcore/io/a;->b:Ljava/io/File;

    return-object p0
.end method

.method private declared-synchronized f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Llibcore/io/a;->d:Ljava/io/File;

    invoke-static {v0}, Llibcore/io/a;->b(Ljava/io/File;)V

    .line 405
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/a$b;

    .line 407
    invoke-static {v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 408
    :goto_1
    iget v2, p0, Llibcore/io/a;->g:I

    if-ge v3, v2, :cond_0

    .line 409
    iget-wide v4, p0, Llibcore/io/a;->h:J

    invoke-static {v1}, Llibcore/io/a$b;->b(Llibcore/io/a$b;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Llibcore/io/a;->h:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 412
    invoke-static {v1, v2}, Llibcore/io/a$b;->a(Llibcore/io/a$b;Llibcore/io/a$a;)Llibcore/io/a$a;

    .line 413
    :goto_2
    iget v2, p0, Llibcore/io/a;->g:I

    if-ge v3, v2, :cond_2

    .line 414
    invoke-virtual {v1, v3}, Llibcore/io/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/a;->b(Ljava/io/File;)V

    .line 415
    invoke-virtual {v1, v3}, Llibcore/io/a$b;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/a;->b(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 417
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 420
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/16 v0, 0x2000

    .line 431
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Llibcore/io/a;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "libcore.io.DiskLruCache"

    .line 432
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 433
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "1"

    .line 434
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 435
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    iget v2, p0, Llibcore/io/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 437
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v2, p0, Llibcore/io/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 439
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 440
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llibcore/io/a$b;

    .line 443
    invoke-static {v3}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Llibcore/io/a$b;->c(Llibcore/io/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Llibcore/io/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 449
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 431
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception v1

    .line 450
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 453
    :goto_2
    iget-object v1, p0, Llibcore/io/a;->d:Ljava/io/File;

    iget-object v2, p0, Llibcore/io/a;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 454
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Llibcore/io/a;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Llibcore/io/a;->i:Ljava/io/Writer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 2

    .line 616
    iget v0, p0, Llibcore/io/a;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    .line 617
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()V
    .locals 1

    .line 662
    iget-object p0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    if-eqz p0, :cond_0

    return-void

    .line 663
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    :goto_0
    iget-wide v0, p0, Llibcore/io/a;->h:J

    iget-wide v2, p0, Llibcore/io/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 696
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Llibcore/io/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 0

    .line 540
    iget-object p0, p0, Llibcore/io/a;->b:Ljava/io/File;

    return-object p0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Llibcore/io/a$c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 469
    :try_start_0
    invoke-direct {p0}, Llibcore/io/a;->i()V

    .line 470
    invoke-direct {p0, p1}, Llibcore/io/a;->e(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 473
    monitor-exit p0

    return-object v1

    .line 476
    :cond_0
    :try_start_1
    invoke-static {v0}, Llibcore/io/a$b;->d(Llibcore/io/a$b;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 477
    monitor-exit p0

    return-object v1

    .line 485
    :cond_1
    :try_start_2
    iget v2, p0, Llibcore/io/a;->g:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 487
    :goto_0
    :try_start_3
    iget v3, p0, Llibcore/io/a;->g:I

    if-ge v2, v3, :cond_2

    .line 488
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Llibcore/io/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v8, v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_2
    :try_start_4
    iget v1, p0, Llibcore/io/a;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llibcore/io/a;->k:I

    .line 496
    iget-object v1, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 497
    invoke-direct {p0}, Llibcore/io/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Llibcore/io/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Llibcore/io/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 501
    :cond_3
    new-instance v1, Llibcore/io/a$c;

    invoke-static {v0}, Llibcore/io/a$b;->e(Llibcore/io/a$b;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Llibcore/io/a$c;-><init>(Llibcore/io/a;Ljava/lang/String;J[Ljava/io/InputStream;Llibcore/io/a$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 492
    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)Llibcore/io/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 509
    invoke-direct {p0, p1, v0, v1}, Llibcore/io/a;->a(Ljava/lang/String;J)Llibcore/io/a$a;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 671
    :try_start_0
    invoke-direct {p0}, Llibcore/io/a;->i()V

    .line 672
    invoke-direct {p0}, Llibcore/io/a;->j()V

    .line 673
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_0
    invoke-direct {p0}, Llibcore/io/a;->i()V

    .line 628
    invoke-direct {p0, p1}, Llibcore/io/a;->e(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 630
    invoke-static {v0}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    :goto_0
    iget v2, p0, Llibcore/io/a;->g:I

    if-ge v1, v2, :cond_2

    .line 635
    invoke-virtual {v0, v1}, Llibcore/io/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 636
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    iget-wide v2, p0, Llibcore/io/a;->h:J

    invoke-static {v0}, Llibcore/io/a$b;->b(Llibcore/io/a$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Llibcore/io/a;->h:J

    .line 640
    invoke-static {v0}, Llibcore/io/a$b;->b(Llibcore/io/a$b;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :cond_2
    iget v0, p0, Llibcore/io/a;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/io/a;->k:I

    .line 644
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 645
    iget-object v0, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-direct {p0}, Llibcore/io/a;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 648
    iget-object p1, p0, Llibcore/io/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Llibcore/io/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_3
    monitor-exit p0

    return v1

    .line 631
    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 681
    :try_start_0
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 682
    monitor-exit p0

    return-void

    .line 684
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Llibcore/io/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/a$b;

    .line 685
    invoke-static {v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 686
    invoke-static {v1}, Llibcore/io/a$b;->a(Llibcore/io/a$b;)Llibcore/io/a$a;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/io/a$a;->b()V

    goto :goto_0

    .line 689
    :cond_2
    invoke-direct {p0}, Llibcore/io/a;->j()V

    .line 690
    iget-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Llibcore/io/a;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Llibcore/io/a;->close()V

    .line 708
    iget-object p0, p0, Llibcore/io/a;->b:Ljava/io/File;

    invoke-static {p0}, Llibcore/io/a;->a(Ljava/io/File;)V

    return-void
.end method
