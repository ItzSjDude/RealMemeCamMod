.class public Lcom/oplus/camera/m/b;
.super Lcom/oplus/camera/m/d;
.source "ImageSaverThread.java"


# static fields
.field private static d:Lcom/oplus/camera/m/b;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/oplus/camera/m/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/oplus/camera/m/d;-><init>()V

    .line 49
    new-instance v0, Lcom/oplus/camera/m/c;

    invoke-direct {v0}, Lcom/oplus/camera/m/c;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/m/b;->c:Lcom/oplus/camera/m/c;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/m/b;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/oplus/camera/m/b;
    .locals 2

    .line 53
    const-class v0, Lcom/oplus/camera/m/b;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/oplus/camera/m/b;->d:Lcom/oplus/camera/m/b;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/oplus/camera/m/b;

    invoke-direct {v1}, Lcom/oplus/camera/m/b;-><init>()V

    sput-object v1, Lcom/oplus/camera/m/b;->d:Lcom/oplus/camera/m/b;

    .line 58
    :cond_0
    sget-object v1, Lcom/oplus/camera/m/b;->d:Lcom/oplus/camera/m/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;J)Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/m/b;->c:Lcom/oplus/camera/m/c;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/m/c;->a(Landroid/app/Activity;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    const/4 v5, -0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    array-length v4, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    iget-wide v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->H:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x3

    iget-object v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    aput-object v7, v3, v4

    const/4 v4, 0x4

    iget-object v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->y:Lcom/oplus/camera/ui/control/e$b;

    aput-object v7, v3, v4

    const/4 v4, 0x5

    iget-boolean v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->J:Z

    .line 100
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x6

    iget-boolean v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v4, "handlePicture, picture.jpeg: %d, timeStamp: %d, mRecBurstNum: %d, mUri: %s, mUpdateThumbTask: %s, mbLatestPicture: %s, mbWriteExifByApp: %s."

    .line 97
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 104
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/Storage;->d(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/Storage$CameraPicture;

    goto :goto_1

    .line 106
    :cond_1
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, v0, Lcom/oplus/camera/m/b;->c:Lcom/oplus/camera/m/c;

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/m/c;->a(J)V

    .line 108
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/Storage;->a(Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/Storage$CameraPicture;

    .line 111
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 112
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v2

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;)V

    .line 115
    :cond_3
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->U:Lcom/oplus/camera/ui/control/e$c;

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->U:Lcom/oplus/camera/ui/control/e$c;

    iget-wide v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/ui/control/e$c;->a(J)V

    .line 119
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraTest Picture Save End, picture.mFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", picture.mUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageSaverThread"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-wide v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->I:J

    invoke-static {v2, v3}, Lcom/oplus/camera/perf/ComprehensivePerformance;->b(J)V

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/util/AndroidTestHelper;->onNewPicture(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 126
    iget-boolean v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->z:Lcom/oplus/camera/ui/control/e$b;

    if-eqz v2, :cond_5

    .line 127
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->z:Lcom/oplus/camera/ui/control/e$b;

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/control/e$b;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 130
    :cond_5
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->O:Lcom/oplus/camera/screen/a;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 131
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->O:Lcom/oplus/camera/screen/a;

    invoke-interface {v4, v2}, Lcom/oplus/camera/screen/a;->a(Ljava/lang/String;)V

    .line 135
    :cond_6
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    if-eqz v2, :cond_16

    .line 136
    iget-boolean v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->J:Z

    if-eqz v2, :cond_7

    iget v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    if-eq v5, v2, :cond_8

    :cond_7
    iget v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    if-ne v6, v2, :cond_9

    .line 138
    :cond_8
    invoke-static {}, Lcom/oplus/camera/m/a;->a()Lcom/oplus/camera/m/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/camera/m/a;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 141
    :cond_9
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v4, "raw"

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->w:Z

    if-nez v2, :cond_a

    const-string v0, "ImageSaverThread"

    const-string v1, "handlePicture, picture.mFormat is raw, do not updateThumbNail"

    .line 144
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_a
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->y:Lcom/oplus/camera/ui/control/e$b;

    if-eqz v2, :cond_14

    const-string v2, "ImageSaverThread"

    const-string v4, "handlePicture, create thumbnail for JpegData start"

    .line 150
    invoke-static {v2, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/String;)[B

    move-result-object v6

    .line 155
    iget v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    iget v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    iget v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->u:I

    iget v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->u:I

    invoke-static {v2, v4, v7, v8}, Lcom/oplus/camera/util/Util;->a(IIII)I

    move-result v2

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePicture, create thumbnail for Exif start, inSampleSize: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", thumbnailData: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ImageSaverThread"

    invoke-static {v7, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 161
    array-length v4, v6

    if-lez v4, :cond_c

    .line 162
    iget v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 163
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    int-to-long v14, v5

    move-wide v11, v14

    .line 162
    invoke-static/range {v6 .. v12}, Lcom/oplus/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v3

    if-nez v3, :cond_b

    .line 165
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v4, :cond_b

    .line 166
    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    iget v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    iget-object v12, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 167
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move v11, v2

    .line 166
    invoke-static/range {v9 .. v15}, Lcom/oplus/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v3

    :cond_b
    :goto_2
    move-object v6, v3

    goto/16 :goto_3

    .line 171
    :cond_c
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    if-eqz v4, :cond_10

    .line 172
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v6, "heic_8bits"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 173
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_10

    .line 174
    iget-object v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    sget v4, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v2, v4}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    .line 176
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    int-to-long v10, v5

    .line 174
    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v2

    .line 177
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    iput-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->M:Landroid/graphics/Bitmap;

    move-object v6, v2

    goto :goto_3

    .line 180
    :cond_d
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v6, "heic_10bits"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 181
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    new-instance v4, Lcom/oplus/camera/ui/control/e$d;

    const-wide/16 v7, 0x0

    iget v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    iget-wide v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    iget-object v12, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget-object v13, v1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    iget-object v14, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    iget-object v15, v1, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    iget v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    iget v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    const-string v16, "image/heic"

    move/from16 v17, v6

    move-object v6, v4

    move/from16 v18, v3

    invoke-direct/range {v6 .. v18}, Lcom/oplus/camera/ui/control/e$d;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v2, v4}, Lcom/oplus/camera/ui/control/e;->a(Landroid/content/ContentResolver;Lcom/oplus/camera/ui/control/e$d;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 187
    iget-object v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    .line 188
    invoke-static {v2, v3}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    .line 189
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    int-to-long v10, v5

    .line 187
    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 192
    :cond_f
    iget-object v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    iget v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    iget-object v12, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 193
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    int-to-long v14, v5

    move v11, v2

    .line 192
    invoke-static/range {v9 .. v15}, Lcom/oplus/camera/ui/control/e;->a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v3

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x0

    :goto_3
    const-string v2, "ImageSaverThread"

    const-string v3, "handlePicture, create thumbnail for Exif end"

    .line 199
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-boolean v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    if-nez v2, :cond_11

    .line 202
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->y:Lcom/oplus/camera/ui/control/e$b;

    invoke-interface {v2, v6}, Lcom/oplus/camera/ui/control/e$b;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 205
    :cond_11
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    if-eqz v2, :cond_13

    .line 206
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-object v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->L:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_12

    .line 208
    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    iget-object v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->L:Landroid/graphics/Bitmap;

    iget-boolean v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    iget v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->Q:I

    iget-boolean v9, v1, Lcom/oplus/camera/Storage$CameraPicture;->T:Z

    iget-boolean v10, v1, Lcom/oplus/camera/Storage$CameraPicture;->Y:Z

    iget-wide v11, v1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-interface/range {v4 .. v12}, Lcom/oplus/camera/a/e;->a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;ZIZZJ)V

    goto :goto_4

    .line 212
    :cond_12
    iput-object v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->A:Lcom/oplus/camera/ui/control/e;

    .line 214
    :goto_4
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 217
    :cond_13
    :goto_5
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->N:Lcom/oplus/camera/a/d;

    if-eqz v2, :cond_15

    .line 218
    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->N:Lcom/oplus/camera/a/d;

    iget-boolean v3, v1, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    invoke-interface {v2, v3}, Lcom/oplus/camera/a/d;->a(Z)V

    goto :goto_6

    .line 221
    :cond_14
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/m/b$1;

    invoke-direct {v3, v0, v1}, Lcom/oplus/camera/m/b$1;-><init>(Lcom/oplus/camera/m/b;Lcom/oplus/camera/Storage$CameraPicture;)V

    const-string v4, "loadThubmnail"

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 252
    :cond_15
    :goto_6
    iget-object v2, v0, Lcom/oplus/camera/m/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/oplus/camera/m/b$2;

    invoke-direct {v3, v0, v1}, Lcom/oplus/camera/m/b$2;-><init>(Lcom/oplus/camera/m/b;Lcom/oplus/camera/Storage$CameraPicture;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 261
    :cond_16
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 262
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v0

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/util/n;->d(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
