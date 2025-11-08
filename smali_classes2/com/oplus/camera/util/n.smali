.class public Lcom/oplus/camera/util/n;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/n$b;,
        Lcom/oplus/camera/util/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/util/n$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Llibcore/io/a;

.field private c:Ljava/io/FileFilter;

.field private d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    .line 456
    new-instance v0, Lcom/oplus/camera/util/n$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/util/n$4;-><init>(Lcom/oplus/camera/util/n;)V

    iput-object v0, p0, Lcom/oplus/camera/util/n;->c:Ljava/io/FileFilter;

    .line 471
    new-instance v0, Lcom/oplus/camera/util/n$5;

    invoke-direct {v0, p0}, Lcom/oplus/camera/util/n$5;-><init>(Lcom/oplus/camera/util/n;)V

    iput-object v0, p0, Lcom/oplus/camera/util/n;->d:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/oplus/camera/util/n$1;

    const/high16 v1, 0x100000

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/util/n$1;-><init>(Lcom/oplus/camera/util/n;I)V

    sput-object v0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/util/n$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/util/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/oplus/camera/util/n;
    .locals 1

    .line 117
    invoke-static {}, Lcom/oplus/camera/util/n$a;->a()Lcom/oplus/camera/util/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Llibcore/io/a;
    .locals 2

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p1}, Llibcore/io/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-eqz p1, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {p1}, Llibcore/io/a;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const-wide/32 p1, 0x3200000

    const/4 v1, 0x1

    .line 139
    :try_start_1
    invoke-static {v0, v1, v1, p1, p2}, Llibcore/io/a;->a(Ljava/io/File;IIJ)Llibcore/io/a;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/util/n;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/util/n;->e()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Llibcore/io/a$a;Z)Z
    .locals 4

    const-string p0, "saveBitmapToDiskLruCache X"

    const-string v0, "ThumbnailCacheUtil"

    const-string v1, "saveBitmapToDiskLruCache"

    .line 149
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "saveBitmapToDiskLruCache, bitmap: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/16 p3, 0x5a

    goto :goto_0

    :cond_1
    const/16 p3, 0x4b

    .line 162
    :goto_0
    :try_start_0
    invoke-virtual {p2, v1}, Llibcore/io/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 163
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBitmapToDiskLruCache, bitmap compress fail, byte count: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isRecycled: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 179
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_3
    :goto_1
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 175
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 179
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_4
    :goto_2
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_3
    if-eqz v2, :cond_5

    .line 179
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 181
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_5
    :goto_4
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    throw p1
.end method

