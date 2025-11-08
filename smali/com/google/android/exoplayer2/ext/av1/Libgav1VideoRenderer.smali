.class public Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "Libgav1VideoRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I

.field private static final DEFAULT_NUM_OF_INPUT_BUFFERS:I = 0x4

.field private static final DEFAULT_NUM_OF_OUTPUT_BUFFERS:I = 0x4

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Libgav1VideoRenderer"

.field public static final THREAD_COUNT_AUTODETECT:I


# instance fields
.field private final allowedJoiningTimeMs:J

.field private bitmap:Landroid/graphics/Bitmap;

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private final disableLoopFilter:Z

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

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private format:Lcom/google/android/exoplayer2/Format;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private initialPositionUs:J

.field private inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

.field private outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private pendingFormat:Lcom/google/android/exoplayer2/Format;

.field private final playClearSamplesWithoutKeys:Z

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedWidth:I

.field private final scaleToFit:Z

.field private surface:Landroid/view/Surface;

.field private final useSurfaceYuvOutput:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x500

    .line 69
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    const/16 v2, 0x2d0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x1800

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;-><init>(ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 144
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;-><init>(ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;ZZZ)V

    return-void
.end method

.method public constructor <init>(ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 187
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->scaleToFit:Z

    .line 188
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->disableLoopFilter:Z

    .line 189
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->allowedJoiningTimeMs:J

    .line 190
    iput p6, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maxDroppedFramesToNotify:I

    .line 191
    iput-object p7, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 192
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->playClearSamplesWithoutKeys:Z

    .line 193
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->useSurfaceYuvOutput:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    .line 195
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearReportedVideoSize()V

    .line 196
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 197
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 198
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 199
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p4, p5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 p1, -0x1

    .line 202
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    const/4 p1, 0x0

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 937
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 954
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedWidth:I

    .line 955
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedHeight:I

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 809
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 812
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->releaseDecoder()V

    .line 815
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 817
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->release()V

    .line 818
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    const/4 p1, 0x1

    .line 819
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamEnded:Z

    :goto_0
    return v1

    .line 823
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->processOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 825
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->timeUs:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->onProcessedOutputBuffer(J)V

    .line 826
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    :cond_4
    return p1
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 735
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    if-nez v2, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 741
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 742
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->setFlags(I)V

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 744
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    .line 745
    iput v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    return v1

    .line 749
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    :goto_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v3, -0x5

    if-ne v0, v3, :cond_5

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return v4

    .line 764
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 765
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputStreamEnded:Z

    .line 766
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 767
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    return v1

    .line 770
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->isEncrypted()Z

    move-result v0

    .line 771
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    .line 772
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 775
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_8

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->timeUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 777
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    .line 779
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->flip()V

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;)V

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 783
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    .line 784
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReceivedBuffers:Z

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 786
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    return v4

    :cond_9
    :goto_1
    return v1
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

.method private maybeInitDecoder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_2

    .line 690
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 704
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "createVpxDecoder"

    .line 705
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    .line 708
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v3, v5, v5, v2, v4}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    .line 714
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    iget v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->setOutputMode(I)V

    .line 715
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 717
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    .line 718
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->getName()Ljava/lang/String;

    move-result-object v5

    sub-long v8, v6, v0

    move-object v4, p0

    .line 717
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->onDecoderInitialized(Ljava/lang/String;JJ)V

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 973
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 975
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 976
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 977
    iput v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    .line 978
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    .line 943
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 2

    .line 959
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedHeight:I

    if-eq v0, p2, :cond_1

    .line 960
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedWidth:I

    .line 961
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedHeight:I

    .line 962
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    .line 948
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 4

    .line 967
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedWidth:I

    iget p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->reportedHeight:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 843
    iget-wide v5, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->initialPositionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 844
    iput-wide v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->initialPositionUs:J

    .line 847
    :cond_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->timeUs:J

    sub-long/2addr v5, v1

    .line 848
    iget v7, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_2

    .line 850
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->isBufferLate(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    return v9

    :cond_1
    return v10

    .line 857
    :cond_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->timeUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamOffsetUs:J

    sub-long v14, v7, v11

    .line 858
    iget-object v7, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v7, v14, v15}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Format;

    if-eqz v7, :cond_3

    .line 860
    iput-object v7, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 862
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v11, 0x3e8

    mul-long/2addr v7, v11

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    move v11, v9

    goto :goto_0

    :cond_4
    move v11, v10

    .line 864
    :goto_0
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    if-eqz v12, :cond_b

    if-eqz v11, :cond_5

    iget-wide v12, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v7, v12

    .line 866
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_a

    .line 877
    iget-wide v7, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->initialPositionUs:J

    cmp-long v7, v1, v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 881
    :cond_6
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 882
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result v1

    if-eqz v1, :cond_7

    return v10

    .line 884
    :cond_7
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 885
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    return v9

    :cond_8
    const-wide/16 v1, 0x7530

    cmp-long v1, v5, v1

    if-gez v1, :cond_a

    .line 889
    iget-object v13, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v13, :cond_9

    .line 891
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v1

    .line 890
    invoke-interface/range {v13 .. v18}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    .line 893
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    return v9

    :cond_a
    :goto_1
    return v10

    .line 869
    :cond_b
    :goto_2
    iget-object v13, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v13, :cond_c

    .line 871
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v1

    .line 870
    invoke-interface/range {v13 .. v18}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    .line 873
    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    return v9
