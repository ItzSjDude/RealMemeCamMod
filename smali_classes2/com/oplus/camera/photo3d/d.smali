.class public Lcom/oplus/camera/photo3d/d;
.super Ljava/lang/Object;
.source "ThreeDVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/d$b;,
        Lcom/oplus/camera/photo3d/d$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/Size;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/oplus/camera/capmode/a;

.field private d:Lcom/oplus/camera/ui/CameraUIInterface;

.field private e:Landroid/media/CamcorderProfile;

.field private f:Landroid/content/ContentValues;

.field private g:Landroid/os/ParcelFileDescriptor;

.field private h:Lcom/oplus/camera/capmode/x;

.field private i:Landroid/util/Size;

.field private j:Landroid/net/Uri;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Lcom/oplus/camera/photo3d/d$b;

.field private final o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/oplus/camera/photo3d/d;->a:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/d;->l:Z

    .line 69
    iput v0, p0, Lcom/oplus/camera/photo3d/d;->m:I

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/oplus/camera/photo3d/d;->o:Landroid/os/Handler;

    .line 77
    iput-object p3, p0, Lcom/oplus/camera/photo3d/d;->c:Lcom/oplus/camera/capmode/a;

    .line 78
    iput-object p4, p0, Lcom/oplus/camera/photo3d/d;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 1

    .line 214
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 216
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1004a1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 219
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/d;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/d;->l:Z

    return p0
.end method

.method private a(Lcom/oplus/camera/ui/control/e$d;)Z
    .locals 12

    const-string v0, "com.oplus.camera.NEW_VIDEO"

    const-string v1, "ThreeDVideoHelper"

    const-string v2, "addVideoToMediaStore"

    .line 270
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
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

    .line 275
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    .line 276
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    .line 278
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 280
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    :cond_0
    const-string p0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediaStore."

    .line 283
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 289
    iget-object v6, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "_size"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is_pending"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v6, 0x0

    .line 297
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :try_start_1
    iget-object v8, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    iget-object v9, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v8, 0x9

    .line 299
    invoke-virtual {v2, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 300
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

    .line 302
    :try_start_2
    invoke-virtual {v2, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v10

    sget v11, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    .line 301
    invoke-static {v10, v11}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p1, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto/16 :goto_3

    :catch_0
    move-object v2, v4

    :catch_1
    move-wide v8, v6

    :catch_2
    :try_start_3
    const-string p1, "addVideoToMediaStore, get video duration fail."

    .line 304
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 311
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

    if-lez p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "duration"

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    if-eqz p1, :cond_7

    .line 319
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v6, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    if-eqz p1, :cond_5

    .line 322
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "media_id"

    .line 323
    iget-object v6, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 324
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 325
    invoke-static {v2, p1}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 328
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    const-string v6, "com.heytap.cloud"

    invoke-static {p1, v2, v0, v6}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    const-string v0, "addVideoToMediaStore, failed to add video to media store"

    .line 337
    invoke-static {v1, v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    .line 340
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_6

    .line 307
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 309
    :cond_6
    throw p0

    :cond_7
    :goto_4
    move v3, v5

    .line 345
    :goto_5
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    if-eqz p1, :cond_8

    .line 346
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 347
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    :cond_8
    return v3
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/d;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/d;)Lcom/oplus/camera/photo3d/d$b;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->n:Lcom/oplus/camera/photo3d/d$b;

    return-object p0
.end method

.method private d()I
    .locals 2

    .line 151
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const v1, 0x1036640

    if-eqz v0, :cond_0

    .line 152
    iget p0, p0, Lcom/oplus/camera/photo3d/d;->m:I

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    iget v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_0
    return v1
.end method

.method private e()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeDVideoHelper"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    .line 164
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/photo3d/d;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    .line 178
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v4, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    .line 179
    iget-object v4, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    .line 185
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/d;->b()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

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

    .line 198
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 206
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->f:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "longitude"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 209
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateVideoFilename, New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThreeDVideoHelper"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 223
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x2f

    if-eqz p0, :cond_0

    .line 224
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


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "ThreeDVideoHelper"

    const-string v1, "startRecording E"

    .line 82
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v1}, Lcom/oplus/camera/photo3d/d;->a(I)V

    .line 85
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/d;->e()V

    .line 86
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/d;->f()V

    .line 88
    new-instance v2, Lcom/oplus/camera/capmode/x;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/d;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->al()F

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/oplus/camera/capmode/x;-><init>(ZF)V

    iput-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    .line 89
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/x;->h(Z)V

    .line 90
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/x;->i(Z)V

    .line 91
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v1, v3}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(II)V

    .line 94
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {v2, v3, v1}, Lcom/oplus/camera/capmode/x;->a(FF)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->v()I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->o(I)V

    .line 102
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->g:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 103
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oplus/camera/capmode/x;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/x;->g(I)V

    .line 110
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 111
    sget-object v3, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_2

    const-wide v7, 0x100000000L

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v3, v7, v5

    if-lez v3, :cond_3

    cmp-long v3, v7, v1

    if-gez v3, :cond_3

    move-wide v1, v7

    .line 117
    :cond_3
    new-instance v3, Lcom/oplus/camera/photo3d/d$a;

    invoke-direct {v3, p0}, Lcom/oplus/camera/photo3d/d$a;-><init>(Lcom/oplus/camera/photo3d/d;)V

    .line 118
    iget-object v5, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v5, v1, v2}, Lcom/oplus/camera/capmode/x;->a(J)V

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 120
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$d;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->e()V

    .line 126
    iget-object v1, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    :goto_2
    iput-boolean v4, p0, Lcom/oplus/camera/photo3d/d;->l:Z

    const-string p0, "startRecording X"

    .line 133
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 137
    iput p1, p0, Lcom/oplus/camera/photo3d/d;->m:I

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/d;->b()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/d;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 140
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/d;->d()I

    move-result v1

    .line 142
    iget v2, p0, Lcom/oplus/camera/photo3d/d;->m:I

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    .line 143
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->e:Landroid/media/CamcorderProfile;

    const/16 v2, 0x1e

    iput v2, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 144
    iput v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/4 v1, 0x2

    .line 145
    iput v1, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 146
    iput p1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 147
    iput v0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/d$b;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/oplus/camera/photo3d/d;->n:Lcom/oplus/camera/photo3d/d$b;

    return-void
