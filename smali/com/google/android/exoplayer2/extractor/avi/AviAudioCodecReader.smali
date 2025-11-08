.class final Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;
.super Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader;
.source "AviAudioCodecReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AAC_SAMPLING_RATE_TABLE:[I

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_FLAC:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_WAVE:I = 0xb

.field private static final MPEG_SAMPLE_COUNT_TABLE:[[I

.field private static final MPEG_SAMPLE_RATE_TABLE:[[I

.field private static final TAG:Ljava/lang/String; = "AviAudioCodecReader"


# instance fields
.field private averageBitPerSec:J

.field private bitPerSecSpec:J

.field private channelsNumSpec:I

.field private frameCount:J

.field private frameDuration:J

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z

.field private mMimeType:Ljava/lang/String;

.field public pcmEncodingType:I

.field private playStartTime:J

.field private sampleRateSpec:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xd

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->AAC_SAMPLING_RATE_TABLE:[I

    const/4 v0, 0x3

    .line 46
    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    sput-object v1, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->MPEG_SAMPLE_RATE_TABLE:[[I

    .line 49
    new-array v1, v2, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->MPEG_SAMPLE_COUNT_TABLE:[[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x2b11
        0x0
        0x5622
        0xac44
    .end array-data

    :array_2
    .array-data 4
        0x2ee0
        0x0
        0x5dc0
        0xbb80
    .end array-data

    :array_3
    .array-data 4
        0x1f40
        0x0
        0x3e80
        0x7d00
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x240
        0x0
        0x240
        0x480
    .end array-data

    :array_6
    .array-data 4
        0x480
        0x0
        0x480
        0x480
    .end array-data

    :array_7
    .array-data 4
        0x180
        0x0
        0x180
        0x180
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasParsedAudioDataHeader:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasOutputFormat:Z

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    .line 59
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameCount:J

    .line 61
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->bitPerSecSpec:J

    .line 62
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->averageBitPerSec:J

    .line 63
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->sampleRateSpec:J

    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->channelsNumSpec:I

    .line 65
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->playStartTime:J

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parseData(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    .line 213
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 215
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    const-string p3, "audio/mpeg"

    if-eq p1, p3, :cond_1

    const-string p3, "audio/mpeg-L2"

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->playStartTime:J

    add-long v1, v0, v2

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    int-to-long p1, p2

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 223
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->bitPerSecSpec:J

    div-long/2addr p1, v0

    .line 224
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameCount:J

    mul-long/2addr v0, v2

    .line 217
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->playStartTime:J

    add-long v1, v0, v2

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 227
    :goto_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameCount:J

    return-void
.end method

.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader$UnsupportedFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 122
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasParsedAudioDataHeader:Z

    const/4 v3, 0x1

    if-nez v2, :cond_8

    .line 124
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v4, 0x2

    const-string v6, "audio/mpeg"

    if-eq v5, v6, :cond_6

    const-string v6, "audio/mpeg-L2"

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v6, "audio/mp4a-latm"

    if-ne v5, v6, :cond_4

    const/4 v5, 0x4

    .line 157
    new-array v5, v5, [I

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aput v6, v5, v3

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aput v6, v5, v4

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    aput v1, v5, v2

    .line 162
    aget v1, v5, v7

    const/16 v6, 0xff

    const-string v8, "AviAudioCodecReader"

    if-ne v1, v6, :cond_1

    aget v1, v5, v3

    const/16 v6, 0xf0

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    aget v1, v5, v3

    and-int/lit8 v1, v1, 0x6

    if-nez v1, :cond_1

    aget v1, v5, v4

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0xf

    const/16 v6, 0xc

    if-ge v1, v6, :cond_1

    aget v1, v5, v2

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    .line 166
    aget v1, v5, v4

    shr-int/lit8 v1, v1, 0x6

    .line 167
    aget v6, v5, v4

    and-int/2addr v6, v2

    shl-int/2addr v6, v4

    aget v2, v5, v2

    shr-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v6

    .line 168
    aget v5, v5, v4

    shr-int/2addr v5, v4

    and-int/lit8 v5, v5, 0xf

    .line 169
    sget-object v6, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->AAC_SAMPLING_RATE_TABLE:[I

    aget v6, v6, v5

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseHeader: aacObjectType = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v2

    goto :goto_2

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is not ADTS AAC, so use avi pre-setting:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v5, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget v6, v5, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget v6, v5, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->channelsNumSpec:I

    const/16 v1, 0x8

    .line 175
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->sampleRateSpec:J

    long-to-int v6, v5

    :goto_0
    const/16 v5, 0xd

    if-ge v7, v5, :cond_3

    .line 177
    sget-object v5, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->AAC_SAMPLING_RATE_TABLE:[I

    aget v5, v5, v7

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_1
    move v11, v2

    move v1, v4

    :goto_2
    move v12, v6

    .line 185
    invoke-static {v1, v5, v11}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v1

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 190
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 189
    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 191
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 192
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasOutputFormat:Z

    goto/16 :goto_5

    :cond_4
    const-string v1, "audio/raw"

    if-ne v5, v1, :cond_5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 194
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->pcmEncodingType:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 196
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 197
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasOutputFormat:Z

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 199
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 201
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 202
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasOutputFormat:Z

    goto :goto_5

    .line 125
    :cond_6
    :goto_3
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    shr-int/lit8 v6, v5, 0x3

    shr-int/2addr v5, v3

    and-int/2addr v5, v2

    .line 133
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v2

    .line 136
    sget-object v8, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->MPEG_SAMPLE_RATE_TABLE:[[I

    aget-object v7, v8, v7

    aget v14, v7, v6

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_7

    move v13, v3

    goto :goto_4

    :cond_7
    move v13, v4

    .line 147
    :goto_4
    sget-object v1, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->MPEG_SAMPLE_COUNT_TABLE:[[I

    aget-object v1, v1, v5

    aget v1, v1, v6

    const v2, 0xf4240

    mul-int/2addr v1, v2

    .line 149
    div-int/2addr v1, v14

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    const/4 v8, 0x0

    .line 152
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x1000

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 154
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 155
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasOutputFormat:Z

    .line 204
    :goto_5
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->hasParsedAudioDataHeader:Z

    :cond_8
    return v3
.end method

.method public seek(JJ)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seek audio internal process to time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AviAudioCodecReader"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 74
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameCount:J

    .line 75
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->playStartTime:J

    .line 76
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->mMimeType:Ljava/lang/String;

    const-string p4, "audio/mpeg"

    if-eq p3, p4, :cond_0

    const-string p4, "audio/mpeg-L2"

    if-eq p3, p4, :cond_0

    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->frameDuration:J

    :cond_0
    return-void
.end method

.method public setAverageBitPerSec(J)V
    .locals 1

    .line 116
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->averageBitPerSec:J

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set average bit per sec :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AviAudioCodecReader"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBitPerSec(J)V
    .locals 1

    .line 101
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->bitPerSecSpec:J

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Audio frame bit per sec :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AviAudioCodecReader"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChannelsNum(I)V
    .locals 1

    .line 111
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->channelsNumSpec:I

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Audio frame channels number :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AviAudioCodecReader"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPCMEncodingType(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 93
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->pcmEncodingType:I

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->pcmEncodingType:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 87
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->pcmEncodingType:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->pcmEncodingType:I

    :goto_0
    return-void
.end method

.method public setSampleRate(J)V
    .locals 1

    .line 106
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->sampleRateSpec:J

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Audio frame sample rate :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AviAudioCodecReader"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
