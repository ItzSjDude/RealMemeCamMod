.class public Lcom/oplus/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/oplus/camera/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/Storage$CameraPicture;
    }
.end annotation


# static fields
.field private static final A:Landroid/net/Uri;

.field private static B:Landroid/content/Context;

.field private static C:Ljava/lang/String;

.field private static D:Z

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:I

.field public static w:I

.field public static x:Z

.field public static y:Z

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lcom/oplus/camera/Storage;->g:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/oplus/camera/Storage;->i:Ljava/lang/String;

    .line 96
    sput-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    .line 97
    sput-object v0, Lcom/oplus/camera/Storage;->k:Ljava/lang/String;

    .line 98
    sput-object v0, Lcom/oplus/camera/Storage;->l:Ljava/lang/String;

    .line 99
    sput-object v0, Lcom/oplus/camera/Storage;->m:Ljava/lang/String;

    .line 100
    sput-object v0, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    .line 101
    sput-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    .line 102
    sput-object v0, Lcom/oplus/camera/Storage;->p:Ljava/lang/String;

    .line 103
    sput-object v0, Lcom/oplus/camera/Storage;->q:Ljava/lang/String;

    .line 104
    sput-object v0, Lcom/oplus/camera/Storage;->r:Ljava/lang/String;

    .line 105
    sput-object v0, Lcom/oplus/camera/Storage;->s:Ljava/lang/String;

    .line 106
    sput-object v0, Lcom/oplus/camera/Storage;->t:Ljava/lang/String;

    const-string v1, "uninitied"

    .line 107
    sput-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const/4 v1, 0x0

    .line 109
    sput v1, Lcom/oplus/camera/Storage;->v:I

    .line 110
    sput v1, Lcom/oplus/camera/Storage;->w:I

    .line 112
    sput-boolean v1, Lcom/oplus/camera/Storage;->x:Z

    .line 113
    sput-boolean v1, Lcom/oplus/camera/Storage;->y:Z

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/Storage;->z:Ljava/lang/String;

    const-string v2, "content://com.open.gallery.smart.provider"

    .line 139
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "fast_captures"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    .line 150
    sput-object v0, Lcom/oplus/camera/Storage;->C:Ljava/lang/String;

    .line 151
    sput-boolean v1, Lcom/oplus/camera/Storage;->D:Z

    return-void
.end method

