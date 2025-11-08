.class public Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;
.super Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;
.source "TBLMediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/oplus/tblplayer/render/FallbackRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer$VideoOverSpecificationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLMediaCodecRenderer"


# instance fields
.field private fallbackRenderer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private reconfigureFormat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 62
    invoke-direct/range {v0 .. v9}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .line 82
    invoke-direct/range {p0 .. p9}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->reconfigureFormat:Z

    .line 91
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->fallbackRenderer:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 156
    invoke-static {p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->maybeRemoveFfmpegCodecParameters(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p3

    .line 158
    iget-boolean v0, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->reconfigureFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    const-string p5, "TBLMediaCodecRenderer"

    const-string v0, "Format exceed the renderer\'s capabilities, will reconfigure."

    .line 159
    invoke-static {p5, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/Format;->copyWithFrameRate(F)Lcom/google/android/exoplayer2/Format;

    move-result-object p3

    move-object v5, p3

    move v7, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    move v7, p5

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 164
    invoke-super/range {v2 .. v7}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V

    return-void
.end method

.method public isFallback()Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->fallbackRenderer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 170
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->render(JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public setFallbackRenderer(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->fallbackRenderer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->fallbackRenderer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->isFallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/tblplayer/render/MediaCodecVideoRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video format support with mime type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", support: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TBLMediaCodecRenderer"

    invoke-static {v0, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget p2, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v3, 0x6

    if-eq p2, v3, :cond_1

    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget p2, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v3, 0x7

    if-ne p2, v3, :cond_6

    .line 110
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format support with HDR info: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object p2, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x64d35005

    if-eq v4, v5, :cond_3

    const v5, 0x71b41773

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "A102OP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v3, v2

    goto :goto_0

    :cond_3
    const-string v4, "CPH2309"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v3, v1

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_5

    goto :goto_1

    .line 117
    :cond_5
    new-instance p1, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer$VideoOverSpecificationException;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Device not support HDR 10bit"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer$VideoOverSpecificationException;-><init>(Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;Ljava/lang/Throwable;)V

    throw p1

    .line 127
    :cond_6
    :goto_1
    invoke-static {p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtraDataEmpty(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/mp4v-es"

    .line 128
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    :cond_7
    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/av01"

    .line 129
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 130
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isSpecialVideoCodec()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    .line 134
    :cond_8
    invoke-static {p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isFfmpegExtractor(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 135
    invoke-static {p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->isVideoPixelFormatHwNotSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_9
    and-int/lit8 p2, p1, 0x3

    const/4 p3, 0x3

    if-ne p2, p3, :cond_a

    const-string p2, "Format exceed the renderer\'s capabilities, need reconfigure."

    .line 140
    invoke-static {v0, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-boolean v2, p0, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer;->reconfigureFormat:Z

    and-int/lit8 p0, p1, 0x18

    and-int/lit8 p1, p1, 0x20

    or-int/2addr p0, p1

    or-int/lit8 p0, p0, 0x4

    return p0

    :cond_a
    return p1

    :cond_b
    :goto_2
    return v1
.end method
