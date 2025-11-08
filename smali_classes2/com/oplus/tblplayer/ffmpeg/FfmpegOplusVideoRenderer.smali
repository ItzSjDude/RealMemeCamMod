.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;
.super Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;
.source "FfmpegOplusVideoRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I

.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0xc0000

.field private static final NUM_INPUT_BUFFERS:I = 0x4

.field private static final NUM_OUTPUT_BUFFERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FfmpegVideoRenderer"


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x500

    .line 35
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    const/16 v2, 0x2d0

    .line 36
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x1800

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 48
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;->mAppContext:Landroid/content/Context;

    const-string p0, "FfmpegVideoRenderer"

    const-string p1, "SW video renderer init!"

    .line 49
    invoke-static {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/exception/VideoDecoderException;
        }
    .end annotation

    const-string p0, "FfmpegVideoRenderer"

    const-string p2, "createDecoder: SW video decoder."

    .line 55
    invoke-static {p0, p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p0, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    sget p2, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;-><init>(IIILcom/google/android/exoplayer2/Format;)V

    return-object p0
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "supportsFormatInternal: format is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FfmpegVideoRenderer"

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "supportsFormatInternal: Format Not Support. MIME = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Container = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 71
    :cond_1
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "supportsFormatInternal: Drm Not Support"

    .line 72
    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string p0, "supportsFormatInternal: FFmpeg support"

    .line 75
    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0

    .line 64
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "supportsFormatInternal: libAvailable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isVideo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