.method private static a(Landroid/os/storage/StorageManager;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 935
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/ExifInterface;)Landroid/util/Size;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1682
    :cond_0
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    const-string v3, "ImageWidth"

    invoke-virtual {p0, v3, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "ImageLength"

    .line 1683
    invoke-virtual {p0, v4, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/util/Size;-><init>(II)V

    .line 1685
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/Storage$CameraPicture;
    .locals 20

    move-object/from16 v1, p0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Storage"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-le v0, v3, :cond_0

    .line 310
    iget-wide v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    cmp-long v0, v4, v7

    if-nez v0, :cond_0

    return-object v6

    .line 315
    :cond_0
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v7, v8}, Lcom/oplus/camera/util/Util;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    sget-object v7, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v8, "off"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 320
    sget-object v7, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_2
    sget-object v7, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    .line 327
    :goto_1
    iget-object v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v9, "jpeg"

    const-string v10, ".jpg"

    const-string v11, "raw"

    const-string v12, "heic_10bits"

    const-string v13, "heic_8bits"

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    .line 329
    :cond_3
    iget-object v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ".dng"

    goto :goto_4

    .line 331
    :cond_4
    iget-object v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 332
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    return-object v6

    :cond_6
    :goto_2
    const-string v8, ".heic"

    goto :goto_4

    :cond_7
    :goto_3
    move-object v8, v10

    .line 340
    :goto_4
    iget-wide v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    cmp-long v14, v14, v4

    if-lez v14, :cond_8

    .line 341
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 342
    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-static {v15}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 344
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 347
    :goto_5
    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 348
    sput-object v0, Lcom/oplus/camera/Storage;->C:Ljava/lang/String;

    goto :goto_6

    .line 349
    :cond_9
    sget-object v15, Lcom/oplus/camera/Storage;->C:Ljava/lang/String;

    if-eqz v15, :cond_a

    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    if-nez v15, :cond_a

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oplus/camera/Storage;->C:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 351
    sput-object v6, Lcom/oplus/camera/Storage;->C:Ljava/lang/String;

    .line 354
    :cond_a
    :goto_6
    iget-object v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    const-string v15, "night"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v0, "addImage, nightNode Raw return"

    .line 355
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 361
    :cond_b
    new-instance v7, Landroid/content/ContentValues;

    const/16 v15, 0xc

    invoke-direct {v7, v15}, Landroid/content/ContentValues;-><init>(I)V

    const-string v15, "title"

    .line 362
    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "_display_name"

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-wide v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "datetaken"

    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "_data"

    const-string v4, "mime_type"

    if-eqz v0, :cond_c

    const-string v0, "image/x-adobe-dng"

    .line 367
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 368
    :cond_c
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "image/jpeg"

    .line 369
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 370
    :cond_d
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 371
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, "image/heic"

    .line 372
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v7, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_f
    :goto_7
    iget v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "orientation"

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "_size"

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "relative_path"

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 384
    :try_start_0
    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 385
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 386
    :cond_10
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    :goto_8
    move-object v6, v0

    goto :goto_a

    :cond_11
    const-string v0, "on"

    .line 388
    sget-object v9, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v5

    goto :goto_9

    :cond_12
    move v0, v4

    .line 389
    :goto_9
    invoke-static {v0}, Lcom/oplus/camera/Storage;->c(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    .line 392
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addImage, insertImage, uri: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v7, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media_id"

    .line 395
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    invoke-static {v1, v7, v6}, Lcom/oplus/camera/Storage;->c(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V

    .line 400
    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    if-eqz v0, :cond_15

    .line 401
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    if-nez v0, :cond_13

    .line 402
    invoke-static {v5, v1, v6}, Lcom/oplus/camera/Storage;->a(ZLcom/oplus/camera/Storage$CameraPicture;Landroid/net/Uri;)V

    goto :goto_b

    .line 403
    :cond_13
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    if-nez v0, :cond_14

    .line 404
    invoke-static {v4, v1, v6}, Lcom/oplus/camera/Storage;->a(ZLcom/oplus/camera/Storage$CameraPicture;Landroid/net/Uri;)V

    goto :goto_b

    .line 405
    :cond_14
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v0, :cond_16

    .line 406
    invoke-static {v6, v1}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V

    goto :goto_b

    .line 408
    :cond_15
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 409
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImage, path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v6, v0, v3}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;[B)Z

    .line 413
    invoke-static {v6, v1}, Lcom/oplus/camera/Storage;->b(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 416
    :cond_16
    :goto_b
    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    if-eqz v0, :cond_17

    iget-wide v11, v1, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const-wide/16 v16, -0x1

    cmp-long v0, v11, v16

    if-nez v0, :cond_17

    .line 417
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 419
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    if-eqz v0, :cond_17

    .line 420
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "Failed to write MediaStore."

    .line 429
    invoke-static {v2, v3, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_17
    :goto_c
    iput-object v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 437
    iput-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 438
    iput-boolean v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->B:Z

    .line 439
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    if-ne v0, v5, :cond_19

    :cond_18
    move v4, v5

    :cond_19
    iput-boolean v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->C:Z

    return-object v1

    .line 434
    :goto_d
    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 594
    sget-object v0, Lcom/oplus/camera/Storage;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 577
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    goto :goto_0

    .line 582
    :cond_0
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    :goto_0
    const-string v1, ""

    .line 585
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_1

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 588
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Cshot"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Storage"

    const-string v1, "initializeStoragePath()"

    .line 154
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0}, Lcom/oplus/camera/Storage;->b(Landroid/content/Context;)V

    .line 157
    invoke-static {p0}, Lcom/oplus/camera/Storage;->c(Landroid/content/Context;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->q:Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->E(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->s:Ljava/lang/String;

    .line 166
    sget-boolean v0, Lcom/oplus/camera/Storage;->D:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->t:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->t:Ljava/lang/String;

    .line 174
    :goto_0
    sget-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->n:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/oplus/camera/Storage;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->p:Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/oplus/camera/Storage;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Storage;->r:Ljava/lang/String;

    .line 177
    sput-object p0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    .line 178
    invoke-static {}, Lcom/oplus/camera/Storage;->g()D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sput-boolean p0, Lcom/oplus/camera/Storage;->y:Z

    return-void
.end method

.method public static a(Landroid/net/Uri;)V
    .locals 3

    .line 1625
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1628
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 1634
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 1637
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1639
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1643
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1646
    invoke-static {p0}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    move-result v0

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensurePathExist folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Storage"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1697
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1698
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "media_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string p0, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 1701
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Storage"

    const-string v0, "addImageToLockScreenGallery, err: "

    .line 1703
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 3

    .line 532
    invoke-static {p1}, Lcom/oplus/camera/Storage;->f(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/exif/OplusExifInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 537
    :try_start_0
    iget-object v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    iget-object p0, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-virtual {v0, p0, v1}, Lcom/oplus/exif/OplusExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 547
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 543
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 547
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v1, :cond_2

    .line 547
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 549
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 552
    :cond_2
    :goto_2
    throw p0
.end method

.method public static a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 8

    .line 868
    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result p0

    sput-boolean p0, Lcom/oplus/camera/Storage;->x:Z

    .line 869
    invoke-static {}, Lcom/oplus/camera/Storage;->g()D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double p0, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sput-boolean p0, Lcom/oplus/camera/Storage;->y:Z

    .line 871
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStoragePlace, before sStoragePlace: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sStorageOverrideState: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oplus/camera/Storage;->v:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sbSmallEmmc: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/camera/Storage;->y:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sbHasSDCard: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/camera/Storage;->x:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Storage"

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    sput v0, Lcom/oplus/camera/Storage;->v:I

    .line 875
    sput-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 876
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string p1, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x5

    const-string v4, "invalid"

    const/4 v5, 0x3

    if-nez p0, :cond_1

    .line 879
    invoke-static {}, Lcom/oplus/camera/Storage;->f()Z

    move-result v6

    if-nez v6, :cond_1

    .line 880
    sput v0, Lcom/oplus/camera/Storage;->v:I

    .line 881
    sput-object v4, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 882
    sput v5, Lcom/oplus/camera/Storage;->w:I

    return-void

    .line 887
    :cond_1
    sget-object v6, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v6}, Lcom/oplus/camera/Storage;->b(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/oplus/camera/Storage;->w:I

    .line 889
    sget v6, Lcom/oplus/camera/Storage;->w:I

    const/4 v7, 0x2

    if-eq v6, v1, :cond_3

    if-eq v6, v7, :cond_2

    if-eq v6, v5, :cond_2

    goto :goto_4

    .line 918
    :cond_2
    sput v0, Lcom/oplus/camera/Storage;->v:I

    .line 919
    sput-object v4, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 920
    sput v5, Lcom/oplus/camera/Storage;->w:I

    goto :goto_4

    :cond_3
    if-eqz p0, :cond_7

    .line 892
    sget-boolean p0, Lcom/oplus/camera/Storage;->x:Z

    if-eqz p0, :cond_6

    const-string p0, "on"

    .line 893
    invoke-static {p0}, Lcom/oplus/camera/Storage;->b(Ljava/lang/String;)I

    move-result p0

    if-eq v1, p0, :cond_5

    if-ne v7, p0, :cond_4

    goto :goto_1

    :cond_4
    if-nez p0, :cond_a

    .line 898
    sput v7, Lcom/oplus/camera/Storage;->v:I

    goto :goto_3

    .line 896
    :cond_5
    :goto_1
    sput v1, Lcom/oplus/camera/Storage;->v:I

    goto :goto_3

    .line 901
    :cond_6
    sput v1, Lcom/oplus/camera/Storage;->v:I

    goto :goto_3

    .line 904
    :cond_7
    invoke-static {p1}, Lcom/oplus/camera/Storage;->b(Ljava/lang/String;)I

    move-result p0

    if-eq v1, p0, :cond_9

    if-ne v7, p0, :cond_8

    goto :goto_2

    :cond_8
    if-nez p0, :cond_a

    .line 909
    sput v5, Lcom/oplus/camera/Storage;->v:I

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p0, 0x4

    .line 907
    sput p0, Lcom/oplus/camera/Storage;->v:I

    .line 913
    :cond_a
    :goto_3
    sput-object v4, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 927
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateStoragePlace, after sStoragePlace: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/oplus/camera/Storage;->v:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "Storage"

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x1

    .line 1058
    :try_start_0
    sget-object p0, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1059
    :cond_1
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1061
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "newImageForGallery, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "newImageForGallery, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 638
    sget-boolean v0, Lcom/oplus/camera/Storage;->D:Z

    if-eqz v0, :cond_0

    return-void

    .line 642
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-static {p0}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 6

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeLastModified, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Storage"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1602
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 1605
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeLastModified, lastModified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "changeLastModified, exception"

    .line 1609
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeLastModified X, path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(ZLcom/oplus/camera/Storage$CameraPicture;Landroid/net/Uri;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1732
    new-instance v15, Lcom/oplus/camera/k/b;

    invoke-direct {v15, v0}, Lcom/oplus/camera/k/b;-><init>(Z)V

    .line 1735
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->b:Lcom/oplus/camera/aps/util/CameraApsExifData;

    if-eqz v4, :cond_0

    .line 1736
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->b:Lcom/oplus/camera/aps/util/CameraApsExifData;

    iget-wide v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v4, v5, v6}, Lcom/oplus/camera/k/a;->a(Lcom/oplus/camera/aps/util/CameraApsExifData;J)Lcom/oplus/exif/OplusExifInterface;

    move-result-object v4

    goto :goto_0

    .line 1738
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/Storage;->f(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/exif/OplusExifInterface;

    move-result-object v4

    :goto_0
    move-object v8, v4

    if-eqz v0, :cond_1

    .line 1742
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oplus/camera/k/a;->a(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/Context;)V

    .line 1743
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    iget v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    const/16 v7, 0x61

    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    move-object v4, v15

    move-object/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/oplus/camera/k/b;->a(Landroid/graphics/Bitmap;IILcom/oplus/exif/OplusExifInterface;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1745
    invoke-virtual {v15}, Lcom/oplus/camera/k/b;->a()V

    goto :goto_1

    .line 1747
    :cond_1
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    iget v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    iget v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    iget v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->q:I

    iget v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->r:I

    const/4 v11, 0x1

    const/16 v12, 0x61

    iget v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    move-object v4, v15

    move-object v6, v8

    move v8, v0

    move-object v0, v15

    move-object/from16 v15, p2

    invoke-virtual/range {v4 .. v15}, Lcom/oplus/camera/k/b;->a([BLcom/oplus/exif/OplusExifInterface;IIIIIIILandroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1750
    invoke-virtual {v0}, Lcom/oplus/camera/k/b;->a()V

    .line 1753
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processHeicEncode, costTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storage"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;[B)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "w"

    .line 657
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 661
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    if-eqz v1, :cond_1

    .line 674
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 676
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return p0

    :cond_2
    if-eqz v1, :cond_3

    .line 674
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 676
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 668
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 674
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 676
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_5

    .line 674
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 676
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 679
    :cond_5
    :goto_4
    throw p0
.end method

.method public static a(Z)Z
    .locals 3

    .line 733
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasInternalStorage, requireWriteAccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storage"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mounted"

    .line 737
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 739
    invoke-static {}, Lcom/oplus/camera/Storage;->i()Z

    move-result p0

    return p0

    :cond_0
    return v2

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "mounted_ro"

    .line 743
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStorageStatus, storagePlace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storage"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const-string v0, "invalid"

    .line 972
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "uninitied"

    .line 973
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 979
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remaining: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-wide/32 v0, 0x3200000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x2

    return p0
.end method

.method public static b(Lcom/oplus/camera/Storage$CameraPicture;)Landroid/net/Uri;
    .locals 16

    move-object/from16 v1, p0

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newImage, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Storage"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    sget-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    goto :goto_0

    .line 1147
    :cond_0
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 1154
    :cond_1
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v5, "raw"

    const-string v6, "heic_10bits"

    const-string v7, "heic_8bits"

    const-string v8, "jpeg"

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1156
    :cond_2
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1158
    :cond_3
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1159
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1162
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newImage, Invalid pictureFormat: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1169
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;)V

    .line 1172
    new-instance v4, Landroid/content/ContentValues;

    const/16 v9, 0xa

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1173
    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    const-string v10, "title"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-wide v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "datetaken"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1175
    iget v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "width"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    iget v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "height"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "relative_path"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 1178
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "is_pending"

    invoke-virtual {v4, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    iget-wide v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    const-string v11, "_tmp"

    const-string v12, ""

    const-string v13, ".jpg"

    if-lez v10, :cond_6

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_00"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_00_tmp"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v3, v5

    goto/16 :goto_7

    .line 1183
    :cond_6
    iget-boolean v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    const-string v14, ".heic"

    const-string v15, ".dng"

    if-eqz v10, :cond_b

    .line 1184
    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_3

    .line 1187
    :cond_7
    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_sr"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_sr_tmp"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1190
    :cond_8
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1191
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1192
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1185
    :cond_a
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_sr"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_sr_tmp"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1195
    :cond_b
    iget-boolean v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->S:Z

    if-eqz v10, :cond_10

    .line 1196
    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v3, "_sc_tmp"

    const-string v9, "_sc"

    if-eqz v10, :cond_f

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_4

    .line 1199
    :cond_c
    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1202
    :cond_d
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1203
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1204
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1197
    :cond_f
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1208
    :cond_10
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_6

    .line 1211
    :cond_11
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 1214
    :cond_12
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1215
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_5

    :cond_13
    move-object v3, v12

    goto :goto_7

    .line 1216
    :cond_14
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 1209
    :cond_15
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    const-string v5, "_display_name"

    .line 1221
    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v9, "mime_type"

    if-eqz v5, :cond_16

    const-string v5, "image/jpeg"

    .line 1224
    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1225
    :cond_16
    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1226
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    const-string v5, "image/heic"

    .line 1227
    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_8
    :try_start_0
    const-string v5, "on"

    .line 1233
    sget-object v10, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 1234
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_9

    :cond_19
    const/4 v5, 0x0

    .line 1233
    :goto_9
    invoke-static {v5}, Lcom/oplus/camera/Storage;->c(Z)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1235
    :try_start_1
    sget-object v10, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->THUMBNAIL_URI_CREATING_VARIABLE:Landroid/os/ConditionVariable;

    invoke-virtual {v10}, Landroid/os/ConditionVariable;->close()V

    .line 1237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newImage, uri: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", values: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-string v10, "title"

    .line 1240
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_display_name"

    .line 1241
    invoke-virtual {v4, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_data"

    .line 1242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->h(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datetaken"

    .line 1243
    iget-wide v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "media_type"

    const/4 v3, 0x1

    .line 1244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "relative_path"

    .line 1245
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media_id"

    .line 1246
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "image/jpeg"

    .line 1249
    invoke-virtual {v4, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1250
    :cond_1a
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1251
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const-string v0, "image/heic"

    .line 1252
    invoke-virtual {v4, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_1c
    :goto_a
    invoke-static {v1, v4, v5}, Lcom/oplus/camera/Storage;->a(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    .line 1262
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newImage, Failed to new image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :goto_c
    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    if-eqz v0, :cond_1d

    .line 1267
    new-instance v0, Lcom/oplus/camera/Storage$1;

    invoke-direct {v0, v5, v1}, Lcom/oplus/camera/Storage$1;-><init>(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    :cond_1d
    return-object v5
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 598
    sget-object v0, Lcom/oplus/camera/Storage;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .line 182
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeExternalSdBucketName, externalSdPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Storage"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v2, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100202

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100494

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/Storage;->l:Ljava/lang/String;

    .line 194
    sget-object p0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/camera/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/Storage;->i:Ljava/lang/String;

    .line 195
    sget-object p0, Lcom/oplus/camera/Storage;->l:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/camera/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/Storage;->k:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static b(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 6

    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 688
    :cond_0
    iget-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x0

    .line 692
    :try_start_0
    new-instance v1, Lcom/oplus/exif/OplusExifInterface;

    invoke-direct {v1}, Lcom/oplus/exif/OplusExifInterface;-><init>()V

    .line 694
    iget-object v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v2, :cond_2

    .line 695
    iget-object v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-virtual {v1, v2}, Lcom/oplus/exif/OplusExifInterface;->readExif([B)V

    .line 699
    :cond_2
    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v1, v2}, Lcom/oplus/exif/OplusExifInterface;->getTag(I)Lcom/oplus/exif/OplusExifTag;

    move-result-object v2

    .line 701
    iget-object v3, p1, Lcom/oplus/camera/Storage$CameraPicture;->G:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 702
    sget v3, Lcom/oplus/exif/OplusExifInterface;->TAG_MAKER_NOTE:I

    iget-object v4, p1, Lcom/oplus/camera/Storage$CameraPicture;->G:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v3

    .line 703
    invoke-virtual {v1, v3}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 706
    :goto_0
    iget-boolean v4, p1, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    .line 707
    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_USER_COMMENT:I

    const-string v4, "Oplus_"

    const/16 v5, 0x2000

    .line 708
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {v1, v2, v4}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v2

    .line 709
    invoke-virtual {v1, v2}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    :cond_4
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    return-void

    .line 716
    :cond_5
    iget-object v2, p1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 717
    iget-object p0, p1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-virtual {v1, p0, v0}, Lcom/oplus/exif/OplusExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 723
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 719
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 723
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 725
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_7

    .line 723
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 725
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 728
    :cond_7
    :goto_3
    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method private static b(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "Storage"

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, -0x1

    .line 1075
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1076
    sget-object p2, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1078
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImageForGallery, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateImageForGallery, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static b(Z)Z
    .locals 6

    .line 776
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasStorage, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requireWriteAccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storage"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mounted"

    .line 780
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "mounted_ro"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 782
    invoke-static {}, Lcom/oplus/camera/Storage;->k()Z

    move-result p0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasStorage, writable: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 787
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    invoke-static {}, Lcom/oplus/camera/Storage;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    return p0

    :cond_1
    return v4

    :cond_2
    if-nez p0, :cond_3

    .line 799
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 9

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableStorage, sContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storagePlace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storage"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    const-wide/16 v2, -0x2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1014
    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v6, "on"

    .line 1016
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1017
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "getAvailableStorage, file is null"

    .line 1021
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    :cond_2
    const-string v7, "off"

    .line 1024
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 1025
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-static {v8}, Lcom/oplus/camera/Storage;->a(Z)Z

    move-result v4

    goto :goto_0

    .line 1027
    :cond_3
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1028
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1029
    invoke-static {v8}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v4

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    return-wide v2

    .line 1036
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAvailableStorage, dir: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-direct {p0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    mul-long/2addr v4, v0

    return-wide v4

    :catch_0
    move-exception p0

    const-string v0, "Fail to access statfs"

    .line 1045
    invoke-static {v1, v0, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2
.end method

.method public static c(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 1656
    invoke-static {}, Lcom/oplus/camera/Storage;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1658
    :cond_0
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplusos.gallery3d.action.fastcapture.sandbox"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/oplus/camera/Storage;->D:Z

    return-void
.end method

.method public static c(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 11

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateQuickJpeg, format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storage"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1292
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;)V

    .line 1294
    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    const-string v2, ".heic"

    const-string v3, ".dng"

    const-string v4, "raw"

    const-string v5, ".jpg"

    const-string v6, "heic_10bits"

    const-string v7, "heic_8bits"

    const-string v8, "_quick"

    const-string v9, "jpeg"

    if-eqz v1, :cond_6

    .line 1295
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v10, "_sr_quick"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1297
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1299
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1300
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1301
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1296
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1303
    :cond_6
    iget-boolean v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->S:Z

    if-eqz v1, :cond_b

    .line 1304
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v10, "_sc_quick"

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 1306
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1308
    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1309
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1310
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1305
    :cond_a
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1313
    :cond_b
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 1315
    :cond_c
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1317
    :cond_d
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1318
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    const-string v1, ""

    goto :goto_5

    .line 1319
    :cond_f
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1314
    :cond_10
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    :goto_5
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 1325
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/camera/Storage;->h(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-wide v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 1328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    invoke-static {p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "relative_path"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1332
    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v1, "mime_type"

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6

    .line 1334
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1335
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const-string v0, "image/heic"

    .line 1336
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    :goto_6
    const-string v0, "image/jpeg"

    .line 1333
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/oplus/camera/Storage;->b(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V

    return-void
.end method

.method private static c(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "Storage"

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v1, -0x1

    .line 1093
    :try_start_0
    sget-object p0, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1094
    :cond_1
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageForGallery insert, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImageForGallery insert, result: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1104
    :try_start_1
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1105
    sget-object p2, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImageForGallery update, e: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addImageForGallery update, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 602
    sget-boolean v0, Lcom/oplus/camera/Storage;->D:Z

    return v0
.end method

.method public static d(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 1664
    invoke-static {}, Lcom/oplus/camera/Storage;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1666
    :cond_0
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public static d(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/Storage$CameraPicture;
    .locals 27

    move-object/from16 v1, p0

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImage, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Storage"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    sget-object v0, Lcom/oplus/camera/Storage;->o:Ljava/lang/String;

    goto :goto_0

    .line 1358
    :cond_0
    sget-object v0, Lcom/oplus/camera/Storage;->j:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    .line 1361
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v4, ".heic"

    const-string v5, ".jpg"

    const-string v6, "heic_10bits"

    const-string v7, "heic_8bits"

    const-string v8, "jpeg"

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1363
    :cond_1
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v10, "raw"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".dng"

    move-object v10, v0

    goto :goto_3

    .line 1365
    :cond_2
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1366
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1369
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImage, Invalid pictureFormat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_4
    :goto_1
    move-object v10, v4

    goto :goto_3

    :cond_5
    :goto_2
    move-object v10, v5

    .line 1377
    :goto_3
    :try_start_0
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v0, v9, v9, v9, v9}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    const-string v12, "title"

    if-eqz v11, :cond_6

    .line 1379
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1380
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1381
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_16

    .line 1396
    :cond_6
    :goto_4
    iget-wide v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const-wide/16 v15, -0x1

    cmp-long v0, v13, v15

    if-lez v0, :cond_7

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1399
    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    invoke-static {v14}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v26, v13

    move-object v13, v0

    move-object/from16 v0, v26

    goto :goto_6

    .line 1401
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    iget-boolean v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    if-eqz v13, :cond_8

    .line 1404
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_sr"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 1406
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 1412
    :goto_6
    iget-boolean v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    const/4 v15, 0x0

    const/4 v9, 0x1

    if-eqz v14, :cond_b

    .line 1413
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    if-nez v0, :cond_9

    .line 1414
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v9, v1, v0}, Lcom/oplus/camera/Storage;->a(ZLcom/oplus/camera/Storage$CameraPicture;Landroid/net/Uri;)V

    goto :goto_7

    .line 1415
    :cond_9
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    if-nez v0, :cond_a

    .line 1416
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v15, v1, v0}, Lcom/oplus/camera/Storage;->a(ZLcom/oplus/camera/Storage$CameraPicture;Landroid/net/Uri;)V

    goto :goto_7

    .line 1417
    :cond_a
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v0, :cond_c

    .line 1418
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V

    goto :goto_7

    .line 1424
    :cond_b
    :try_start_2
    iget-boolean v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    if-eqz v14, :cond_c

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1425
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateImage, path: "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v9, v14, v15}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;[B)Z

    .line 1428
    iget-wide v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v0, v14, v15}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;J)V

    .line 1429
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/oplus/camera/Storage;->b(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1450
    :cond_c
    :goto_7
    iget v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 1451
    iget v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    const-wide/16 v20, 0x0

    .line 1458
    :try_start_3
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1459
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    int-to-long v4, v0

    .line 1460
    :try_start_5
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v15}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1464
    invoke-static {v15}, Lcom/oplus/camera/util/Util;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v4, v20

    goto :goto_8

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v4, v20

    const/4 v15, 0x0

    :goto_8
    move-wide/from16 v20, v4

    .line 1462
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImage, open uri failed, uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1464
    invoke-static {v15}, Lcom/oplus/camera/util/Util;->a(Ljava/io/Closeable;)V

    move-wide/from16 v4, v20

    const/4 v0, 0x0

    .line 1467
    :goto_9
    invoke-static {v0}, Lcom/oplus/camera/Storage;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1470
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 1471
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v14

    .line 1475
    :cond_d
    new-instance v15, Landroid/content/ContentValues;

    move-object/from16 v20, v3

    const/16 v3, 0xc

    invoke-direct {v15, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1476
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    iget-object v12, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "_display_name"

    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v12

    const/4 v3, 0x0

    .line 1478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v3, "is_pending"

    invoke-virtual {v15, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1480
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "mime_type"

    if-eqz v3, :cond_e

    const-string v3, "image/jpeg"

    .line 1481
    invoke-virtual {v15, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1482
    :cond_e
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1483
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const-string v3, "image/heic"

    .line 1484
    invoke-virtual {v15, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_10
    :goto_a
    iget v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "orientation"

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1489
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "width"

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1490
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "height"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "_size"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v24, 0x3e8

    div-long v7, v7, v24

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "date_added"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1493
    iget-wide v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    div-long v7, v7, v24

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "date_modified"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1494
    iget-wide v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "datetaken"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "relative_path"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_12

    .line 1500
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "datetaken"

    .line 1501
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-wide/from16 v17, v7

    goto :goto_b

    :cond_11
    const-wide/16 v17, -0x1

    .line 1504
    :goto_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-wide/from16 v7, v17

    goto :goto_c

    :cond_12
    const-wide/16 v7, -0x1

    .line 1507
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImage, values: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-boolean v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->x:Z

    if-eqz v3, :cond_13

    .line 1512
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    goto :goto_d

    .line 1514
    :cond_13
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/media/ExifInterface;)Landroid/location/Location;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_14

    .line 1518
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v11, "latitude"

    invoke-virtual {v15, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1519
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "longitude"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1523
    :cond_14
    :try_start_7
    iget-boolean v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    if-eqz v0, :cond_19

    .line 1526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_15

    .line 1527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android:query-arg-do-async-scan"

    const/4 v11, 0x1

    .line 1528
    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1529
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v3, v15, v0}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_e

    .line 1531
    :cond_15
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v15, v3, v3}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_e
    if-gtz v0, :cond_17

    const-string v0, "on"

    .line 1535
    sget-object v3, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 1536
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    .line 1535
    :goto_f
    invoke-static {v0}, Lcom/oplus/camera/Storage;->c(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImage, insertImage, uri: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_17
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1542
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "date_modified"

    .line 1545
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    div-long v11, v11, v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1547
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->F:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v0, "tagflags"

    .line 1548
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->F:Ljava/lang/String;

    const/4 v11, 0x6

    .line 1549
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1548
    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    :cond_18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "height"

    .line 1554
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_size"

    .line 1555
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1556
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    move-object/from16 v3, v21

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    .line 1558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->h(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v1, v15, v0}, Lcom/oplus/camera/Storage;->b(Lcom/oplus/camera/Storage$CameraPicture;Landroid/content/ContentValues;Landroid/net/Uri;)V

    goto :goto_10

    .line 1562
    :cond_19
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1563
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->g(Lcom/oplus/camera/Storage$CameraPicture;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 1585
    :goto_10
    iput-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 1586
    iput-wide v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    const/4 v3, 0x1

    .line 1587
    iput-boolean v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->B:Z

    move-object/from16 v4, v23

    .line 1588
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    move-object/from16 v4, v22

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    :goto_11
    iput-boolean v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->C:Z

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImage, X uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_4
    move-exception v0

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage, Failed to update image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 1571
    :try_start_8
    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    .line 1573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1576
    :goto_12
    invoke-static/range {p0 .. p0}, Lcom/oplus/camera/Storage;->g(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage, After failed to update image, delete result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1580
    iput-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    return-object v2

    :catchall_1
    move-exception v0

    .line 1464
    :goto_13
    invoke-static {v15}, Lcom/oplus/camera/util/Util;->a(Ljava/io/Closeable;)V

    .line 1465
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_15

    :catch_6
    move-exception v0

    :try_start_9
    const-string v1, "updateImage, Failed to write image: "

    .line 1432
    invoke-static {v2, v1, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v11, :cond_1c

    .line 1441
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImage error, cursor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_14
    const/4 v1, 0x0

    return-object v1

    .line 1447
    :goto_15
    throw v0

    :catch_8
    move-exception v0

    const/4 v11, 0x0

    .line 1384
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage, Failed to query uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cursor: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", th: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_1d

    .line 1387
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private static d(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 852
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 858
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackupFile, file: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Storage"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Z
    .locals 3

    .line 807
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 808
    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSdCard(), state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storage"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mounted"

    .line 812
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 864
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    .line 1720
    iget-wide v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    const-string v2, "Cshot"

    .line 1722
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1724
    :cond_0
    sget-object p0, Lcom/oplus/camera/Storage;->h:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static f(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/exif/OplusExifInterface;
    .locals 6

    .line 491
    new-instance v0, Lcom/oplus/exif/OplusExifInterface;

    invoke-direct {v0}, Lcom/oplus/exif/OplusExifInterface;-><init>()V

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 499
    :goto_0
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_USER_COMMENT:I

    iget-object v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->s:I

    .line 500
    invoke-static {v2, v3}, Lcom/oplus/camera/g/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Oplus_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {v0, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 504
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_ORIENTATION:I

    iget v2, p0, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 506
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 507
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    .line 508
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 510
    sget v3, Lcom/oplus/exif/OplusExifInterface;->TAG_DATE_TIME:I

    iget-wide v4, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 511
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v0, v3, v4}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 512
    sget v3, Lcom/oplus/exif/OplusExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    iget-wide v4, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 513
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v3, v1}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 514
    iget-wide v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 515
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 514
    invoke-static {v1, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    const-string v3, "SSS"

    .line 516
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    .line 517
    sget v4, Lcom/oplus/exif/OplusExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v0, v4, v3}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    const-string v3, "XXX"

    .line 518
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 519
    sget v3, Lcom/oplus/exif/OplusExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v1}, Lcom/oplus/exif/OplusExifInterface;->buildTag(IILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 520
    iget-wide v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-virtual {v0, v3, v4}, Lcom/oplus/exif/OplusExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 521
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-wide v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 522
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {v0, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 524
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->d:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/exif/OplusExifInterface;->addGpsTags(DD)Z

    :cond_0
    return-object v0
.end method

.method public static f()Z
    .locals 5

    .line 939
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 940
    sget-object v1, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 941
    invoke-static {v0, v1}, Lcom/oplus/camera/Storage;->a(Landroid/os/storage/StorageManager;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    const-string v1, "Storage"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "checkExternalState, sdCardStorageVolumn is null"

    .line 944
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 952
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/oplus/compat/os/storage/StorageVolumeNative;->getOplusReadOnlyType(Landroid/os/storage/StorageVolume;)I

    move-result v0
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 954
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    move v0, v2

    .line 957
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExternalState: readOnlyTypeState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    const/4 v3, 0x2

    if-eq v3, v0, :cond_2

    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public static g()D
    .locals 4

    .line 989
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v0

    long-to-double v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Storage"

    const-string v2, "getInternalTotalStorage, Fail to access statfs"

    .line 999
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    return-wide v0
.end method

.method private static g(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 6

    const-string v0, "Storage"

    if-eqz p0, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 1121
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1122
    sget-object p0, Lcom/oplus/camera/Storage;->A:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteImageForGallery, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteImageForGallery, result:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .line 1671
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1672
    sget-object v1, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/Storage;->a(Landroid/os/storage/StorageManager;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static h(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;
    .locals 5

    .line 1708
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1710
    iget-wide v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    const-string v2, "Cshot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static i()Z
    .locals 5

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "Storage"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    invoke-static {v0}, Lcom/oplus/camera/Storage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInternalFsWritable, result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInternalFsWritable, directory.exists(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 770
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInternalFsWritable, writable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 3

    .line 819
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 821
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 822
    sget-object v0, Lcom/oplus/camera/Storage;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/os/OplusUsbEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 834
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method private static k()Z
    .locals 1

    .line 847
    invoke-static {}, Lcom/oplus/camera/q/a;->a()Z

    move-result v0

    return v0
.end method
