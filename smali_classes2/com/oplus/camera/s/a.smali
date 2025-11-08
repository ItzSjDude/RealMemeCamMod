.class Lcom/oplus/camera/s/a;
.super Ljava/lang/Object;
.source "StarVideoHelper.java"

# interfaces
.implements Lcom/oplus/camera/capmode/x$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/s/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/oplus/camera/capmode/a;

.field private e:Lcom/oplus/camera/ui/CameraUIInterface;

.field private f:Landroid/util/Size;

.field private g:Ljava/lang/String;

.field private h:Landroid/net/Uri;

.field private i:Landroid/media/CamcorderProfile;

.field private j:Landroid/content/ContentValues;

.field private k:Landroid/os/ParcelFileDescriptor;

.field private l:Lcom/oplus/camera/capmode/x;

.field private m:Lcom/oplus/camera/s/a$a;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Z)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/s/a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/oplus/camera/s/a;->c:Z

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/s/a;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    .line 81
    iput-object v0, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    .line 83
    iput-object v0, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    .line 84
    iput-object v0, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    .line 85
    iput-object v0, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/s/a;->m:Lcom/oplus/camera/s/a$a;

    .line 89
    iput v1, p0, Lcom/oplus/camera/s/a;->n:I

    .line 90
    iput v1, p0, Lcom/oplus/camera/s/a;->o:I

    .line 91
    iput v1, p0, Lcom/oplus/camera/s/a;->p:I

    .line 92
    iput-boolean v1, p0, Lcom/oplus/camera/s/a;->q:Z

    .line 93
    iput-boolean v1, p0, Lcom/oplus/camera/s/a;->r:Z

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    .line 99
    iput-object p3, p0, Lcom/oplus/camera/s/a;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 100
    iput-boolean p4, p0, Lcom/oplus/camera/s/a;->c:Z

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 1

    .line 339
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 341
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1004a1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 344
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoFile, Could not delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 411
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    goto :goto_2

    :goto_1
    iput-object p1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    .line 414
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method private a([BIIIII)V
    .locals 10

    move-object v1, p0

    .line 238
    iget-object v8, v1, Lcom/oplus/camera/s/a;->b:Landroid/os/Handler;

    new-instance v9, Lcom/oplus/camera/s/-$$Lambda$a$tAJMKsy7gxpDwx53vRMcwkZQXI0;

    move-object v0, v9

    move-object v2, p1

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/s/-$$Lambda$a$tAJMKsy7gxpDwx53vRMcwkZQXI0;-><init>(Lcom/oplus/camera/s/a;[BIIIII)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a([BIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-boolean p0, p0, Lcom/oplus/camera/s/a;->r:Z

    if-nez p0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "_"

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_star_video_yuv_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".yuv"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "capture_yuv"

    .line 261
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/control/e$d;)Z
    .locals 12

    const-string v0, "com.oplus.camera.NEW_VIDEO"

    const-string v1, "StarVideoHelper"

    const-string v2, "addVideoToMediaStore"

    .line 439
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/oplus/camera/Storage;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    iput-object v4, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    .line 445
    iput-object v4, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    .line 447
    iget-object p1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 449
    iput-object v4, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    :cond_0
    const-string p0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediaStore."

    .line 452
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 458
    iget-object v6, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "_size"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is_pending"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v6, 0x0

    .line 466
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 467
    :try_start_1
    iget-object v8, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v8, 0x9

    .line 468
    invoke-virtual {v2, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-wide v8, v6

    goto :goto_0

    :cond_2
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-wide/16 v10, -0x1

    .line 471
    :try_start_2
    invoke-virtual {v2, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v10

    sget v11, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    .line 470
    invoke-static {v10, v11}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p1, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto/16 :goto_4

    :catch_0
    move-object v2, v4

    :catch_1
    move-wide v8, v6

    :catch_2
    :try_start_3
    const-string p1, "addVideoToMediaStore, get video duration fail."

    .line 473
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 480
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoToMediaStore, Video duration: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v8, v6

    const-string v2, "duration"

    if-lez p1, :cond_4

    .line 483
    iget-object p1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 485
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/oplus/camera/s/a;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_7

    .line 490
    iget-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v6, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 493
    iget-boolean p1, p0, Lcom/oplus/camera/s/a;->c:Z

    if-eqz p1, :cond_5

    .line 494
    iget-object p1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    if-eqz p1, :cond_5

    .line 495
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "media_id"

    .line 496
    iget-object v6, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 497
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 498
    invoke-static {v2, p1}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 502
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    const-string v6, "com.heytap.cloud"

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    const-string v0, "addVideoToMediaStore, failed to add video to media store"

    .line 511
    invoke-static {v1, v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    iput-object v4, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    .line 514
    iput-object v4, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    goto :goto_6

    :goto_4
    if-eqz v2, :cond_6

    .line 476
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 478
    :cond_6
    throw p0

    :cond_7
    :goto_5
    move v3, v5

    .line 519
    :goto_6
    iget-object p1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    if-eqz p1, :cond_8

    .line 520
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 521
    iput-object v4, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    :cond_8
    return v3
.end method

.method private synthetic b([BIIIII)V
    .locals 16

    move-object/from16 v8, p0

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 240
    iget v2, v8, Lcom/oplus/camera/s/a;->o:I

    const-string v7, "original"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/s/a;->a([BIIIILjava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeYuv, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StarVideoHelper"

    invoke-static {v4, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p2

    move/from16 v14, p3

    .line 245
    invoke-static/range {v10 .. v15}, Lcom/oplus/camera/util/Util;->a([BIIIIZ)[B

    move-result-object v2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeYuv, total deal byte[] cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, v8, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/x;->a([B)V

    .line 250
    iget v3, v8, Lcom/oplus/camera/s/a;->o:I

    const-string v7, "yuv"

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/s/a;->a([BIIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()I
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_4kuhd"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x5f5e100

    return p0

    :cond_0
    const-string v1, "video_size_1080p"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x1036640

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget p0, p0, Lcom/oplus/camera/s/a;->n:I

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 113
    iget v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_1
    return v1
.end method

.method private f()Z
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "H265"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private g()V
    .locals 2

    .line 207
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "YUV drop padding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/s/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private h()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/oplus/camera/s/a;->p:I

    return p0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    const v0, 0x7f100495

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.oplus.star.video.size.type"

    .line 335
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 348
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x2f

    if-eqz p0, :cond_0

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 6

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/s/a;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/camera/s/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    iput-object v4, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    .line 359
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v4, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    .line 360
    iget-object v4, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    .line 366
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/s/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 375
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->b()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 387
    iget-object v2, p0, Lcom/oplus/camera/s/a;->j:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "longitude"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 390
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateVideoFilename, New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StarVideoHelper"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$tAJMKsy7gxpDwx53vRMcwkZQXI0(Lcom/oplus/camera/s/a;[BIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/oplus/camera/s/a;->b([BIIIII)V

    return-void
.end method

.method private m()J
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcVideoDuration, mEncodeFrameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/s/a;->p:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", time: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StarVideoHelper"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private n()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 429
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StarVideoHelper"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    .line 431
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 1

    .line 529
    iget p1, p0, Lcom/oplus/camera/s/a;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/s/a;->p:I

    .line 530
    iget p1, p0, Lcom/oplus/camera/s/a;->p:I

    const v0, 0xf4240

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->c()I

    move-result p0

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public a()V
    .locals 10

    const-string v0, "StarVideoHelper"

    const-string v1, "startRecording E"

    .line 149
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->n()V

    .line 152
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->l()V

    .line 154
    new-instance v1, Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->al()F

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/capmode/x;-><init>(ZF)V

    iput-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    .line 155
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->c(Z)V

    .line 156
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->h(Z)V

    .line 157
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->i(Z)V

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->j(Z)V

    .line 159
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->a(Z)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget v4, p0, Lcom/oplus/camera/s/a;->n:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 162
    iget-object v1, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v4, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual {v4, v5, v1}, Lcom/oplus/camera/capmode/x;->a(FF)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->o(I)V

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/s/a;->k:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 171
    iget-object v4, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/camera/capmode/x;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;)V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    .line 177
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 176
    :goto_1
    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->g(I)V

    .line 179
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 180
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3

    const-wide v8, 0x100000000L

    goto :goto_2

    :cond_3
    move-wide v8, v6

    :goto_2
    cmp-long v1, v8, v6

    if-lez v1, :cond_4

    cmp-long v1, v8, v4

    if-gez v1, :cond_4

    move-wide v4, v8

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/capmode/x;->a(J)V

    .line 187
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/s/a;->m:Lcom/oplus/camera/s/a$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 188
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/s/a;->m:Lcom/oplus/camera/s/a$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 189
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/s/a;->m:Lcom/oplus/camera/s/a$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$e;)V

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->e()V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    :goto_3
    iput-boolean v3, p0, Lcom/oplus/camera/s/a;->q:Z

    .line 200
    iput v2, p0, Lcom/oplus/camera/s/a;->o:I

    .line 201
    iput v2, p0, Lcom/oplus/camera/s/a;->p:I

    const-string p0, "startRecording X"

    .line 203
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 123
    iput p1, p0, Lcom/oplus/camera/s/a;->n:I

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->b()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 125
    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 126
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->e()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->c()I

    move-result v2

    .line 128
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H265"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 131
    :goto_0
    iget v4, p0, Lcom/oplus/camera/s/a;->n:I

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/s/a;->i:Landroid/media/CamcorderProfile;

    iput v2, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 133
    iput v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 134
    iput v3, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 135
    iput p1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 136
    iput v0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    return-void
.end method

.method public a(Lcom/oplus/camera/s/a$a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/oplus/camera/s/a;->m:Lcom/oplus/camera/s/a$a;

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 8

    const-string v0, "StarVideoHelper"

    const-string v1, "onYuvImageReceived"

    .line 213
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v1, p0, Lcom/oplus/camera/s/a;->q:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    if-nez v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->g()V

    .line 225
    :cond_1
    iget v0, p0, Lcom/oplus/camera/s/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/s/a;->o:I

    .line 227
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v3

    .line 228
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v4

    .line 229
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getStride()I

    move-result v5

    .line 230
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getScanline()I

    move-result v6

    .line 231
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getOrientation()I

    move-result v7

    .line 232
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v2

    move-object v1, p0

    .line 234
    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/s/a;->a([BIIIII)V

    return-void

    .line 216
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onYuvImageReceived, mbRecording: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/s/a;->q:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "StarVideoHelper"

    const-string v1, "stopRecording E"

    .line 265
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-boolean v1, p0, Lcom/oplus/camera/s/a;->q:Z

    if-nez v1, :cond_0

    const-string p0, "stopRecording, mbRecording is false, so return!"

    .line 268
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 273
    iput-boolean v1, p0, Lcom/oplus/camera/s/a;->q:Z

    .line 275
    iget-object v2, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/x;->c()Z

    .line 277
    iget-object v2, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 278
    iget-object v2, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 279
    iget-object v2, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 280
    iget-object v2, p0, Lcom/oplus/camera/s/a;->l:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$e;)V

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 284
    new-instance p1, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {p1}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    .line 285
    iput v2, p1, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 287
    invoke-direct {p0, p1}, Lcom/oplus/camera/s/a;->a(Lcom/oplus/camera/ui/control/e$d;)Z

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->n()V

    .line 289
    iget-object v2, p0, Lcom/oplus/camera/s/a;->h:Landroid/net/Uri;

    iput-object v2, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 290
    iget-object v2, p0, Lcom/oplus/camera/s/a;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->n()V

    .line 293
    iget-object p1, p0, Lcom/oplus/camera/s/a;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/camera/s/a;->a(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/oplus/camera/s/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v2}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 297
    :goto_0
    iput v1, p0, Lcom/oplus/camera/s/a;->o:I

    const-string p0, "stopRecording X"

    .line 299
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/util/Size;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    if-nez v0, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_4kuhd"

    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    goto :goto_0

    :cond_0
    const-string v1, "video_size_1080p"

    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    .line 315
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/s/a;->f:Landroid/util/Size;

    return-object p0
.end method

.method public c()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public d()I
    .locals 1

    .line 323
    invoke-direct {p0}, Lcom/oplus/camera/s/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->c()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method
