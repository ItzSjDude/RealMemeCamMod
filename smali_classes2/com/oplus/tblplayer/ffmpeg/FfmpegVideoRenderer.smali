.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;
.super Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;
.source "FfmpegVideoRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I

.field private static final DEFAULT_NUM_OF_INPUT_BUFFERS:I = 0x4

.field private static final DEFAULT_NUM_OF_OUTPUT_BUFFERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FfmpegVideoRenderer"


# instance fields
.field private decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

.field private final numInputBuffers:I

.field private final numOutputBuffers:I

.field private final threads:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x500

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    const/16 v2, 0x2d0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x1800

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 10

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 62
    invoke-direct/range {v1 .. v9}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;-><init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IIII)V

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IIII)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;-><init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 95
    iput p6, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->threads:I

    .line 96
    iput p7, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->numInputBuffers:I

    .line 97
    iput p8, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->numOutputBuffers:I

    return-void
.end method


# virtual methods
.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;",
            "Lcom/oplus/tblplayer/ffmpeg/FfmpegDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    const-string p2, "createGav1Decoder"

    .line 118
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 119
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    :goto_0
    move v3, p2

    .line 121
    new-instance p2, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->numInputBuffers:I

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->numOutputBuffers:I

    iget v4, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->threads:I

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;-><init>(IIIILcom/google/android/exoplayer2/Format;)V

    .line 123
    iput-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    .line 124
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object p2
.end method

.method protected renderOutputBufferToSurface(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;->renderToSurface(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 136
    invoke-virtual {p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->release()V

    return-void

    .line 132
    :cond_0
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegDecoderException;

    const-string p1, "Failed to render output buffer to surface: decoder is not initialized."

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setDecoderOutputMode(I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    if-eqz v0, :cond_0

    const-string v0, "FfmpegVideoRenderer"

    const-string v1, "setDecoderOutputMode: "

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;->setOutputMode(I)V

    :cond_0
    return-void
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 102
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 107
    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