.end method

.method public b()Landroid/util/Size;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    if-nez v0, :cond_0

    const-string v0, "com.oplus.3d.photo.video.size"

    .line 229
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/oplus/camera/photo3d/d;->a:Landroid/util/Size;

    iput-object v0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->i:Landroid/util/Size;

    return-object p0
.end method

.method public c()V
    .locals 4

    const-string v0, "ThreeDVideoHelper"

    const-string v1, "stopRecording E"

    .line 240
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v1, p0, Lcom/oplus/camera/photo3d/d;->l:Z

    if-nez v1, :cond_0

    const-string p0, "stopRecording, mbRecording is false, so return!"

    .line 243
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 248
    iput-boolean v1, p0, Lcom/oplus/camera/photo3d/d;->l:Z

    .line 250
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/x;->c()Z

    .line 252
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 253
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 254
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 255
    iget-object v2, p0, Lcom/oplus/camera/photo3d/d;->h:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$d;)V

    .line 258
    :cond_1
    new-instance v2, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {v2}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    const/4 v3, 0x1

    .line 259
    iput v3, v2, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 261
    invoke-direct {p0, v2}, Lcom/oplus/camera/photo3d/d;->a(Lcom/oplus/camera/ui/control/e$d;)Z

    .line 262
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/d;->e()V

    .line 263
    iget-object v3, p0, Lcom/oplus/camera/photo3d/d;->j:Landroid/net/Uri;

    iput-object v3, v2, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    const-string p0, "stopRecording X"

    .line 266
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
