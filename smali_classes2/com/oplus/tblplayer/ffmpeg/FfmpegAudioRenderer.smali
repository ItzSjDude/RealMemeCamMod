.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "FfmpegAudioRenderer.java"


# static fields
.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "FfmpegAudioRenderer"


# instance fields
.field private decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    move-result-object p0

    return-object p0
.end method

.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoderException;
        }
    .end annotation

    .line 85
    new-instance p2, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    const/16 v0, 0x10

    const/16 v1, 0x1680

    invoke-direct {p2, v0, v0, v1, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;-><init>(IIILcom/google/android/exoplayer2/Format;)V

    iput-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    .line 86
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    return-object p0
.end method

.method public getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .locals 13

    .line 97
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;->getChannelCount()I

    move-result v6

    .line 98
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoder;->getSampleRate()I

    move-result v7

    const/4 v1, 0x0

    const-string v2, "audio/raw"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 99
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method protected onPositionResetInGop(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .line 65
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 70
    :cond_1
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/16 p0, 0x8

    return p0
.end method
