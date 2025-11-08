.class public final Lcom/oplus/c/a/b;
.super Ljava/lang/Object;
.source "BitmapDecodeManager.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/oplus/c/a/b;

    invoke-direct {v0}, Lcom/oplus/c/a/b;-><init>()V

    sput-object v0, Lcom/oplus/c/a/b;->a:Lcom/oplus/c/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/oplus/c/a/e/b;->a(Lcom/oplus/c/a/b/a;)Ljava/lang/String;

    move-result-object v6

    .line 47
    sget-object v1, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    invoke-virtual {v1, v0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object v1

    const-string v2, "key"

    invoke-static {v6, v2}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/oplus/c/a/a/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v14, "BitmapDecodeManager"

    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageBitmap key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", has cache cost time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v10, p2

    .line 52
    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x0

    .line 54
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/io/Closeable;

    move-object v9, v15

    check-cast v9, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object v1, v8

    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    .line 55
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v15, v8

    goto/16 :goto_3

    :cond_1
    move-object v1, v15

    :goto_0
    :try_start_3
    invoke-static {v1, v15, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v2, Lcom/oplus/c/a/b;->a:Lcom/oplus/c/a/b;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/c/a/b/a;->h()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/oplus/c/a/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 57
    sget-object v1, Lkotlinx/coroutines/as;->a:Lkotlinx/coroutines/as;

    move-object/from16 v17, v1

    check-cast v17, Lkotlinx/coroutines/y;

    invoke-static {}, Lkotlinx/coroutines/aj;->c()Lkotlinx/coroutines/t;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lc/c/g;

    const/16 v19, 0x0

    new-instance v20, Lcom/oplus/c/a/b$a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v4, p1

    move-object/from16 v7, p0

    move-object v15, v8

    move-object/from16 v23, v9

    move-wide v8, v12

    move/from16 v10, p2

    move-object/from16 v11, p1

    :try_start_4
    invoke-direct/range {v1 .. v11}, Lcom/oplus/c/a/b$a;-><init>(Landroid/graphics/Bitmap;Lc/c/d;Lcom/oplus/c/a/b/a;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Landroid/content/Context;JILcom/oplus/c/a/b/a;)V

    check-cast v20, Lc/f/a/m;

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/y;Lc/c/g;Lkotlinx/coroutines/z;Lc/f/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/ay;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageBitmap decode , total time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v14, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v1, v23

    .line 63
    :try_start_5
    invoke-static {v15, v1}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v16

    :catchall_0
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_4

    :cond_2
    move-object v15, v8

    move-object v1, v9

    :try_start_6
    const-string v0, "getImageBitmap decodeFileDescriptor failed "

    .line 65
    invoke-static {v14, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lc/s;->a:Lc/s;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 54
    :try_start_7
    invoke-static {v15, v1}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "getImageBitmap openFileDescriptor failed "

    .line 68
    invoke-static {v14, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v15, v8

    :goto_1
    move-object v1, v9

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v15, v8

    :goto_2
    move-object v9, v0

    .line 54
    :goto_3
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :goto_4
    :try_start_9
    invoke-static {v15, v1}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    .line 71
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "getImageBitmap"

    invoke-static {v14, v1, v0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private final a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p2, :cond_0

    return-object p1

    .line 162
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p2

    .line 163
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "Bitmap.createBitmap(bitm\u2026, width, height, m, true)"

    invoke-static {p0, p1}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)[I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/oplus/c/a/e/b;->a()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    invoke-static {p1}, Lcom/oplus/c/a/e/b;->a(Lcom/oplus/c/a/b/a;)Ljava/lang/String;

    move-result-object v2

    .line 84
    sget-object v3, Lcom/oplus/c/a/a/a;->a:Lcom/oplus/c/a/a/a$a;

    invoke-virtual {v3, p0}, Lcom/oplus/c/a/a/a$a;->a(Landroid/content/Context;)Lcom/oplus/c/a/a/a;

    move-result-object v3

    const-string v4, "key"

    invoke-static {v2, v4}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/oplus/c/a/a/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "BitmapDecodeManager"

    if-eqz v2, :cond_0

    const-string p0, "getImageBitmapSize from cache"

    .line 85
    invoke-static {v6, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-array p0, v4, [I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    aput p1, p0, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    aput p1, p0, v5

    return-object p0

    .line 88
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 90
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object p1

    const-string v7, "r"

    invoke-virtual {p0, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    move-object p1, p2

    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v7, p0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_1

    .line 93
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, p2

    :goto_0
    invoke-static {v7, p2, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageBitmapSize decode  , total time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v6, v0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lc/s;->a:Lc/s;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "getImageBitmapSize from decode"

    .line 100
    invoke-static {v6, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-array p0, v4, [I

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p1, p0, v3

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p0, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 92
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {p0, p1}, Lc/e/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 104
    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "getImageBitmap"

    invoke-static {v6, p1, p0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method
