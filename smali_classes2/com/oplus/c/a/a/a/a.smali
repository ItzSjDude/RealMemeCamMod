.class public Lcom/oplus/c/a/a/a/a;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/nio/channels/FileChannel;

.field private e:Ljava/nio/MappedByteBuffer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/io/RandomAccessFile;

.field private m:Ljava/io/RandomAccessFile;

.field private n:I

.field private o:I

.field private p:[B

.field private q:[B

.field private r:Ljava/util/zip/Adler32;

.field private s:Lcom/oplus/c/a/a/a/a$a;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 123
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    const/16 v0, 0x14

    .line 124
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->q:[B

    .line 125
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    .line 421
    new-instance v0, Lcom/oplus/c/a/a/a/a$a;

    invoke-direct {v0}, Lcom/oplus/c/a/a/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->s:Lcom/oplus/c/a/a/a/a$a;

    .line 140
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    .line 141
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    .line 143
    iput p5, p0, Lcom/oplus/c/a/a/a/a;->k:I

    if-nez p4, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oplus/c/a/a/a/a;->a(II)V

    .line 151
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->c()V

    .line 153
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unable to load index"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a([BI)I
    .locals 2

    .line 641
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private a(I)V
    .locals 5

    const/16 v0, 0x400

    .line 352
    new-array v1, v0, [B

    .line 353
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget p1, p0, Lcom/oplus/c/a/a/a/a;->f:I

    mul-int/lit8 p1, p1, 0xc

    :goto_0
    if-lez p1, :cond_0

    .line 355
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 356
    iget-object v3, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 302
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    mul-int/lit8 v3, p1, 0xc

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x20

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 303
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    const/4 v3, 0x0

    const v4, -0x4cd8cfd0

    .line 305
    invoke-static {v0, v3, v4}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/4 v4, 0x4

    .line 306
    invoke-static {v0, v4, p1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 p1, 0x8

    .line 307
    invoke-static {v0, p1, p2}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 p1, 0xc

    .line 308
    invoke-static {v0, p1, v3}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 p1, 0x10

    .line 309
    invoke-static {v0, p1, v3}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 p1, 0x14

    .line 310
    invoke-static {v0, p1, v4}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 311
    iget p1, p0, Lcom/oplus/c/a/a/a/a;->k:I

    const/16 p2, 0x18

    invoke-static {v0, p2, p1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 p1, 0x1c

    .line 312
    invoke-virtual {p0, v0, v3, p1}, Lcom/oplus/c/a/a/a/a;->a([BII)I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 313
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 317
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 318
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 319
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const p1, -0x42db7af0

    .line 321
    invoke-static {v0, v3, p1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 322
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 323
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private a(J[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->q:[B

    .line 399
    invoke-virtual {p0, p3}, Lcom/oplus/c/a/a/a/a;->a([B)I

    move-result v1

    const/4 v2, 0x0

    .line 400
    invoke-static {v0, v2, p1, p2}, Lcom/oplus/c/a/a/a/a;->a([BIJ)V

    const/16 v3, 0x8

    .line 401
    invoke-static {v0, v3, v1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 402
    iget v1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    const/16 v4, 0xc

    invoke-static {v0, v4, v1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    const/16 v1, 0x10

    .line 403
    invoke-static {v0, v1, p4}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 404
    iget-object v1, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 405
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v2, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 407
    iget-object p3, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget v0, p0, Lcom/oplus/c/a/a/a/a;->t:I

    invoke-virtual {p3, v0, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 408
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget p2, p0, Lcom/oplus/c/a/a/a/a;->t:I

    add-int/2addr p2, v3

    iget p3, p0, Lcom/oplus/c/a/a/a/a;->j:I

    invoke-virtual {p1, p2, p3}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 409
    iget p1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    const/16 p2, 0x14

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    iput p1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    .line 410
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    iget p0, p0, Lcom/oplus/c/a/a/a/a;->j:I

    invoke-static {p1, p2, p0}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    return-void
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 634
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/c/a/a/a/a;->b(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/c/a/a/a/a;->b(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/c/a/a/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static a([BIJ)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, p1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 664
    aput-byte v3, p0, v2

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JI)Z
    .locals 7

    .line 551
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->f:I

    int-to-long v1, v0

    rem-long v1, p1, v1

    long-to-int v1, v1

    if-gez v1, :cond_0

    add-int/2addr v1, v0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p3

    .line 556
    iget-object v3, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 557
    iget-object v5, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v6, v2, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 559
    iput v2, p0, Lcom/oplus/c/a/a/a/a;->t:I

    return v6

    :cond_2
    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 562
    iput v2, p0, Lcom/oplus/c/a/a/a/a;->t:I

    .line 563
    iput v5, p0, Lcom/oplus/c/a/a/a/a;->u:I

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 566
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->f:I

    if-lt v0, v2, :cond_4

    move v0, v6

    :cond_4
    if-ne v0, v1, :cond_1

    const-string v2, "BlobCache"

    const-string v3, "corrupted index: clear the slot."

    .line 570
    invoke-static {v2, v3}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private a(Ljava/io/RandomAccessFile;ILcom/oplus/c/a/a/a/a$a;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BlobCache"

    .line 490
    iget-object v1, p0, Lcom/oplus/c/a/a/a/a;->q:[B

    .line 491
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v4, p2

    const/4 v6, 0x0

    .line 493
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 494
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    const-string p0, "cannot read blob header"

    .line 495
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 498
    :cond_0
    :try_start_1
    invoke-static {v1, v6}, Lcom/oplus/c/a/a/a/a;->b([BI)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_1

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 502
    :cond_1
    :try_start_2
    iget-wide v9, p3, Lcom/oplus/c/a/a/a/a$a;->a:J

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blob key does not match: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_2
    const/16 v4, 0x8

    .line 506
    :try_start_3
    invoke-static {v1, v4}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v4

    const/16 v7, 0xc

    .line 507
    invoke-static {v1, v7}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v7

    if-eq v7, p2, :cond_3

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blob offset does not match: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_3
    const/16 v7, 0x10

    .line 512
    :try_start_4
    invoke-static {v1, v7}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v1

    if-ltz v1, :cond_9

    .line 513
    iget v7, p0, Lcom/oplus/c/a/a/a/a;->g:I

    sub-int/2addr v7, p2

    sub-int/2addr v7, v5

    if-le v1, v7, :cond_4

    goto :goto_0

    .line 517
    :cond_4
    iget-object p2, p3, Lcom/oplus/c/a/a/a/a$a;->b:[B

    if-eqz p2, :cond_5

    iget-object p2, p3, Lcom/oplus/c/a/a/a/a$a;->b:[B

    array-length p2, p2

    if-ge p2, v1, :cond_6

    .line 518
    :cond_5
    new-array p2, v1, [B

    iput-object p2, p3, Lcom/oplus/c/a/a/a/a$a;->b:[B

    .line 521
    :cond_6
    iget-object p2, p3, Lcom/oplus/c/a/a/a/a$a;->b:[B

    .line 522
    iput v1, p3, Lcom/oplus/c/a/a/a/a$a;->c:I

    .line 524
    invoke-virtual {p1, p2, v6, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_7

    const-string p0, "cannot read blob data"

    .line 525
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 528
    :cond_7
    :try_start_5
    invoke-virtual {p0, p2, v6, v1}, Lcom/oplus/c/a/a/a/a;->a([BII)I

    move-result p0

    if-eq p0, v4, :cond_8

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blob checksum does not match: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_8
    const/4 p0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return p0

    .line 514
    :cond_9
    :goto_0
    :try_start_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid blob length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_7
    const-string p2, "getBlob failed."

    .line 534
    invoke-static {v0, p2, p0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 537
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :goto_1
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 538
    throw p0
.end method

.method static b([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x7

    .line 648
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    .line 650
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static b([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 657
    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->d:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/Closeable;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/Closeable;)V

    .line 184
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/Closeable;)V

    .line 185
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private d()Z
    .locals 13

    const-string v0, "BlobCache"

    const/4 v1, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 194
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    .line 197
    iget-object v3, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const-string p0, "cannot read header"

    .line 198
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 202
    :cond_0
    invoke-static {v2, v1}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v3

    const v5, -0x4cd8cfd0

    if-eq v3, v5, :cond_1

    const-string p0, "cannot read header magic"

    .line 203
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v3, 0x18

    .line 207
    invoke-static {v2, v3}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v3

    iget v5, p0, Lcom/oplus/c/a/a/a/a;->k:I

    if-eq v3, v5, :cond_2

    const-string p0, "version mismatch"

    .line 208
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v3, 0x4

    .line 212
    invoke-static {v2, v3}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v5

    iput v5, p0, Lcom/oplus/c/a/a/a/a;->f:I

    const/16 v5, 0x8

    .line 213
    invoke-static {v2, v5}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v5

    iput v5, p0, Lcom/oplus/c/a/a/a/a;->g:I

    const/16 v5, 0xc

    .line 214
    invoke-static {v2, v5}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v6

    iput v6, p0, Lcom/oplus/c/a/a/a/a;->h:I

    const/16 v6, 0x10

    .line 215
    invoke-static {v2, v6}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v6

    iput v6, p0, Lcom/oplus/c/a/a/a/a;->i:I

    const/16 v6, 0x14

    .line 216
    invoke-static {v2, v6}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v6

    iput v6, p0, Lcom/oplus/c/a/a/a/a;->j:I

    const/16 v6, 0x1c

    .line 218
    invoke-static {v2, v6}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v7

    .line 219
    invoke-virtual {p0, v2, v1, v6}, Lcom/oplus/c/a/a/a/a;->a([BII)I

    move-result v2

    if-eq v2, v7, :cond_3

    const-string p0, "header checksum does not match"

    .line 220
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 225
    :cond_3
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->f:I

    if-gtz v2, :cond_4

    const-string p0, "invalid max entries"

    .line 226
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 229
    :cond_4
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->g:I

    if-gtz v2, :cond_5

    const-string p0, "invalid max bytes"

    .line 230
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 233
    :cond_5
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->h:I

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->h:I

    if-eq v2, v6, :cond_6

    const-string p0, "invalid active region"

    .line 234
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 237
    :cond_6
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->i:I

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->i:I

    iget v7, p0, Lcom/oplus/c/a/a/a/a;->f:I

    if-le v2, v7, :cond_7

    goto/16 :goto_1

    .line 241
    :cond_7
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->j:I

    if-lt v2, v3, :cond_e

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->j:I

    iget v7, p0, Lcom/oplus/c/a/a/a/a;->g:I

    if-le v2, v7, :cond_8

    goto :goto_0

    .line 245
    :cond_8
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->f:I

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v7, v4

    if-eqz v2, :cond_9

    const-string p0, "invalid index file length"

    .line 247
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 252
    :cond_9
    new-array v2, v3, [B

    .line 253
    iget-object v4, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "cannot read data file magic"

    if-eq v4, v3, :cond_a

    .line 254
    :try_start_1
    invoke-static {v0, v5}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 257
    :cond_a
    invoke-static {v2, v1}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "invalid data file magic"

    const v8, -0x42db7af0

    if-eq v4, v8, :cond_b

    .line 258
    :try_start_2
    invoke-static {v0, v7}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 261
    :cond_b
    iget-object v4, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_c

    .line 262
    invoke-static {v0, v5}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 265
    :cond_c
    invoke-static {v2, v1}, Lcom/oplus/c/a/a/a/a;->a([BI)I

    move-result v2

    if-eq v2, v8, :cond_d

    .line 266
    invoke-static {v0, v7}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 271
    :cond_d
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/c/a/a/a/a;->d:Ljava/nio/channels/FileChannel;

    .line 272
    iget-object v7, p0, Lcom/oplus/c/a/a/a/a;->d:Ljava/nio/channels/FileChannel;

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->a:Ljava/io/RandomAccessFile;

    .line 273
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    .line 272
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    .line 274
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->e()V

    return v6

    :cond_e
    :goto_0
    const-string p0, "invalid active bytes"

    .line 242
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    :goto_1
    const-string p0, "invalid active entries"

    .line 238
    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string v2, "loadIndex failed."

    .line 279
    invoke-static {v0, v2, p0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    .line 286
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/oplus/c/a/a/a/a;->m:Ljava/io/RandomAccessFile;

    .line 287
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 288
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    .line 290
    iput v0, p0, Lcom/oplus/c/a/a/a/a;->n:I

    .line 291
    iput v0, p0, Lcom/oplus/c/a/a/a/a;->o:I

    .line 293
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->h:I

    if-nez v0, :cond_2

    .line 294
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->o:I

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->f:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/c/a/a/a/a;->o:I

    goto :goto_2

    .line 296
    :cond_2
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->n:I

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->f:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/c/a/a/a/a;->n:I

    :goto_2
    return-void
.end method

.method private f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->h:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/c/a/a/a/a;->h:I

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/oplus/c/a/a/a/a;->i:I

    const/4 v0, 0x4

    .line 330
    iput v0, p0, Lcom/oplus/c/a/a/a/a;->j:I

    .line 332
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->h:I

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 333
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->i:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 334
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->j:I

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 335
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->g()V

    .line 337
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->e()V

    .line 338
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->n:I

    invoke-direct {p0, v0}, Lcom/oplus/c/a/a/a/a;->a(I)V

    .line 339
    invoke-virtual {p0}, Lcom/oplus/c/a/a/a/a;->a()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    const/4 v1, 0x0

    const/16 v2, 0x1c

    .line 345
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/c/a/a/a/a;->a([BII)I

    move-result v3

    .line 344
    invoke-static {v0, v2, v3}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 346
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    invoke-virtual {v0, p0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method a([B)I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 621
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 622
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {p0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method a([BII)I
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 627
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 628
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {p0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public a()V
    .locals 2

    .line 579
    :try_start_0
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BlobCache"

    const-string v1, "sync index failed"

    .line 581
    invoke-static {v0, v1, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->g:I

    if-gt v0, v1, :cond_3

    .line 367
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->j:I

    add-int/lit8 v0, v0, 0x14

    array-length v2, p3

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/c/a/a/a/a;->i:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oplus/c/a/a/a/a;->f:I

    if-lt v0, v1, :cond_1

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->f()V

    .line 372
    :cond_1
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->n:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/c/a/a/a/a;->a(JI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/c/a/a/a/a;->i:I

    .line 376
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->i:I

    invoke-static {v0, v1, v2}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 379
    :cond_2
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/c/a/a/a/a;->a(J[BI)V

    .line 380
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->g()V

    return-void

    .line 364
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "blob is too large!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/oplus/c/a/a/a/a$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-wide v0, p1, Lcom/oplus/c/a/a/a/a$a;->a:J

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->n:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/c/a/a/a/a;->a(JI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/oplus/c/a/a/a/a;->l:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->u:I

    invoke-direct {p0, v0, v2, p1}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/RandomAccessFile;ILcom/oplus/c/a/a/a/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 453
    :cond_0
    iget v0, p0, Lcom/oplus/c/a/a/a/a;->t:I

    .line 456
    iget-wide v2, p1, Lcom/oplus/c/a/a/a/a$a;->a:J

    iget v4, p0, Lcom/oplus/c/a/a/a/a;->o:I

    invoke-direct {p0, v2, v3, v4}, Lcom/oplus/c/a/a/a/a;->a(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/oplus/c/a/a/a/a;->m:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/oplus/c/a/a/a/a;->u:I

    invoke-direct {p0, v2, v3, p1}, Lcom/oplus/c/a/a/a/a;->a(Ljava/io/RandomAccessFile;ILcom/oplus/c/a/a/a/a$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    iget v2, p0, Lcom/oplus/c/a/a/a/a;->j:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcom/oplus/c/a/a/a/a$a;->c:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/c/a/a/a/a;->g:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->i:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/oplus/c/a/a/a/a;->f:I

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    iput v0, p0, Lcom/oplus/c/a/a/a/a;->t:I

    .line 467
    :try_start_0
    iget-wide v2, p1, Lcom/oplus/c/a/a/a/a$a;->a:J

    iget-object v0, p1, Lcom/oplus/c/a/a/a/a$a;->b:[B

    iget p1, p1, Lcom/oplus/c/a/a/a/a$a;->c:I

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/oplus/c/a/a/a/a;->a(J[BI)V

    .line 468
    iget p1, p0, Lcom/oplus/c/a/a/a/a;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/c/a/a/a/a;->i:I

    .line 469
    iget-object p1, p0, Lcom/oplus/c/a/a/a/a;->p:[B

    const/16 v0, 0x10

    iget v2, p0, Lcom/oplus/c/a/a/a/a;->i:I

    invoke-static {p1, v0, v2}, Lcom/oplus/c/a/a/a/a;->b([BII)V

    .line 470
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BlobCache"

    const-string p1, "cannot copy over"

    .line 472
    invoke-static {p0, p1}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 3

    const-string v0, "BlobCache"

    .line 586
    invoke-virtual {p0}, Lcom/oplus/c/a/a/a/a;->a()V

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/oplus/c/a/a/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "sync data file 0 failed"

    .line 590
    invoke-static {v0, v2, v1}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/oplus/c/a/a/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "sync data file 1 failed"

    .line 595
    invoke-static {v0, v1, p0}, Lcom/oplus/c/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public close()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/oplus/c/a/a/a/a;->b()V

    .line 178
    invoke-direct {p0}, Lcom/oplus/c/a/a/a/a;->c()V

    return-void
.end method
