.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;
.super Ljava/lang/Object;
.source "FfmpegUtil.java"


# static fields
.field private static final AV_SAMPLE_FMT_FLT:I = 0x3

.field private static final AV_SAMPLE_FMT_NONE:I = -0x1

.field private static final AV_SAMPLE_FMT_S16:I = 0x1

.field private static final AV_SAMPLE_FMT_U8:I = 0x0

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FfmpegUtil"

.field private static isSpecialVideoCodec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyWithInitializationData(Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format;->copyWithRotationDegrees(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    .line 110
    const-class v0, Ljava/util/List;

    const-string v1, "initializationData"

    invoke-static {p0, v0, v1, p1}, Lcom/oplus/tblplayer/utils/ReflectUtil;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 307
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 319
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getFfmpegCodecParametersData(Lcom/google/android/exoplayer2/Format;)[B
    .locals 1

    .line 88
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->hasFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFfmpegExtraData(Lcom/google/android/exoplayer2/Format;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtraDataEmpty(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 144
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_4
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 148
    array-length v1, v0

    array-length v6, p0

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [B

    .line 149
    array-length v6, v0

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 150
    array-length v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 151
    array-length v2, v0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v2, v0

    add-int/2addr v2, v5

    aput-byte v3, v1, v2

    .line 153
    array-length v2, v0

    add-int/2addr v2, v4

    aput-byte v3, v1, v2

    .line 154
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    array-length v4, p0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 155
    array-length v2, v0

    add-int/lit8 v2, v2, 0x5

    array-length v4, p0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 156
    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_5
    if-ne v1, v4, :cond_6

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/opus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static getSeekWhenceString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_0

    const-string p0, "unknown whence"

    return-object p0

    :cond_0
    const-string p0, "AVSEEK_SIZE"

    return-object p0

    :cond_1
    const-string p0, "SEEK_END"

    return-object p0

    :cond_2
    const-string p0, "SEEK_CUR"

    return-object p0

    :cond_3
    const-string p0, "SEEK_SET"

    return-object p0
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "none"

    return-object p0

    :pswitch_1
    const-string p0, "camera motion"

    return-object p0

    :pswitch_2
    const-string p0, "metadata"

    return-object p0

    :pswitch_3
    const-string p0, "text"

    return-object p0

    :pswitch_4
    const-string p0, "video"

    return-object p0

    :pswitch_5
    const-string p0, "audio"

    return-object p0

    :pswitch_6
    const-string p0, "default"

    return-object p0

    :cond_0
    const-string p0, "?"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 53
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 281
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 292
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 296
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isFfmpegExtraDataEmpty(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 63
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->hasFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    const-string v0, "FfmpegExtractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecialVideoCodec()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isSpecialVideoCodec:Z

    return v0
.end method

.method public static isVideoPixelFormatHwNotSupported(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    const-string v0, "VideoPixelFormatHwNotSupported"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVorbisTrack(Lcom/oplus/tblplayer/ffmpeg/Track;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/Track;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/Track;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "audio/vorbis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static maybeRemoveFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 96
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->hasFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    invoke-static {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->copyWithInitializationData(Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method protected static parseVorbisConfiguration([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    .line 198
    :try_start_0
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    move v5, v1

    move v4, v2

    .line 203
    :goto_0
    aget-byte v6, p0, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 207
    aget-byte v4, p0, v4

    add-int/2addr v5, v4

    move v4, v1

    .line 210
    :goto_1
    aget-byte v8, p0, v6

    if-ne v8, v7, :cond_1

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .line 214
    aget-byte v6, p0, v6

    add-int/2addr v4, v6

    .line 216
    aget-byte v6, p0, v7

    if-ne v6, v2, :cond_4

    .line 219
    new-array v2, v5, [B

    .line 220
    invoke-static {p0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v5

    .line 222
    aget-byte v5, p0, v7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    add-int/2addr v7, v4

    .line 226
    aget-byte v4, p0, v7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 229
    array-length v4, p0

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 230
    array-length v5, p0

    sub-int/2addr v5, v7

    invoke-static {p0, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 227
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final pcmEncodingToAVSampleFormat(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static printExtraData([B)V
    .locals 2

    if-eqz p0, :cond_1

    .line 359
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 363
    invoke-static {p0, v0, v1}, Lcom/oplus/tblplayer/utils/ByteUtil;->toHexArrayString([BII)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FfmpegUtil"

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setSpecialVideoCodecFlag(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isSpecialVideoCodec:Z

    return-void
.end method

.method public static shouldRequireConvert2AnnexB(Lcom/oplus/tblplayer/ffmpeg/Track;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/Track;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/Track;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/Track;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->nalUnitLengthFieldLength:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->nalUnitLengthFieldLength:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldRequireParseConfiguration(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 185
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error reading form bytes."

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
