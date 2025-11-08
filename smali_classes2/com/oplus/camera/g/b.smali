.class public Lcom/oplus/camera/g/b;
.super Ljava/lang/Object;
.source "OplusExif.java"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .line 57
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/oplus/camera/g/b;->a()V

    :cond_0
    if-eqz p0, :cond_2

    .line 61
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    or-int/2addr p0, p1

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method private static a(Ljava/io/RandomAccessFile;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/camera/g/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 236
    invoke-static {p0}, Lcom/oplus/camera/g/b;->b(Ljava/io/RandomAccessFile;)Lcom/oplus/camera/g/a;

    move-result-object v5

    .line 237
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-wide v6, v5, Lcom/oplus/camera/g/a;->a:J

    add-long/2addr v3, v6

    .line 240
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAllBoxHeader, offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", BoxHeader is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/camera/g/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusExif"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a()V
    .locals 3

    .line 41
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "beauty"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "panorama"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fastVideo"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "tiltShiftFastVideo"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "timelapsePro"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "portrait"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "professional"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sticker"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "night"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ultraHD"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "idPhoto"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/oplus/camera/g/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "double_exposure"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/File;[B)V
    .locals 13

    const-string v0, "OplusExif"

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 155
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 157
    :try_start_1
    invoke-static {v4}, Lcom/oplus/camera/g/b;->a(Ljava/io/RandomAccessFile;)Ljava/util/List;

    move-result-object p0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-wide v6, v5

    move v5, v3

    .line 161
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 162
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/g/a;

    const-string v9, "moov"

    .line 165
    iget-object v10, v8, Lcom/oplus/camera/g/a;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v9, v5, :cond_1

    .line 168
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 169
    iget-wide v9, v8, Lcom/oplus/camera/g/a;->a:J

    array-length p0, p1

    int-to-long v11, p0

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/oplus/camera/g/a;->a(J)[B

    move-result-object p0

    .line 170
    invoke-virtual {v4, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 171
    iget-wide v8, v8, Lcom/oplus/camera/g/a;->a:J

    add-long/2addr v6, v8

    .line 172
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V

    goto/16 :goto_1

    :cond_1
    const-string v9, "free"

    add-int/lit8 v5, v5, 0x1

    .line 176
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/camera/g/a;

    iget-object v10, v10, Lcom/oplus/camera/g/a;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 178
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    iget-wide v9, v8, Lcom/oplus/camera/g/a;->a:J

    array-length v11, p1

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/oplus/camera/g/a;->a(J)[B

    move-result-object v9

    .line 180
    invoke-virtual {v4, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 181
    iget-wide v8, v8, Lcom/oplus/camera/g/a;->a:J

    add-long/2addr v6, v8

    .line 182
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    array-length v8, p1

    new-array v8, v8, [B

    .line 186
    invoke-virtual {v4, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_2

    .line 189
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/g/a;

    iget-wide v9, p0, Lcom/oplus/camera/g/a;->a:J

    .line 190
    array-length p0, p1

    int-to-long v11, p0

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/oplus/camera/g/a;->a(J)[B

    move-result-object p0

    .line 191
    array-length v5, p0

    invoke-static {p0, v3, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    invoke-virtual {v4, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 195
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_1

    .line 198
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "writeExifTag, read: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeExifTag, type: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/g/a;

    iget-object p0, p0, Lcom/oplus/camera/g/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_4
    iget-wide v8, v8, Lcom/oplus/camera/g/a;->a:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 217
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 219
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 222
    :goto_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v4, v3

    goto :goto_6

    :catch_2
    move-exception p0

    .line 210
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeExifTag, e: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_6

    .line 217
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 219
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 222
    :goto_4
    throw p0

    .line 226
    :cond_6
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "writeExifTag, cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_6
    if-eqz v4, :cond_7

    .line 217
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p1

    .line 219
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    .line 222
    :goto_7
    throw p0

    .line 224
    :cond_7
    :goto_8
    throw p0

    :cond_8
    :goto_9
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 75
    array-length v0, p0

    const/16 v1, 0x8

    add-int/2addr v0, v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/oplus/camera/g/a;->a(J)[B

    move-result-object v0

    const-string v2, "titl"

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 77
    array-length v3, p0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 79
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v0, v2

    const/4 v4, 0x4

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v0, p0

    invoke-static {p0, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method private static b(Ljava/io/RandomAccessFile;)Lcom/oplus/camera/g/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 249
    new-array v1, v0, [B

    .line 250
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    .line 256
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v0

    or-int/2addr v4, v6

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    if-eq v4, v5, :cond_0

    .line 262
    new-instance p0, Lcom/oplus/camera/g/a;

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/g/a;-><init>([BZ)V

    return-object p0

    .line 264
    :cond_0
    new-array v4, v7, [B

    .line 265
    new-array v6, v0, [B

    .line 266
    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    if-eq p0, v3, :cond_1

    .line 272
    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-static {v6, v2, v4, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance p0, Lcom/oplus/camera/g/a;

    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/g/a;-><init>([BZ)V

    return-object p0

    .line 269
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "read large box error."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "read box error."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lcom/oplus/camera/g/b;->a(Ljava/lang/String;I)I

    move-result p0

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Oplus_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
