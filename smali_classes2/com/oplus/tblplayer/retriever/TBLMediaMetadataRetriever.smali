.class public Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;
.super Ljava/lang/Object;
.source "TBLMediaMetadataRetriever.java"

# interfaces
.implements Lcom/oplus/tblplayer/retriever/IMediaMetadataRetriever;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLMetadataRetriever"


# instance fields
.field private mFFmpegRetrieverKeyCodeArray:[Ljava/lang/String;

.field private mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;


# direct methods
.method public constructor <init>()V
    .locals 41

    move-object/from16 v0, p0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string v2, "album"

    const-string v3, "artist"

    const/4 v4, 0x0

    const-string v5, "composer"

    const-string v6, "date"

    const-string v7, "genre"

    const-string v8, "title"

    const/4 v9, 0x0

    const-string v10, "duration"

    const-string v11, "track"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "album_artist"

    const-string v15, "disc"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "video_width"

    const-string v20, "video_height"

    const-string v21, "bitrate"

    const-string v22, "language"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "rotate"

    const-string v26, "framerate"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "video_frame_count"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v36, "color_standard"

    const-string v37, "color_transfer"

    const-string v38, "color_range"

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 96
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mFFmpegRetrieverKeyCodeArray:[Ljava/lang/String;

    .line 26
    :try_start_0
    new-instance v1, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-direct {v1}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;-><init>()V

    iput-object v1, v0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;
    :try_end_0
    .catch Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetrieverException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetrieverException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private convertUri2AbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 179
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    .line 183
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 186
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 187
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 150
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    const-string v0, "display_rotate"

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 153
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotateBitmap: rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ori.getWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ori.getHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TBLMetadataRetriever"

    .line 154
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eqz p0, :cond_1

    .line 159
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 160
    invoke-virtual {v9, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, p1

    .line 162
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateBitmap: cost time ms is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object p1
.end method

.method private transformMetadataKeyCode(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mFFmpegRetrieverKeyCodeArray:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public extractMetadata(I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->transformMetadataKeyCode(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoverPicture(III)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "TBLMetadataRetriever"

    const-string v1, "getCoverPicture: "

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->getScaledFrameAtTime(JIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddedPicture()[B
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    return-object p0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "TBLMetadataRetriever"

    const-string v1, "getFrameAtTime: "

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    const/4 v6, 0x0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->getScaledFrameAtTime(JIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->release()V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource: content path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBLMetadataRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBLMetadataRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/TBLMediaMetadataRetriever;->mInternalRetriever:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
