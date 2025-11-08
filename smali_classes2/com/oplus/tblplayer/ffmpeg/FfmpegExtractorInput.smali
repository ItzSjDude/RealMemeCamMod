.class public Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;
.super Ljava/lang/Object;
.source "FfmpegExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_SKIP_BYTES:J = 0x40000L

.field private static final TAG:Ljava/lang/String; = "FfmpegExtractorInput"

.field private static final UNSET_VALUE:J = -0x1L


# instance fields
.field private currentPosition:J

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDataSourceFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 102
    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    if-eqz v0, :cond_0

    .line 104
    const-class v0, Lcom/google/android/exoplayer2/upstream/DataSource;

    const-string v1, "dataSource"

    invoke-static {p1, v0, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 106
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const-class v0, Landroid/net/Uri;

    const-string v1, "lastOpenedUri"

    invoke-static {p1, v0, v1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->uri:Landroid/net/Uri;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeUpdateExtractorInput(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 154
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FfmpegExtractorInput"

    const-string v1, "maybeUpdateExtractorInput: will create new input"

    .line 156
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->updateFfmpegExtractorInput(J)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateFfmpegExtractorInput(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-direct {p0, v2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->getDataSourceFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 89
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->uri:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v3, v2

    move-wide v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    add-long/2addr v2, p1

    :cond_0
    move-wide v8, v2

    const-string v0, "FfmpegExtractorInput"

    const-string v1, "updateFfmpegExtractorInput: create new DefaultExtractorInput"

    .line 95
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v5, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v4, v0

    move-wide v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Get data source failed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLoadableExtractorInput(J)V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz p0, :cond_0

    .line 59
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "position"

    invoke-static {p0, v0, p2, p1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 180
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-void
.end method

.method public getLength()J
    .locals 2

    .line 288
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 291
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 275
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 280
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 283
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 232
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAt params: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FfmpegExtractorInput"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    .line 138
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    .line 139
    iget-wide p2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    invoke-direct {p0, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->updateLoadableExtractorInput(J)V

    return p1

    .line 130
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Extractor input is null."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public resetPeekPosition()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public seekToReadPosition(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->getLength()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->maybeUpdateExtractorInput(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    .line 76
    iget-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->updateLoadableExtractorInput(J)V

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-string p0, "FfmpegExtractorInput"

    const-string p1, "Seek position is not valid"

    .line 69
    invoke-static {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setExtractorInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eq v0, p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 48
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->loadableInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    .line 49
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->currentPosition:J

    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->updateFfmpegExtractorInput(J)V

    :cond_0
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    return-void
.end method

.method public skip(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 206
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p0

    return p0
.end method

.method public skipFully(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractorInput;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 215
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(IZ)Z

    move-result p0

    return p0
.end method

.method protected final skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long p0, p2, v0

    if-gtz p0, :cond_0

    long-to-int p0, p2

    .line 147
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
