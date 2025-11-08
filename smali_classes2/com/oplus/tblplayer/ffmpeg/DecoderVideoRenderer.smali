.class public abstract Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "DecoderVideoRenderer.java"


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/ffmpeg/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field protected final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

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

.field private inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedHeight:I

.field private reportedWidth:I

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private surface:Landroid/view/Surface;

.field private waitingForFirstSampleInFormat:Z

.field private waitingForKeys:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 1

    const/4 v0, 0x2

    .line 145
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 146
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 147
    iput p5, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 149
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 150
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 151
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 153
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 913
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 931
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedWidth:I

    .line 932
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedHeight:I

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    .line 771
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget v3, v3, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 775
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget v2, v2, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 779
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->releaseDecoder()V

    .line 782
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 784
    :cond_2
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    invoke-virtual {p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->release()V

    .line 785
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    const/4 p1, 0x1

    .line 786
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamEnded:Z

    :goto_0
    return v1

    .line 791
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 793
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget-wide p2, p2, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, p2, p3}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 794
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    :cond_4
    return p1
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    if-nez v2, :cond_1

    .line 701
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    .line 702
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 707
    :cond_1
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 708
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->setFlags(I)V

    .line 709
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 710
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    .line 711
    iput v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 717
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    :goto_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v3, -0x5

    if-ne v0, v3, :cond_5

    .line 728
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    return v4

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 732
    iput-boolean v4, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 733
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 734
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    return v1

    .line 737
    :cond_6
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 738
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    .line 739
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 742
    :cond_7
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_8

    .line 743
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    iget-wide v5, v3, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->timeUs:J

    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 744
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 746
    :cond_8
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->flip()V

    .line 747
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v1, v0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 748
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onQueueInputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;)V

    .line 749
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 750
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 751
    iput-boolean v4, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 752
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 753
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    return v4

    :cond_9
    :goto_1
    return v1
.end method

.method private hasOutput()Z
    .locals 1

    .line 867
    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 663
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 664
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 666
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 678
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 679
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 680
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 682
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 683
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    move-object v3, p0

    .line 682
    invoke-virtual/range {v3 .. v8}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onDecoderInitialized(Ljava/lang/String;JJ)V

    .line 686
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/oplus/tblplayer/ffmpeg/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 688
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 955
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 957
    iget-wide v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 958
    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 959
    iput v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    .line 960
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x1

    .line 917
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 918
    iget-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_0

    .line 919
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 920
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 2

    .line 936
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedHeight:I

    if-eq v0, p2, :cond_1

    .line 937
    :cond_0
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedWidth:I

    .line 938
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedHeight:I

    .line 939
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 4

    .line 945
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedWidth:I

    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->reportedHeight:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private onOutputChanged()V
    .locals 2

    .line 872
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 874
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 875
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    .line 881
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 882
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method private onOutputReset()V
    .locals 0

    .line 888
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 889
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;
        }
    .end annotation

    .line 811
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 812
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->initialPositionUs:J

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v0, p1

    .line 816
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->hasOutput()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 818
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 819
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->skipOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V

    return v3

    :cond_1
    return v4

    .line 825
    :cond_2
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget-wide v5, v2, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->timeUs:J

    iget-wide v7, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long/2addr v5, v7

    .line 826
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_3

    .line 828
    iput-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 831
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 832
    iget-wide v9, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v7, v9

    .line 833
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->getState()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 834
    :goto_0
    iget-boolean v9, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v9, :cond_5

    if-nez v2, :cond_6

    iget-boolean v9, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_5
    iget-boolean v9, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v9, :cond_7

    :cond_6
    :goto_1
    move v9, v3

    goto :goto_2

    :cond_7
    move v9, v4

    :goto_2
    if-nez v9, :cond_d

    if-eqz v2, :cond_8

    .line 840
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_c

    .line 845
    iget-wide v7, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->initialPositionUs:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_9

    goto :goto_3

    .line 850
    :cond_9
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 851
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    .line 853
    :cond_a
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 854
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->dropOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V

    return v3

    :cond_b
    const-wide/16 p1, 0x7530

    cmp-long p1, v0, p1

    if-gez p1, :cond_c

    .line 859
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v3

    :cond_c
    :goto_3
    return v4

    .line 841
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v3
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 906
    iget-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 908
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 893
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 898
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string v1, "DecoderVideoRenderer"

    const-string v2, "shouldWaitForKeys: "

    .line 900
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/oplus/tblplayer/ffmpeg/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V
    .locals 2

    const-string v0, "DecoderVideoRenderer"

    const-string v1, "dropOutputBuffer: "

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 473
    invoke-virtual {p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->release()V

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

    .line 336
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    .line 337
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 338
    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->releaseDecoder()V

    .line 340
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 342
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    .line 343
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v2}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->release()V

    .line 345
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    .line 348
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
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

    .line 236
    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 241
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 243
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 9

    .line 209
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    :cond_2
    iput-wide v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v2

    .line 218
    :cond_3
    iget-wide v5, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return v1

    .line 221
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v2

    .line 226
    :cond_5
    iput-wide v3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v1
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 490
    :cond_0
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 493
    iget p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 494
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method protected onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 2

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 293
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForKeys:Z

    .line 294
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 295
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 297
    :try_start_0
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 298
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 252
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 253
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 378
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 380
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 382
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v1, :cond_1

    .line 383
    iget-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_0

    .line 385
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->releaseDecoder()V

    .line 389
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 393
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

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

    .line 261
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 262
    iput-boolean p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 263
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 264
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->initialPositionUs:J

    .line 265
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 266
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 272
    :cond_1
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 274
    :goto_0
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    .line 414
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 4

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 286
    iput-wide v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 287
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 309
    iput-wide p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected releaseDecoder()V
    .locals 3

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderInputBuffer;

    .line 356
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBuffer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    .line 357
    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 358
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 359
    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 360
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 362
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 363
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 365
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method public render(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 170
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 176
    iput-boolean v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 177
    iput-boolean v2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 186
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 188
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 191
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 192
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 193
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 194
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/oplus/tblplayer/ffmpeg/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->getIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-wide v1, p2

    move-object v5, p4

    .line 543
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    .line 546
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 547
    iget p2, p1, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->mode:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 548
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    if-nez p2, :cond_2

    .line 549
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

    if-eqz p2, :cond_2

    move p2, p4

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    .line 551
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->dropOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V

    goto :goto_3

    .line 553
    :cond_3
    iget v0, p1, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->width:I

    iget v1, p1, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    if-eqz p2, :cond_4

    .line 555
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

    invoke-interface {p2, p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V

    goto :goto_2

    .line 557
    :cond_4
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->renderOutputBufferToSurface(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 559
    :goto_2
    iput p3, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 560
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p4

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 561
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :goto_3
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/tblplayer/ffmpeg/DecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutputBufferRenderer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

    if-eq v0, p1, :cond_2

    .line 616
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 618
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 619
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    .line 620
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 621
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 627
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    .line 628
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 632
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final setOutputSurface(Landroid/view/Surface;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutputSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoderVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 589
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputBufferRenderer:Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBufferRenderer;

    const/4 p1, 0x1

    .line 590
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    .line 591
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 592
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 598
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->outputMode:I

    .line 599
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 603
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 439
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 426
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 452
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->isBufferLate(J)Z

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

.method protected skipOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;)V
    .locals 1

    .line 461
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 462
    invoke-virtual {p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 506
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    .line 507
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 508
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 509
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 510
    iget p1, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
