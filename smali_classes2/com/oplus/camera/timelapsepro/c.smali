.class public Lcom/oplus/camera/timelapsepro/c;
.super Ljava/lang/Object;
.source "RecorderHelper.java"

# interfaces
.implements Lcom/oplus/camera/capmode/x$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/oplus/camera/capmode/a;

.field private d:Lcom/oplus/camera/ui/CameraUIInterface;

.field private e:[B

.field private f:Landroid/os/ConditionVariable;

.field private g:Landroid/util/Size;

.field private h:Ljava/lang/String;

.field private i:Landroid/net/Uri;

.field private j:Landroid/media/CamcorderProfile;

.field private k:Landroid/content/ContentValues;

.field private l:Landroid/os/ParcelFileDescriptor;

.field private m:Lcom/oplus/camera/capmode/x;

.field private n:Lcom/oplus/camera/timelapsepro/c$a;

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:[B

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Z)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->b:Z

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->c:Lcom/oplus/camera/capmode/a;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    .line 71
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->f:Landroid/os/ConditionVariable;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->j:Landroid/media/CamcorderProfile;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    .line 80
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->n:Lcom/oplus/camera/timelapsepro/c$a;

    .line 82
    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->o:I

    .line 83
    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->p:I

    .line 84
    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    .line 85
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->r:Z

    .line 86
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->s:Z

    .line 87
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->t:Z

    .line 88
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->u:Z

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->v:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    .line 91
    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->x:I

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/c;->c:Lcom/oplus/camera/capmode/a;

    .line 97
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/c;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 98
    iput-boolean p4, p0, Lcom/oplus/camera/timelapsepro/c;->b:Z

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 1

    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 314
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1004a1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 317
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/ui/control/e$d;)Z
    .locals 12

    const-string v0, "com.oplus.camera.NEW_VIDEO"

    const-string v1, "RecorderHelper"

    const-string v2, "addVideoToMediaStore"

    .line 412
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
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

    .line 417
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    .line 418
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 422
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    :cond_0
    const-string p0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediaStore."

    .line 425
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 431
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const-string v6, "title"

    const-string v7, "Oplus_8"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_size"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is_pending"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v6, 0x0

    .line 440
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    :try_start_1
    iget-object v8, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v8, 0x9

    .line 442
    invoke-virtual {v2, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 443
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

    .line 445
    :try_start_2
    invoke-virtual {v2, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v10

    sget v11, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    .line 444
    invoke-static {v10, v11}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p1, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto/16 :goto_5

    :catch_0
    move-object v2, v4

    :catch_1
    move-wide v8, v6

    :catch_2
    :try_start_3
    const-string p1, "addVideoToMediaStore, get video duration fail."

    .line 447
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 454
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

    .line 457
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 459
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_8

    .line 464
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v6, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    if-eqz p1, :cond_5

    .line 468
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    invoke-static {p1, v2}, Lcom/oplus/camera/g/b;->a(Ljava/io/File;[B)V

    .line 472
    :cond_5
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/c;->b:Z

    if-eqz p1, :cond_6

    .line 473
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 474
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "media_id"

    .line 475
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 476
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 477
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 480
    :try_start_5
    invoke-virtual {v6, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    :try_start_6
    const-string v2, "addVideoToMediaStore, updateLockCameraAlbum, err: "

    .line 482
    invoke-static {v1, v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    const-string v6, "com.heytap.cloud"

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    const-string v0, "addVideoToMediaStore, failed to add video to media store"

    .line 496
    invoke-static {v1, v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    .line 499
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    goto :goto_7

    :goto_5
    if-eqz v2, :cond_7

    .line 450
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 452
    :cond_7
    throw p0

    :cond_8
    :goto_6
    move v3, v5

    .line 504
    :goto_7
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    if-eqz p1, :cond_9

    .line 505
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 506
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    :cond_9
    return v3
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoFile, Could not delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

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

    .line 384
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    goto :goto_2

    :goto_1
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    .line 387
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method private d()I
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_4kuhd"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x5f5e100

    return p0

    :cond_0
    const-string v1, "video_size_1080p"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x1036640

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget p0, p0, Lcom/oplus/camera/timelapsepro/c;->o:I

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 111
    iget v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_1
    return v1
.end method

.method private e()Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/x;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()I
    .locals 0

    .line 300
    iget p0, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    return p0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    const v0, 0x7f100495

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 0

    const-string p0, "com.oplus.star.video.size.type"

    .line 308
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 321
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x2f

    if-eqz p0, :cond_0

    .line 322
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

.method private j()V
    .locals 6

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 327
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/c;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    .line 332
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    .line 333
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    .line 339
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->b()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

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

    .line 352
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 360
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->k:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "longitude"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 363
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateVideoFilename, New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecorderHelper"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()J
    .locals 3

    .line 392
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcVideoDuration, mEncodeFrameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", time: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecorderHelper"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private l()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecorderHelper"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    .line 404
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 4

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "computePresentationTime, mEncodeFrameNumber: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecorderHelper"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget p1, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    .line 517
    iget p1, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result p0

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public a()V
    .locals 10

    const-string v0, "RecorderHelper"

    const-string v1, "startRecording Begin"

    .line 148
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->l()V

    .line 155
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->j()V

    .line 157
    new-instance v1, Lcom/oplus/camera/capmode/x;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/capmode/x;-><init>(ZF)V

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->c(Z)V

    .line 159
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->h(Z)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->i(Z)V

    .line 161
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->j(Z)V

    .line 162
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->a(Z)V

    .line 163
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget v4, p0, Lcom/oplus/camera/timelapsepro/c;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/c;->j:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 165
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual {v4, v5, v1}, Lcom/oplus/camera/capmode/x;->a(FF)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->x:I

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget v4, p0, Lcom/oplus/camera/timelapsepro/c;->x:I

    rem-int/lit16 v4, v4, 0x168

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->o(I)V

    .line 174
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->l:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 175
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/camera/capmode/x;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;)V

    .line 183
    :goto_0
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 184
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3

    const-wide v8, 0x100000000L

    goto :goto_1

    :cond_3
    move-wide v8, v6

    :goto_1
    cmp-long v1, v8, v6

    if-lez v1, :cond_4

    cmp-long v1, v8, v4

    if-gez v1, :cond_4

    move-wide v4, v8

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/capmode/x;->a(J)V

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->n:Lcom/oplus/camera/timelapsepro/c$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 192
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->n:Lcom/oplus/camera/timelapsepro/c$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->n:Lcom/oplus/camera/timelapsepro/c$a;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$e;)V

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->e()V

    .line 198
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 203
    :goto_2
    iput-boolean v3, p0, Lcom/oplus/camera/timelapsepro/c;->r:Z

    .line 204
    iput v2, p0, Lcom/oplus/camera/timelapsepro/c;->p:I

    .line 205
    iput v2, p0, Lcom/oplus/camera/timelapsepro/c;->q:I

    const-string p0, "startRecording End"

    .line 207
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 121
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/c;->c(Z)V

    .line 122
    iput p1, p0, Lcom/oplus/camera/timelapsepro/c;->o:I

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->b()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 125
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->d()I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/c;->c()I

    move-result v2

    .line 127
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H265"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 130
    :goto_0
    iget v4, p0, Lcom/oplus/camera/timelapsepro/c;->o:I

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->j:Landroid/media/CamcorderProfile;

    .line 131
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->j:Landroid/media/CamcorderProfile;

    iput v2, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 132
    iput v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 133
    iput v3, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 134
    iput p1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 135
    iput v0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 577
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 581
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->v:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 584
    array-length v0, p1

    const/16 v1, 0x8

    add-int/2addr v0, v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/oplus/camera/g/a;->a(J)[B

    move-result-object v0

    const-string v2, "titl"

    .line 585
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 586
    array-length v3, p1

    add-int/2addr v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    .line 588
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    const/4 v3, 0x4

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->w:[B

    array-length v0, p1

    invoke-static {p1, v5, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a([B)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    if-nez v0, :cond_0

    .line 550
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/x;->a([B)V

    return-void
.end method

.method public a(Z)Z
    .locals 5

    const-string v0, "RecorderHelper"

    const-string v1, "stopRecording Begin"

    .line 211
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->r:Z

    if-nez v1, :cond_0

    const-string p0, "stopRecording, mbRecording is false, so return!"

    .line 214
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Lcom/oplus/camera/timelapsepro/c;->a([B)V

    .line 221
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/c;->e:[B

    .line 222
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 223
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/c;->f:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_1
    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/c;->r:Z

    .line 228
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v3}, Lcom/oplus/camera/capmode/x;->c()Z

    .line 230
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 231
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 232
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 233
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$e;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 239
    new-instance p1, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {p1}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    .line 240
    iput v2, p1, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 242
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/c;->a(Lcom/oplus/camera/ui/control/e$d;)Z

    .line 243
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->l()V

    .line 244
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->i:Landroid/net/Uri;

    iput-object v3, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 245
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/c;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    .line 247
    iget-object v3, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 248
    iget-object v3, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 249
    iget v4, p0, Lcom/oplus/camera/timelapsepro/c;->x:I

    iput v4, p1, Lcom/oplus/camera/ui/control/e$d;->b:I

    .line 250
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/c;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    iget p1, p1, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-interface {v4, v3, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->l()V

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/c;->b(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/c;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Z)V

    move v2, v1

    .line 262
    :cond_4
    :goto_0
    iput v1, p0, Lcom/oplus/camera/timelapsepro/c;->p:I

    const-string p0, "stopRecording End"

    .line 264
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()Landroid/util/Size;
    .locals 4

    .line 274
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_4kuhd"

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x438

    const/16 v3, 0x780

    if-eqz v1, :cond_1

    .line 277
    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/c;->u:Z

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    goto :goto_0

    :cond_1
    const-string v1, "video_size_1080p"

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    goto :goto_0

    .line 285
    :cond_2
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    .line 288
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->g:Landroid/util/Size;

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/c;->t:Z

    return-void
.end method

.method public c()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public c(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/c;->u:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/c;->m:Lcom/oplus/camera/capmode/x;

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/x;->b(Z)V

    :cond_0
    return-void
.end method
