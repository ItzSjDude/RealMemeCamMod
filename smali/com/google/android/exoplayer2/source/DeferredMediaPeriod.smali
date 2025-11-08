.class public final Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private listener:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 68
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 70
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 4

    .line 236
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 4

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestQueuedTimeUsByType(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getNextKeyFramePositionUs(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 200
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_2

    .line 144
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    .line 146
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, p0, v0}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;->onPrepareError(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 127
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 128
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 174
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public seekToUsInGop(JZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 13

    move-object v0, p0

    .line 159
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    .line 161
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    .line 163
    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPrepareErrorListener(Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    return-void
.end method
