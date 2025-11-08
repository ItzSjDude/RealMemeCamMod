.class public Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;
.super Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;
.source "FfmpegOplusVideoDecoder.java"

# interfaces
.implements Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder<",
        "Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;",
        "Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;",
        "Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;",
        ">;",
        "Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;"
    }
.end annotation


# static fields
.field private static final AV_PKT_FLAG_CORRUPT:I = 0x2

.field private static final AV_PKT_FLAG_DISCARD:I = 0x4

.field private static final AV_PKT_FLAG_DISPOSABLE:I = 0x10

.field private static final AV_PKT_FLAG_KEY:I = 0x1

.field private static final AV_PKT_FLAG_TRUSTED:I = 0x8

.field private static final DECODER_ERROR_EAGAIN:I = -0x3

.field private static final DECODER_ERROR_EOF:I = -0x4

.field private static final DECODER_ERROR_INVALID_DATA:I = -0x2

.field private static final DECODER_ERROR_OTHER:I = -0x1

.field private static final DECODER_SUCCESS:I = 0x0

.field private static final ERROR_DECODING:I = 0x3

.field private static final ERROR_INIT:I = 0x2

.field private static final ERROR_LOAD_LIB:I = 0x1

.field private static final ERROR_OTHER:I = 0x5

.field private static final ERROR_RENDERING:I = 0x6

.field private static final ERROR_RESETTING:I = 0x4

.field public static final OUTPUT_MODE_NONE:I = -0x1

.field public static final OUTPUT_MODE_RGB:I = 0x1

.field public static final OUTPUT_MODE_YUV:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FfmpegOplusVideoDecoder"


# instance fields
.field private final codecName:Ljava/lang/String;

