.class public abstract Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SimpleDecoderVideoRenderer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimpleVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private fastRendererTimeUs:J

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private forceRenderFrame:Z

.field protected final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private initialPositionUs:J

.field private inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastPresentTimeUs:J

.field private lastRenderTimeUs:J

.field private mAppContext:Landroid/content/Context;

.field protected final maxDroppedFramesToNotify:I

.field private needDropFrame:Z

.field private nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

.field private outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

.field private outputHeight:I

.field private outputStreamEnded:Z

.field private outputWidth:I

.field private pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedWidth:I

.field private surface:Landroid/view/Surface;

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 124
    invoke-direct/range {v0 .. v8}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;-><init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 132
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->mAppContext:Landroid/content/Context;

    .line 133
    iput-wide p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 134
    iput p6, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    .line 135
    iput-object p7, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 136
    iput-boolean p8, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 137
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 138
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 139
    new-instance p3, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 140
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 141
    new-instance p3, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p3, p4, p5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 p3, 0x0

    .line 142
    iput p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    .line 143
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 144
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    .line 145
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    .line 146
    iput-boolean p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->needDropFrame:Z

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 736
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedWidth:I

    .line 737
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedHeight:I

    return-void
.end method

.method private drainOutputBuffer(J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/oplus/tblplayer/exception/VideoDecoderException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v5, p1

    .line 312
    iget-wide v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 313
    iput-wide v5, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 315
    :cond_0
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    const-string v1, "SimpleVideoRenderer"

    const/4 v4, 0x0

    const/4 v10, 0x0

    if-nez v0, :cond_3

    .line 316
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-eqz v0, :cond_1

    .line 317
    iput-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 318
    iput-object v4, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iput-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 322
    :goto_0
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-nez v0, :cond_2

    const-string v0, "drainOutputBuffer:  no buffers"

    .line 323
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 326
    :cond_2
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v7, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v8, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v8, v8, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 327
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v7, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v7, v7, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v7

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 330
    :cond_3
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-nez v0, :cond_4

    .line 331
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iput-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 334
    :cond_4
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v7, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    .line 335
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    if-ne v0, v7, :cond_5

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_1

    .line 340
    :cond_5
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    .line 341
    iput-object v4, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 342
    iput-boolean v11, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderToEndOfStream()V

    :goto_1
    return v10

    .line 348
    :cond_6
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v12, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    iget-wide v14, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    cmp-long v0, v12, v14

    if-ltz v0, :cond_7

    .line 349
    iput-boolean v10, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->needDropFrame:Z

    .line 352
    :cond_7
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v12, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    iput-wide v12, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    .line 353
    iget-boolean v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->needDropFrame:Z

    if-eqz v0, :cond_9

    iget-wide v12, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    cmp-long v0, v12, v2

    if-eqz v0, :cond_8

    iget-wide v14, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    cmp-long v0, v12, v14

    if-lez v0, :cond_9

    .line 355
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need drop timeUs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dropBuffer()V

    .line 357
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return v11

    .line 361
    :cond_9
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v1, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_b

    .line 363
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v0, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 364
    iput-boolean v10, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->skipBuffer()V

    .line 366
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return v11

    :cond_a
    return v10

    .line 372
    :cond_b
    iget-boolean v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    if-eqz v0, :cond_c

    .line 373
    iput-boolean v10, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderBuffer()V

    .line 375
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return v11

    .line 379
    :cond_c
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-eqz v0, :cond_d

    .line 380
    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v0, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    move-wide v3, v0

    goto :goto_2

    :cond_d
    move-wide v3, v2

    .line 383
    :goto_2
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v0, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    sub-long/2addr v0, v5

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 387
    iget-boolean v2, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getState()I

    move-result v2

    if-ne v2, v7, :cond_e

    const-wide/16 v7, 0x7530

    cmp-long v2, v0, v7

    if-lez v2, :cond_11

    iget-object v2, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v7, v2, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    iget-wide v14, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v12, v14

    .line 388
    invoke-virtual {v9, v7, v8, v12, v13}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    .line 394
    :cond_e
    invoke-direct {v9, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->shouldDropBuffersToKeyframe(J)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct/range {p0 .. p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 395
    iput-boolean v11, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    return v10

    .line 397
    :cond_f
    iget-object v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-wide v1, v0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->shouldDropOutputBuffer(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dropBuffer()V

    .line 400
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return v11

    :cond_10
    return v10

    .line 389
    :cond_11
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderBuffer()V

    .line 390
    iget v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return v11
.end method

.method private dropBuffer()V
    .locals 2

    const-string v0, "SimpleVideoRenderer"

    const-string v1, "dropBuffer"

    .line 499
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 500
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 501
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    return-void
.end method

.method private feedInputBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/exception/VideoDecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    if-nez v2, :cond_1

    .line 566
    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    .line 567
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 572
    :cond_1
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 573
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->setFlags(I)V

    .line 574
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {v0, v4}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 575
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    .line 576
    iput v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 581
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    .line 587
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v3, -0x5

    if-ne v0, v3, :cond_5

    .line 598
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return v4

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 602
    iput-boolean v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 603
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {v0, v3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 604
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    return v1

    .line 607
    :cond_6
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->isEncrypted()Z

    move-result v0

    .line 608
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    .line 609
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 612
    :cond_7
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;->flip()V

    .line 615
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->queueInputBuffer(Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;)V

    .line 616
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 617
    iput-boolean v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 618
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 619
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    return v4

    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 590
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    return v1
.end method

.method private flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    .line 538
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    .line 539
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 540
    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 542
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 544
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    .line 545
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {v2}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    .line 547
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {v2}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    .line 551
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    invoke-virtual {v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->flush()V

    .line 554
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 510
    :cond_0
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 513
    iget p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 514
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method private maybeInitDecoder()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 242
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_2
    :try_start_0
    const-string v1, "SimpleVideoRenderer"

    const-string v2, "maybeInitDecoder: createVideoDecoder"

    .line 255
    invoke-static {v1, v2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createVideoDecoder"

    .line 257
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    .line 259
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 261
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 263
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/oplus/tblplayer/exception/VideoDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 756
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 758
    iget-wide v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 759
    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 760
    iput v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 761
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 722
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 724
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    .line 725
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 2

    .line 741
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, p2, :cond_1

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeNotifyVideoSizeChanged: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleVideoRenderer"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedWidth:I

    .line 744
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedHeight:I

    .line 745
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 4

    .line 750
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedWidth:I

    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->reportedHeight:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleVideoRenderer"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 200
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 202
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_1

    .line 210
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 211
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    .line 207
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 215
    :cond_2
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 219
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_4

    if-nez p1, :cond_6

    if-nez v1, :cond_6

    .line 221
    :cond_4
    iget-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_5

    .line 223
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_2

    .line 226
    :cond_5
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 227
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    .line 231
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private releaseDecoder()V
    .locals 3

    const-string v0, "SimpleVideoRenderer"

    const-string v1, "releaseDecoder: "

    .line 270
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 279
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;

    .line 280
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 281
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->nextOutputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    .line 282
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->updateRenderSurface(Landroid/view/Surface;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->release()V

    .line 286
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    .line 287
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    .line 289
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 290
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->forceRenderFrame:Z

    .line 291
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 292
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 293
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v0, :cond_2

    .line 294
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 297
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_3
    return-void
.end method

.method private renderBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const-string v0, "SimpleVideoRenderer"

    const-string v1, "renderBuffer start"

    .line 453
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dropBuffer()V

    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputWidth:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputHeight:I

    if-eq v1, v2, :cond_2

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputWidth:I

    .line 461
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputHeight:I

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderBuffer: videoSizeChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget v2, v2, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-object v1, v1, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->renderToSurface(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;Landroid/view/Surface;)V

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J
    :try_end_0
    .catch Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 483
    invoke-virtual {v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;->printStackTrace()V

    :cond_3
    :goto_0
    const-string v1, "renderBuffer end"

    .line 485
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 494
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 495
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method private renderToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->needDropFrame:Z

    .line 303
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 703
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 656
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-eqz v0, :cond_1

    .line 661
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->mAppContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 662
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 668
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 669
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    .line 670
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_4

    .line 672
    :cond_2
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 674
    invoke-virtual {v1, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;->updateRenderSurface(Landroid/view/Surface;)V

    goto :goto_1

    :cond_3
    const-string v1, "SimpleVideoRenderer"

    const-string v3, "setSurface: Don\'t release SW decoder"

    .line 676
    invoke-static {v1, v3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 681
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 685
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    if-ne v0, v2, :cond_7

    .line 687
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_2

    .line 691
    :cond_5
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 692
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 694
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_7

    .line 697
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 698
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_7
    :goto_2
    return-void
.end method

.method private shouldDropBuffersToKeyframe(J)Z
    .locals 0

    .line 432
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    return p0
.end method

.method private shouldDropOutputBuffer(JJJJ)Z
    .locals 0

    sub-long/2addr p1, p5

    .line 420
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p7, p0

    if-nez p2, :cond_0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 635
    :cond_0
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 637
    :cond_2
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    return v1
.end method

.method private skipBuffer()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skipBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleVideoRenderer"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->release()V

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    return-void
.end method

.method private updateDroppedBufferCounters(I)V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 520
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 521
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 522
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 524
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lt p1, v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/exception/VideoDecoderException;
        }
    .end annotation
.end method

.method protected getLastPresentTimeUs()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    return-wide v0
.end method

.method protected getRenderedFirstFrame()Z
    .locals 0

    .line 713
    iget-boolean p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    return p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 645
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 0

    .line 790
    iget-boolean p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 9

    .line 795
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_3

    .line 801
    :cond_2
    iput-wide v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return v2

    .line 803
    :cond_3
    iget-wide v5, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return v1

    .line 806
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v2

    .line 811
    :cond_5
    iput-wide v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return v1
.end method

.method protected onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 879
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    const/4 v1, -0x1

    .line 880
    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputWidth:I

    .line 881
    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputHeight:I

    .line 882
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 883
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 885
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 888
    :try_start_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 893
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 894
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    :cond_1
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    .line 897
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 893
    :try_start_3
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 894
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 897
    :cond_2
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_2
    move-exception v1

    .line 897
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_3
    move-exception v1

    .line 888
    :try_start_4
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 889
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 893
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 894
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 897
    :cond_4
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_4
    move-exception v1

    .line 897
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_5
    move-exception v1

    .line 893
    :try_start_6
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 894
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 897
    :cond_5
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_6
    move-exception v1

    .line 897
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 899
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 900
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 818
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;->onEnabled(Z)V

    .line 819
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 820
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionReset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleVideoRenderer"

    invoke-static {p2, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 826
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 827
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 828
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    .line 829
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 830
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    .line 831
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 832
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 833
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-eqz p1, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 837
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 839
    :cond_1
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onPositionResetInGop(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 846
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    .line 847
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid positionUs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",lastPresentTimeUs:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastPresentTimeUs:J

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimpleVideoRenderer"

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 851
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->needDropFrame:Z

    .line 852
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 853
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 854
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    return-void
.end method

.method protected onSetFastRendererPosition(JZ)V
    .locals 1

    .line 859
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetFastRendererPosition positionUs:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SimpleVideoRenderer"

    invoke-static {v0, p3}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->fastRendererTimeUs:J

    return-void
.end method

.method protected onStarted()V
    .locals 4

    const/4 v0, 0x0

    .line 865
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 872
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 873
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected queueInputBuffer(Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder<",
            "Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/exception/VideoDecoderException;",
            ">;",
            "Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoInputBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/exception/VideoDecoderException;
        }
    .end annotation

    .line 627
    invoke-virtual {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 157
    iget-boolean p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_0

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " outputStreamEnded"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimpleVideoRenderer"

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iget-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez p3, :cond_3

    .line 164
    iget-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 165
    iget-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_1

    .line 167
    iget-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p3, p3, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p3}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p3, p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 171
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 172
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 181
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    .line 182
    iget-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoder:Lcom/oplus/tblplayer/ffmpeg/FfmpegOplusVideoDecoder;

    if-eqz p3, :cond_6

    :try_start_0
    const-string p3, "drainAndFeed"

    .line 185
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 186
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drainOutputBuffer(J)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 188
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 189
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/oplus/tblplayer/exception/VideoDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 908
    invoke-static {}, Lcom/oplus/tblplayer/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SimpleVideoRenderer"

    const-string p1, "CoreLibrary not available"

    .line 909
    invoke-static {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoderVideoRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    const/4 p1, 0x2

    if-gt p0, p1, :cond_1

    return p0

    .line 916
    :cond_1
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    const/16 v1, 0x20

    :cond_2
    or-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
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
.end method
