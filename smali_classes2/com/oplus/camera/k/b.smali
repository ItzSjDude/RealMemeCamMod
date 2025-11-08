.class public Lcom/oplus/camera/k/b;
.super Ljava/lang/Object;
.source "HeicProcessor.java"


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/k/b;->b:Landroid/os/Handler;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeicProcessor constructor, is8bits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeicProcessor"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Landroid/os/HandlerThread;

    const/4 v0, -0x2

    const-string v1, "HeifThread"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    .line 42
    iget-object p1, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 43
    iget-object p1, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/k/b;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "addIccProfile, add icc_profile end."

    const-string v1, "HeicProcessor"

    const-string v2, "com.oplus.feature.DCIP3.support"

    .line 113
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "addIccProfile, add icc_profile start."

    .line 118
    invoke-static {v1, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/k/b;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    .line 120
    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 122
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/jni/IccProfile;->writeHeifIccProfile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "addIccProfile, add icc_profile error"

    .line 124
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 127
    iput-object v2, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 128
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p2}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 127
    iput-object v2, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 128
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    throw p1
.end method

.method private a(Landroid/graphics/Bitmap;IIIILcom/oplus/exif/OplusExifInterface;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeHeicByBitmap started, bitmap: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "HeicProcessor"

    invoke-static {v6, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 141
    :cond_0
    invoke-direct {v1, v4, v5}, Lcom/oplus/camera/k/b;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    if-nez v7, :cond_2

    .line 146
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 147
    invoke-virtual {v2, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 150
    invoke-direct {v1, v3}, Lcom/oplus/camera/k/b;->a(Lcom/oplus/exif/OplusExifInterface;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 154
    array-length v3, v2

    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v9

    :goto_0
    const-string v3, "encodeHeicByBitmap, use internal heif writer"

    .line 157
    invoke-static {v6, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Lcom/oplus/media/OplusHeifWriter;

    invoke-direct {v3}, Lcom/oplus/media/OplusHeifWriter;-><init>()V

    const/4 v15, 0x2

    move-object v10, v3

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v16, p5

    move/from16 v17, p4

    .line 161
    invoke-virtual/range {v10 .. v17}, Lcom/oplus/media/OplusHeifWriter;->createPrimaryImage(IIIIIII)Z

    .line 162
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, v6, v2, v0}, Lcom/oplus/media/OplusHeifWriter;->processPrimaryImage([B[BLjava/io/FileDescriptor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 165
    iput-object v9, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    .line 164
    iget-object v2, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 165
    iput-object v9, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 166
    throw v0

    :cond_2
    const/4 v7, 0x0

    .line 171
    :try_start_1
    new-instance v10, Landroidx/c/d$a;

    const/4 v11, 0x2

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct {v10, v0, v12, v13, v11}, Landroidx/c/d$a;-><init>(Ljava/io/FileDescriptor;III)V

    move/from16 v0, p4

    .line 172
    invoke-virtual {v10, v0}, Landroidx/c/d$a;->a(I)Landroidx/c/d$a;

    move-result-object v0

    const/4 v10, 0x1

    .line 173
    invoke-virtual {v0, v10}, Landroidx/c/d$a;->a(Z)Landroidx/c/d$a;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v10}, Landroidx/c/d$a;->c(I)Landroidx/c/d$a;

    move-result-object v0

    move/from16 v10, p5

    .line 175
    invoke-virtual {v0, v10}, Landroidx/c/d$a;->b(I)Landroidx/c/d$a;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v7}, Landroidx/c/d$a;->d(I)Landroidx/c/d$a;

    move-result-object v0

    iget-object v10, v1, Lcom/oplus/camera/k/b;->b:Landroid/os/Handler;

    .line 177
    invoke-virtual {v0, v10}, Landroidx/c/d$a;->a(Landroid/os/Handler;)Landroidx/c/d$a;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroidx/c/d$a;->a()Landroidx/c/d;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v9

    :goto_1
    if-nez v10, :cond_3

    .line 184
    iget-object v0, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 185
    iput-object v9, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    return-void

    .line 189
    :cond_3
    invoke-virtual {v10}, Landroidx/c/d;->a()V

    .line 191
    invoke-direct {v1, v3}, Lcom/oplus/camera/k/b;->a(Lcom/oplus/exif/OplusExifInterface;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 194
    array-length v3, v0

    sub-int/2addr v3, v8

    invoke-virtual {v10, v7, v0, v8, v3}, Landroidx/c/d;->a(I[BII)V

    .line 197
    :cond_4
    invoke-virtual {v10, v2}, Landroidx/c/d;->a(Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x0

    .line 200
    :try_start_2
    invoke-virtual {v10, v2, v3}, Landroidx/c/d;->a(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    :goto_2
    invoke-virtual {v10}, Landroidx/c/d;->close()V

    .line 205
    iget-object v0, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 206
    iput-object v9, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 202
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeHeicByBitmap, stop heifWriter error, heifWriter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 210
    :goto_3
    invoke-direct {v1, v4, v5}, Lcom/oplus/camera/k/b;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void

    .line 204
    :goto_4
    invoke-virtual {v10}, Landroidx/c/d;->close()V

    .line 205
    iget-object v2, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 206
    iput-object v9, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 207
    throw v0

    .line 137
    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodeHeicByBitmap error, resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeParcelFD, close parcelFD error, parcelFD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeicProcessor"

    invoke-static {v0, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/oplus/exif/OplusExifInterface;)[B
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/oplus/exif/OplusExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x2

    .line 58
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 59
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, -0x28

    aput-byte v4, v2, v3

    .line 62
    invoke-virtual {p1, v2, v1}, Lcom/oplus/exif/OplusExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exif io exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeicProcessor"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/FileDescriptor;
    .locals 4

    const-string v0, "HeicProcessor"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "rw"

    .line 217
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 219
    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDescriptor, dup fd error, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDescriptor, fd error, uri: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 230
    iput-object v1, p0, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    move-object p1, v1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/k/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IILcom/oplus/exif/OplusExifInterface;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 11

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/oplus/camera/k/b;->a(Landroid/graphics/Bitmap;IIIILcom/oplus/exif/OplusExifInterface;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, use bitmap, end, costTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeicProcessor"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([BLcom/oplus/exif/OplusExifInterface;IIIIIIILandroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    const-string v4, "HeicProcessor"

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 89
    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/k/b;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v7

    move-object/from16 v8, p2

    .line 91
    invoke-direct {v1, v8}, Lcom/oplus/camera/k/b;->a(Lcom/oplus/exif/OplusExifInterface;)[B

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x6

    .line 94
    array-length v10, v8

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 97
    :try_start_0
    new-instance v15, Lcom/oplus/media/OplusHeifWriter;

    invoke-direct {v15}, Lcom/oplus/media/OplusHeifWriter;-><init>()V

    move-object v10, v15

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object v9, v15

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    .line 98
    invoke-virtual/range {v10 .. v17}, Lcom/oplus/media/OplusHeifWriter;->createPrimaryImage(IIIIIII)Z

    .line 99
    invoke-virtual {v9, v0, v8, v7}, Lcom/oplus/media/OplusHeifWriter;->processPrimaryImage([B[BLjava/io/FileDescriptor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    const/4 v7, 0x0

    .line 103
    iput-object v7, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 102
    iget-object v2, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Lcom/oplus/camera/k/b;->a(Landroid/os/ParcelFileDescriptor;)V

    const/4 v2, 0x0

    .line 103
    iput-object v2, v1, Lcom/oplus/camera/k/b;->c:Landroid/os/ParcelFileDescriptor;

    .line 104
    throw v0

    .line 107
    :cond_1
    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/k/b;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process, use heicData, end, costTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process error, resolver: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", heicData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