.field private final codecParametersData:[B

.field private draining:Z

.field private final extraData:[B

.field private nativeContext:J

.field private outputMode:I

.field private rotationDegrees:I


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;
        }
    .end annotation

    .line 79
    new-array p1, p1, [Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    new-array p2, p2, [Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->outputMode:I

    .line 71
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->rotationDegrees:I

    const-string p2, "FfmpegOplusVideoDecoder"

    const-string v0, "FfmpegOplusVideoDecoder create."

    .line 82
    invoke-static {p2, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    if-eqz p4, :cond_4

    .line 94
    iget-object v0, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 99
    invoke-static {p4}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->getExtraData(Lcom/google/android/exoplayer2/Format;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->extraData:[B

    .line 100
    invoke-static {p4}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->getCodecParametersData(Lcom/google/android/exoplayer2/Format;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecParametersData:[B

    .line 101
    iget p4, p4, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p4, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->rotationDegrees:I

    .line 102
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->outputMode:I

    .line 103
    sget-object p4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CPH2095"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 104
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CPH2097"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 105
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CPH2101"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 106
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CPH2099"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 107
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CPH2103"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 110
    :cond_0
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->rotationDegrees:I

    .line 113
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->extraData:[B

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecParametersData:[B

    iget v4, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->rotationDegrees:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegInitialize(Ljava/lang/String;[B[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 123
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->setInitialInputBufferSize(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 126
    new-instance p1, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const-string p1, "Failed to initialize decoder."

    invoke-direct {p0, p2, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 115
    new-instance p1, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 96
    :cond_3
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NULL codec name for mime type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 90
    :cond_4
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const-string p1, "Create ffmpeg decoder fail with format is null."

    invoke-direct {p0, p2, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 85
    :cond_5
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const/4 p1, 0x1

    const-string p2, "Failed to load decoder native libraries."

    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[B[BII)J
.end method

.method private native ffmpegReceiveFrame(JILcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Z)I
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegRenderFrame(JLandroid/view/Surface;Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;III)I
.end method

.method private native ffmpegReset(J)J
.end method

.method private native ffmpegSendPacket(JLjava/nio/ByteBuffer;IJI)I
.end method

.method private native ffmpegUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static getCodecParametersData(Lcom/google/android/exoplayer2/Format;)[B
    .locals 0

    .line 286
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->getFfmpegCodecParametersData(Lcom/google/android/exoplayer2/Format;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getExtraData(Lcom/google/android/exoplayer2/Format;)[B
    .locals 0

    .line 278
    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->getFfmpegExtraData(Lcom/google/android/exoplayer2/Format;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->createInputBuffer()Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected createInputBuffer()Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;
    .locals 0

    .line 132
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->createOutputBuffer()Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected createOutputBuffer()Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;
    .locals 1

    .line 137
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;-><init>(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;)V

    return-object v0
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;
    .locals 2

    .line 142
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const/4 v0, 0x5

    const-string v1, "video decode failed"

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    move-result-object p0

    return-object p0
.end method

.method protected decode(Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Z)Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v0, 0x0

    const/4 v11, 0x4

    const-string v12, "FfmpegOplusVideoDecoder"

    const/4 v13, 0x0

    if-eqz p3, :cond_1

    const-string v2, "Decode context reset."

    .line 166
    invoke-static {v12, v2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-wide v2, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    invoke-direct {v8, v2, v3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegReset(J)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    .line 168
    iget-wide v2, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 169
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const-string v1, "Error resetting (see logcat)."

    invoke-direct {v0, v11, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 171
    :cond_0
    iput-boolean v13, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->draining:Z

    .line 177
    :cond_1
    iget-boolean v2, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->draining:Z

    const-string v14, "ffmpegDecode error: (see logcat)"

    const/high16 v15, -0x80000000

    const/4 v7, -0x3

    const/16 v16, 0x0

    if-nez v2, :cond_7

    if-eqz v9, :cond_7

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->isEndOfStream()Z

    move-result v2

    if-nez v2, :cond_3

    .line 179
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_0

    :cond_2
    move v2, v13

    :goto_0
    or-int/2addr v2, v13

    move-object v3, v0

    move v4, v1

    move/from16 v17, v2

    goto :goto_1

    .line 187
    :cond_3
    iput-wide v0, v9, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->timeUs:J

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->draining:Z

    const-string v0, "The decoder entering the draining mode."

    .line 190
    invoke-static {v12, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v13

    move/from16 v17, v4

    move-object/from16 v3, v16

    .line 194
    :goto_1
    iget-wide v1, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    iget-wide v5, v9, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->timeUs:J

    move-object/from16 v0, p0

    const/4 v13, -0x1

    move v11, v7

    move/from16 v7, v17

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJI)I

    move-result v0

    if-eq v0, v11, :cond_6

    const/4 v1, -0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v13, :cond_4

    goto :goto_2

    .line 205
    :cond_4
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    invoke-direct {v0, v13, v14}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 202
    :cond_5
    invoke-virtual {v9, v15}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->setFlags(I)V

    return-object v16

    .line 199
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DECODER_ERROR_EAGAIN: timeUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v11, v7

    const/4 v13, -0x1

    .line 215
    :goto_2
    iget-wide v1, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    iget v3, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->outputMode:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegReceiveFrame(JILcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Z)I

    move-result v0

    const/4 v1, -0x4

    if-eq v0, v1, :cond_a

    if-eq v0, v11, :cond_9

    if-eq v0, v13, :cond_8

    goto :goto_3

    .line 229
    :cond_8
    new-instance v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    invoke-direct {v0, v13, v14}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 226
    :cond_9
    invoke-virtual {v10, v15}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->addFlag(I)V

    goto :goto_3

    :cond_a
    const/4 v0, 0x4

    .line 220
    invoke-virtual {v10, v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->addFlag(I)V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, v8, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->draining:Z

    :goto_3
    return-object v16
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 15
    check-cast p1, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    check-cast p2, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->decode(Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Z)Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ffmpeg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isDraining()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->draining:Z

    return p0
.end method

.method public release()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->release()V

    .line 252
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    .line 253
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    return-void
.end method

.method public bridge synthetic releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;)V

    return-void
.end method

.method public releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method

.method public renderToSurface(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;
        }
    .end annotation

    .line 258
    iget-wide v1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    iget v5, p1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    iget v6, p1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    iget v7, p1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->rgbLineSize:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegRenderFrame(JLandroid/view/Surface;Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;III)I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    const-string p2, "Buffer render error: "

    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public setOutputMode(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->outputMode:I

    return-void
.end method

.method public updateRenderSurface(Landroid/view/Surface;)V
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->ffmpegUpdateSurface(JLandroid/view/Surface;)V

    return-void
.end method