.end method

.method private renderRgbFrame(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;Z)V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 914
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    if-eq v0, v1, :cond_1

    .line 915
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 924
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v2, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 925
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 923
    invoke-virtual {v0, p2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 927
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 928
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 932
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Landroid/view/Surface;Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 646
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 647
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    const/4 v3, -0x1

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

    if-eq v2, p2, :cond_2

    goto :goto_2

    .line 675
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    if-eq p1, v3, :cond_9

    .line 678
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 679
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    goto :goto_6

    .line 649
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    .line 650
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

    if-eqz p1, :cond_5

    .line 652
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->useSurfaceYuvOutput:Z

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move v0, v3

    .line 655
    :goto_4
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    .line 658
    :goto_5
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    if-eq p1, v3, :cond_8

    .line 659
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-eqz p2, :cond_7

    .line 660
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->setOutputMode(I)V

    .line 663
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 665
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearRenderedFirstFrame()V

    .line 666
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 667
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_6

    .line 672
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearReportedVideoSize()V

    .line 673
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearRenderedFirstFrame()V

    :cond_9
    :goto_6
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 904
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

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

    .line 906
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 534
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->updateDroppedBufferCounters(I)V

    .line 535
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->release()V

    return-void
.end method

.method protected flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    .line 381
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    .line 382
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->releaseDecoder()V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 386
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    .line 387
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->release()V

    .line 389
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->flush()V

    .line 392
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 631
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->setOutput(Landroid/view/Surface;Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    if-ne p1, v1, :cond_1

    .line 633
    check-cast p2, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->setOutput(Landroid/view/Surface;Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 635
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 637
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 9

    .line 265
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputMode:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 271
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    return v2

    .line 273
    :cond_3
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return v1

    .line 276
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v2

    .line 281
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    return v1
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 597
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 600
    iget p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->updateDroppedBufferCounters(I)V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flushDecoder()V

    return v1
.end method

.method protected onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 326
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->waitingForKeys:Z

    .line 327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearReportedVideoSize()V

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearRenderedFirstFrame()V

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 333
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 339
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    .line 342
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 338
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 342
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_2
    move-exception v1

    .line 342
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_3
    move-exception v1

    .line 333
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 334
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 338
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 342
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_4
    move-exception v1

    .line 342
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_5
    move-exception v1

    .line 338
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 342
    :cond_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_6
    move-exception v1

    .line 342
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 343
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

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

    .line 288
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 289
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 422
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 423
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    .line 425
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

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

    .line 428
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_2

    .line 429
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_1

    .line 435
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 434
    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 437
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 430
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getIndex()I

    move-result p0

    .line 430
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 441
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 445
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v1, :cond_5

    .line 446
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_4

    .line 448
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    goto :goto_2

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->releaseDecoder()V

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeInitDecoder()V

    .line 456
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 294
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputStreamEnded:Z

    .line 295
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamEnded:Z

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->clearRenderedFirstFrame()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 297
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->initialPositionUs:J

    .line 298
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->consecutiveDroppedFrameCount:I

    .line 299
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 305
    :cond_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    .line 307
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    .line 477
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 4

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 319
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->joiningDeadlineMs:J

    .line 320
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 353
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamOffsetUs:J

    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected releaseDecoder()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 403
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1InputBuffer;

    .line 404
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;

    .line 405
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->release()V

    .line 406
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReinitializationState:I

    .line 409
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderReceivedBuffers:Z

    .line 410
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method public render(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 232
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->inputStreamEnded:Z

    .line 233
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 242
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeInitDecoder()V

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 246
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 247
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 248
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 249
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;
        }
    .end annotation

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->lastRenderTimeUs:J

    .line 548
    iget v0, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 549
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 552
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    goto :goto_3

    .line 554
    :cond_2
    iget v3, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    iget v4, p1, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBufferRenderer;->setOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    goto :goto_2

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->renderOutputBufferToSurface(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;Landroid/view/Surface;)V

    .line 560
    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->consecutiveDroppedFrameCount:I

    .line 561
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :goto_3
    return-void
.end method

.method protected renderOutputBufferToSurface(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;
        }
    .end annotation

    .line 574
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    if-eqz p0, :cond_0

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->renderToSurface(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;Landroid/view/Surface;)V

    .line 579
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->release()V

    return-void

    .line 575
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;

    const-string p1, "Failed to render output buffer to surface: decoder is not initialized."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 502
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 489
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->isBufferLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 515
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V
    .locals 1

    .line 524
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 525
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->release()V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 210
    invoke-static {}, Lcom/google/android/exoplayer2/ext/av1/Gav1Library;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/av01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x14

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 613
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    .line 614
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->consecutiveDroppedFrameCount:I

    .line 615
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 616
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 619
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/Libgav1VideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