.method static synthetic b(Lcom/oplus/camera/util/n;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/util/n;->f()V

    return-void
.end method

.method static synthetic d()Landroid/util/LruCache;
    .locals 1

    .line 38
    sget-object v0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method private e()V
    .locals 11

    const-string v0, "ThumbnailCacheUtil"

    const-string v1, "clearOldSmallImages"

    .line 303
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 306
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez v1, :cond_1

    const-string p0, "clearOldSmallImages, mDiskLruCache null"

    .line 312
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_1
    invoke-virtual {v1}, Llibcore/io/a;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "clearOldSmallImages, directory null"

    .line 320
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/util/n;->c:Ljava/io/FileFilter;

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "clearOldSmallImages, files null"

    .line 328
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_3
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 334
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    sub-long/2addr v7, v9

    if-eqz v6, :cond_4

    const-wide/32 v9, 0x493e0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_5

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_6

    :cond_5
    const-string v5, "."

    .line 339
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 342
    :try_start_0
    iget-object v6, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    invoke-virtual {v6, v5}, Llibcore/io/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 344
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearOldSmallImages, title: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timeGap: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private f()V
    .locals 8

    const-string v0, "ThumbnailCacheUtil"

    const-string v1, "clearOldSmallImageFiles"

    .line 434
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/oplus/camera/util/n;->c:Ljava/io/FileFilter;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "clearOldSmallImageFiles, files null"

    .line 440
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 449
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearOldSmallImageFiles, fileName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", timeGap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 64
    sget-object p0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez v0, :cond_1

    const-string p0, "ThumbnailCacheUtil"

    const-string p1, "saveSmallImageForGallery, mDiskLruCache null"

    .line 201
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Llibcore/io/a;->b(Ljava/lang/String;)Llibcore/io/a$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 210
    invoke-direct {p0, p2, p1, p3}, Lcom/oplus/camera/util/n;->a(Landroid/graphics/Bitmap;Llibcore/io/a$a;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 211
    invoke-virtual {p1}, Llibcore/io/a$a;->a()V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {p1}, Llibcore/io/a$a;->b()V

    .line 216
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    invoke-virtual {p0}, Llibcore/io/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/util/n$b;)V
    .locals 0

    .line 58
    sget-object p0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/oplus/camera/util/n$b;
    .locals 4

    .line 70
    sget-object p0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/util/n$b;

    .line 72
    sget-object p1, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/util/n$b;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 75
    sget-object v0, Lcom/oplus/camera/util/n;->a:Landroid/util/LruCache;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/oplus/camera/util/n$b;

    invoke-direct {v1}, Lcom/oplus/camera/util/n$b;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/util/n$b;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/util/n$b;->a(J)V

    .line 79
    invoke-virtual {p0}, Lcom/oplus/camera/util/n$b;->a()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/util/n$b;->a(I)V

    .line 80
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/util/n$b;->a(Landroid/graphics/Bitmap;)V

    .line 82
    monitor-exit v0

    return-object v1

    .line 84
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/camera/util/n$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/util/n$2;-><init>(Lcom/oplus/camera/util/n;)V

    const-string p0, "clearOldSmallImagesThread"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 8

    const-string v0, "ThumbnailCacheUtil"

    if-nez p2, :cond_0

    const-string p0, "saveSmallImageForGalleryFile, bitmap is null"

    .line 354
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/util/n;->c:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const-string v2, "_quick.jpg"

    if-eqz v1, :cond_4

    .line 367
    array-length v3, v1

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    .line 368
    iget-object p0, p0, Lcom/oplus/camera/util/n;->d:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 p0, 0x1d

    .line 370
    :goto_0
    array-length v3, v1

    if-ge p0, v3, :cond_4

    .line 371
    aget-object v3, v1, p0

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 373
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/32 v6, 0x493e0

    cmp-long v6, v6, v4

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 376
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    const/16 p0, 0x5a

    goto :goto_1

    :cond_5
    const/16 p0, 0x4b

    :goto_1
    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    const-string v2, "_tmp.jpg"

    :goto_2
    const-string p3, "com.oplus.feature.DCIP3.support"

    .line 384
    invoke-static {p3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p3

    const-string v1, "saveSmallImageForGalleryFile, title: "

    if-eqz p3, :cond_7

    .line 385
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 385
    invoke-static {p2, p0, p3}, Lcom/oplus/camera/jni/IccProfile;->compressBitmapToFile(Landroid/graphics/Bitmap;ILjava/lang/String;)I

    move-result p0

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ret: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    .line 393
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 394
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p3, p0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    .line 395
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isCompressed: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object p3, v3

    goto :goto_5

    :catch_0
    move-exception p0

    move-object p3, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 399
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_8

    .line 403
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void

    :goto_5
    if-eqz p3, :cond_9

    .line 403
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    :cond_9
    :goto_6
    throw p0
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbnailBitmapFromCache, title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailCacheUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 231
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez v2, :cond_1

    const-string p0, "getThumbnailBitmapFromCache, mDiskLruCache null"

    .line 237
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 242
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    invoke-virtual {p0, p1}, Llibcore/io/a;->a(Ljava/lang/String;)Llibcore/io/a$c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_3

    :try_start_1
    const-string p1, "getThumbnailBitmapFromCache, snapShot null"

    .line 245
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    .line 262
    :try_start_2
    invoke-virtual {p0}, Llibcore/io/a$c;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0

    .line 250
    :cond_3
    :try_start_3
    invoke-virtual {p0, v3}, Llibcore/io/a$c;->a(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    :try_start_4
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    .line 257
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    .line 262
    invoke-virtual {p0}, Llibcore/io/a$c;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 266
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_9

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_a

    :catch_3
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_a

    :catch_4
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    .line 253
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_6

    .line 257
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 262
    invoke-virtual {v1}, Llibcore/io/a$c;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    .line 266
    :goto_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    return-object v0

    :catchall_3
    move-exception p0

    :goto_9
    move-object v0, p1

    :goto_a
    if-eqz v0, :cond_8

    .line 257
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_6
    move-exception p1

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz v1, :cond_9

    .line 262
    invoke-virtual {v1}, Llibcore/io/a$c;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_d

    .line 266
    :goto_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    :cond_9
    :goto_d
    throw p0
.end method

.method public c()V
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/camera/util/n$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/util/n$3;-><init>(Lcom/oplus/camera/util/n;)V

    const-string p0, "clearOldSmallImageFilesThread"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Z)Llibcore/io/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    .line 280
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/util/n;->b:Llibcore/io/a;

    if-nez p0, :cond_1

    const-string p0, "ThumbnailCacheUtil"

    const-string p1, "removeSmallImageForGallery, mDiskLruCache null"

    .line 281
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Llibcore/io/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getThumbnailBitmapFromPrivateCache, title: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThumbnailCacheUtil"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/camera/Storage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_tmp.jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 421
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
