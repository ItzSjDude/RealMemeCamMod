.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;
    }
.end annotation


# static fields
.field private static final ACCURATE_SEEK_INTERVAL_MS:I = 0x1

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x9

.field public static final MSG_PLAYBACK_INFO_CHANGED:I = 0x0

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x1

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field public static final MSG_PLAYBACK_SEEK_COMPLETE:I = 0x3

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x8

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEEK_TO_INTERNAL:I = 0x11

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xc

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xd

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0xa

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xb

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0x3

.field public static final SEEK_FAILED:I = 0x1

.field public static final SEEK_SUCCESS:I = 0x0

.field public static final SEEK_TYPE_FAST_SEEK_DISABLE_PREVIEW:I = 0x2

.field public static final SEEK_TYPE_FAST_SEEK_ENABLE_PREVIEW:I = 0x1

.field public static final SEEK_TYPE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private final mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private nextPendingMessageIndex:I

.field private pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPrepareCount:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private final playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;ZIZLandroid/os/Handler;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 283
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 284
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 285
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 286
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 287
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 288
    iput p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 289
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 290
    iput-object p9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 291
    iput-object p10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 292
    new-instance p6, Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-direct {p6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;-><init>()V

    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 294
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->getBackBufferDurationUs()J

    move-result-wide p6

    iput-wide p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 295
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 297
    sget-object p4, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 299
    invoke-static {p6, p7, p3}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(JLcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 300
    new-instance p3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 301
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 p3, 0x0

    move p4, p3

    .line 302
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 303
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 304
    iget-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object p7, p1, p4

    invoke-interface {p7}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {p1, p0, p10}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 307
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 308
    new-array p1, p3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 309
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 310
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 311
    invoke-virtual {p2, p0, p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 315
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 317
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 318
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 320
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    return-void
.end method

.method private deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 1186
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    throw v0
.end method

.method private disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1297
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1298
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    return-void
.end method

.method private doSomeWork()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 664
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 666
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v3

    if-nez v3, :cond_0

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    const-wide/16 v3, 0xa

    .line 669
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    .line 672
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const-string v4, "doSomeWork"

    .line 674
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 679
    iget-object v8, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v9, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v9, v11

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v8, v9, v10, v11}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 685
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v9, v8

    const/4 v11, 0x1

    move v13, v11

    move v14, v13

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v12, v9, :cond_a

    aget-object v6, v8, v12

    .line 689
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getCurSeekType()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 691
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    if-eq v7, v11, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v12

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v12

    .line 692
    iget-wide v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v6, v11, v12, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    :goto_2
    if-eqz v14, :cond_3

    .line 693
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 698
    :goto_3
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v11

    if-nez v11, :cond_5

    .line 699
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererWaitingForNextStream(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    if-nez v11, :cond_6

    .line 701
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_6
    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 704
    :goto_6
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v11

    if-ne v11, v10, :cond_9

    .line 705
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->firstVideoFrameRendered()Z

    move-result v10

    .line 706
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->isSeeking()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 707
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    move-object v12, v8

    .line 708
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->lastPresentTimeUs()J

    move-result-wide v7

    .line 707
    invoke-virtual {v11, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->setLastVideoPresentTimeUs(J)V

    goto :goto_7

    :cond_8
    move-object v12, v8

    :goto_7
    move v15, v10

    goto :goto_8

    :cond_9
    move-object v12, v8

    :goto_8
    add-int/lit8 v6, v16, 0x1

    move-object v8, v12

    const/4 v11, 0x1

    move v12, v6

    const-wide/16 v6, 0x3e8

    goto :goto_0

    :cond_a
    if-nez v13, :cond_b

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 716
    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v14, :cond_d

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v8

    if-eqz v8, :cond_c

    .line 717
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_d

    :cond_c
    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v3, :cond_d

    .line 721
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_9

    .line 723
    :cond_d
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_e

    .line 724
    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 725
    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 726
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_11

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_9

    .line 729
    :cond_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v3, v7, :cond_11

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-nez v3, :cond_f

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_f
    if-nez v13, :cond_11

    .line 731
    :cond_10
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 732
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 736
    :cond_11
    :goto_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_12

    .line 737
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_12

    aget-object v8, v3, v5

    .line 738
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 742
    :cond_12
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->isSeeking()Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v15, :cond_13

    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "current seek complete"

    .line 743
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 744
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSeekCompleted(Z)V

    .line 745
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->hasPendingSeek()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 746
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v4, 0x11

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 748
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getPendingSeekId()I

    move-result v5

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 749
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getPendingSeekType()I

    move-result v8

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 750
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getPendingSeekPosition()Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move-result-object v9

    .line 747
    invoke-interface {v3, v4, v5, v8, v9}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 751
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    if-nez v15, :cond_14

    const-wide/16 v3, 0x1

    .line 756
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_b

    .line 757
    :cond_14
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v7, :cond_16

    :cond_15
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_17

    :cond_16
    const-wide/16 v3, 0x3

    .line 760
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_b

    .line 761
    :cond_17
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v6, :cond_18

    const-wide/16 v3, 0x3e8

    .line 763
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_b

    .line 765
    :cond_18
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 768
    :goto_b
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void
.end method

.method private enableRenderer(IZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1971
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    .line 1972
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    aput-object v1, v2, p3

    .line 1973
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p3

    if-nez p3, :cond_2

    .line 1974
    iget-object p3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v3, p3, p1

    .line 1976
    iget-object p3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p3

    .line 1978
    invoke-static {p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 1980
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p3, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v5

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v5

    .line 1984
    :goto_1
    iget-object p2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1986
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v9

    move-object v2, v1

    .line 1984
    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1987
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V

    if-eqz p3, :cond_2

    .line 1990
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_2
    return-void
.end method

.method private enableRenderers([ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1957
    new-array p2, p2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1959
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 1960
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1961
    iget-object v2, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderer(IZI)V

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1290
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1291
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private static getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2041
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2042
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2044
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1699
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getTotalBufferedDurationUs()J
    .locals 2

    .line 2024
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .locals 3

    .line 2028
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 2029
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2031
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    sub-long p0, p1, v0

    :goto_0
    return-wide p0
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 1878
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1882
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1883
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .locals 5

    .line 2002
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2003
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2005
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2006
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2008
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2010
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_1

    .line 2013
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2014
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 2015
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4

    .line 2018
    iget-object p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_4
    return-void
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1863
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1864
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->handlePrepared(F)V

    .line 1865
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 1867
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1869
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1870
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    const/4 p1, 0x0

    .line 1871
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 1873
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1874
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithIsPrepared(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1888
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1889
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 1890
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 1892
    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/Renderer;->setOperatingRate(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSeekCompleted(Z)V
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getCurSeekId()I

    move-result v0

    .line 1899
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->finishSeek()V

    .line 1900
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x3

    .line 1901
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1903
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback()V
    .locals 2

    const/4 v0, 0x4

    .line 1603
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1605
    invoke-direct {p0, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZ)V

    return-void
.end method

.method private handleSourceInfoRefreshed(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1463
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eq v2, v3, :cond_0

    return-void

    .line 1468
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1469
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1470
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    .line 1471
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 1472
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions()V

    .line 1475
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    if-lez v0, :cond_7

    .line 1476
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1477
    iput v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 1478
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 1482
    :try_start_0
    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/IllegalSeekPositionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 1493
    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-nez v0, :cond_1

    .line 1497
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    goto/16 :goto_2

    .line 1499
    :cond_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1500
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1501
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v2, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 1502
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1504
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v11, v7

    goto :goto_0

    :cond_2
    move-wide v11, v13

    .line 1503
    :goto_0
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/PlaybackInfo;->resetToNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1484
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1485
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .line 1486
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1487
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/exoplayer2/PlaybackInfo;->resetToNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1491
    throw v2

    .line 1506
    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    cmp-long v0, v9, v5

    if-nez v0, :cond_6

    .line 1507
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1508
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    goto :goto_2

    .line 1510
    :cond_4
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1512
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 1511
    invoke-direct {v1, v3, v0, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1513
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1514
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1515
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v2, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 1516
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1519
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v11, v7

    goto :goto_1

    :cond_5
    move-wide v11, v13

    .line 1517
    :goto_1
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/PlaybackInfo;->resetToNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_6
    :goto_2
    return-void

    .line 1526
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1528
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1529
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1531
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 1530
    invoke-direct {v1, v3, v0, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1532
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1533
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1534
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v2, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 1535
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1538
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide v11, v7

    goto :goto_3

    :cond_8
    move-wide v11, v13

    .line 1536
    :goto_3
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/PlaybackInfo;->resetToNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_9
    return-void

    .line 1543
    :cond_a
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1544
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v14, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    if-nez v0, :cond_b

    .line 1545
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1547
    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    .line 1551
    invoke-direct {v1, v9, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1554
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    return-void

    .line 1558
    :cond_c
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1560
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1559
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 1561
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1562
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1563
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2, v3, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    if-eqz v0, :cond_e

    .line 1566
    :cond_d
    :goto_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v2, :cond_e

    .line 1567
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 1568
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1569
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_5

    .line 1574
    :cond_e
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    move-wide v7, v13

    :goto_6
    invoke-direct {v1, v10, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v11

    .line 1575
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v15

    .line 1576
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    .line 1581
    :cond_10
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1582
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1583
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1584
    invoke-virtual {v2, v9, v14, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 1585
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1588
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_7

    :cond_11
    move-wide v7, v14

    :goto_7
    invoke-direct {v1, v11, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v12

    .line 1589
    iget-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1591
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v16

    .line 1590
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    .line 1596
    :cond_12
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateQueuedPeriods(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1597
    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 1599
    :cond_13
    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private isTimelineReady()Z
    .locals 5

    .line 1426
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1427
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1428
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long p0, v3, v1

    if-ltz p0, :cond_1

    iget-object p0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1431
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private maybeContinueLoading()V
    .locals 5

    .line 1907
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1908
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 1910
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    return-void

    .line 1914
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v1

    .line 1915
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1917
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1916
    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JF)Z

    move-result v1

    .line 1918
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz v1, :cond_1

    .line 1920
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->continueLoading(J)V

    :cond_1
    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingUpdate(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 541
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 542
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 543
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 539
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->reset(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1449
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1450
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v1, v0, :cond_3

    .line 1452
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1453
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    :cond_2
    iget-object p0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    :cond_3
    return-void
.end method

.method private maybeThrowSourceInfoRefreshError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1439
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1244
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1245
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 1246
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 1247
    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 1251
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1252
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 1253
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    .line 1255
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1256
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1257
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 1259
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v3, v0, :cond_6

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_7

    .line 1264
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1265
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1266
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1267
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_b

    .line 1271
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_b

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_b

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v3, v3, p3

    if-gtz v3, :cond_b

    .line 1276
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1277
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1280
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    goto :goto_4

    .line 1278
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1282
    :goto_4
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1284
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_2

    :cond_b
    :goto_5
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1838
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1839
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1842
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    .line 1844
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1848
    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v9, v0

    .line 1845
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->enqueueNextMediaPeriod([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 1851
    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    const/4 v0, 0x1

    .line 1852
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    const/4 v0, 0x0

    .line 1853
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 2

    .line 552
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 553
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZ)V

    .line 554
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 555
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p2, 0x2

    .line 556
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 557
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 558
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .locals 2

    const/4 v0, 0x1

    .line 1066
    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZ)V

    .line 1068
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 1069
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1070
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1071
    monitor-enter p0

    .line 1072
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1074
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rendererWaitingForNextStream(Lcom/google/android/exoplayer2/Renderer;)Z
    .locals 1

    .line 1996
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p0

    .line 1997
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz p0, :cond_0

    .line 1998
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reselectTracksInternal()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1302
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1306
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1308
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1309
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-eqz v2, :cond_d

    .line 1312
    iget-boolean v6, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 1316
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->selectTracks(F)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    const/4 v1, 0x4

    if-eqz v5, :cond_8

    .line 1329
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1330
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v3

    .line 1332
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    new-array v5, v5, [Z

    .line 1333
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1334
    invoke-virtual {v2, v8, v9, v3, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ[Z)J

    move-result-wide v8

    .line 1336
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v1, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    .line 1338
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v14, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 1343
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v16

    move-wide v12, v8

    .line 1339
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1344
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1345
    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1349
    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    new-array v3, v3, [Z

    move v6, v7

    move v8, v6

    .line 1350
    :goto_1
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v9

    if-ge v6, v10, :cond_7

    .line 1351
    aget-object v9, v9, v6

    .line 1352
    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v10

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v7

    :goto_2
    aput-boolean v10, v3, v6

    .line 1353
    iget-object v10, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v10, v10, v6

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 1357
    :cond_4
    aget-boolean v11, v3, v6

    if-eqz v11, :cond_6

    .line 1358
    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v11

    if-eq v10, v11, :cond_5

    .line 1360
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_3

    .line 1361
    :cond_5
    aget-boolean v10, v5, v6

    if-eqz v10, :cond_6

    .line 1363
    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v9, v10, v11}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1367
    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1368
    invoke-virtual {v5, v6, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTrackInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1370
    invoke-direct {v0, v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_4

    .line 1373
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1374
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_9

    .line 1375
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1377
    invoke-virtual {v2, v8, v9}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v8

    .line 1376
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1378
    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ)J

    .line 1381
    :cond_9
    :goto_4
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1382
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v2, v1, :cond_a

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1385
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v2, v3, :cond_c

    move v5, v7

    .line 1324
    :cond_c
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method private resetInternal(ZZZ)V
    .locals 23

    move-object/from16 v1, p0

    .line 1079
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    .line 1080
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 1081
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    const-wide/16 v3, 0x0

    .line 1082
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1083
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 1085
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 1088
    invoke-static {v6, v7, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1091
    :cond_0
    new-array v0, v2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1092
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear(Z)V

    .line 1093
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1095
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    :cond_1
    if-eqz p3, :cond_3

    .line 1098
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    sget-object v4, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 1099
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    .line 1100
    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    goto :goto_2

    .line 1102
    :cond_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1103
    iput v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    :cond_3
    if-eqz p2, :cond_4

    .line 1105
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1107
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_3
    move-object v15, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_5

    move-wide/from16 v20, v2

    goto :goto_4

    .line 1110
    :cond_5
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v20, v4

    :goto_4
    if-eqz p2, :cond_6

    goto :goto_5

    .line 1111
    :cond_6
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    :goto_5
    move-wide v9, v2

    .line 1112
    new-instance v2, Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p3, :cond_7

    sget-object v3, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    goto :goto_6

    :cond_7
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    :goto_6
    move-object v4, v3

    if-eqz p3, :cond_8

    move-object v5, v0

    goto :goto_7

    :cond_8
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    move-object v5, v3

    :goto_7
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v11, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v12, 0x0

    if-eqz p3, :cond_9

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_8

    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_8
    move-object v13, v3

    if-eqz p3, :cond_a

    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_9

    :cond_a
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_9
    move-object v14, v3

    const-wide/16 v18, 0x0

    const/16 v22, 0x0

    move-object v3, v2

    move-object v6, v15

    move-wide/from16 v7, v20

    move-wide/from16 v16, v20

    invoke-direct/range {v3 .. v22}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p1, :cond_b

    .line 1129
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_b

    .line 1130
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 1131
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    :cond_b
    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1009
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1011
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1012
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->resetPosition(J)V

    .line 1013
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 1014
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resetRendererPositionInGop(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1021
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1023
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1024
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->resetPosition(J)V

    .line 1025
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 1026
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPositionInGop(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z
    .locals 6

    .line 1205
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1210
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1211
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getWindowIndex()I

    move-result v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1212
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 1208
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1217
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1219
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1217
    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    return v1

    .line 1227
    :cond_2
    iput p0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private resolvePendingMessagePositions()V
    .locals 3

    .line 1193
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1194
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1197
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1201
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1650
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1651
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1655
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1663
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v7, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v8, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 1675
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 1682
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1685
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1686
    invoke-virtual {v0, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1685
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v3

    .line 1667
    :catch_0
    new-instance p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget p2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw p0
.end method

.method private resolveSubsequentPeriod(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;
    .locals 9

    .line 1621
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    .line 1623
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move p1, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1625
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 1631
    :cond_0
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 1633
    :cond_2
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private scheduleNextWork(JJ)V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 773
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    const/4 v3, 0x1

    .line 600
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v3

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v7

    .line 603
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p1, :cond_0

    .line 609
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_0
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;IIZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    if-nez p4, :cond_0

    .line 780
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 781
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 782
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->setPendingSeekId(I)V

    .line 783
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->setPendingSeekType(I)V

    .line 784
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->setPendingSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    .line 792
    :cond_0
    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_1

    .line 796
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v3, v9, v10}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    move-object v15, v3

    move-wide v12, v7

    move-wide/from16 v18, v12

    move v3, v2

    goto :goto_1

    .line 802
    :cond_1
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 803
    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 804
    iget-object v12, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v12, v9, v10, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v9

    .line 805
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-eqz v12, :cond_2

    move v3, v2

    move-wide v12, v4

    :goto_0
    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_1

    .line 809
    :cond_2
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 810
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v3, v14, v7

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_0

    :goto_1
    const/4 v9, 0x2

    .line 815
    :try_start_0
    iget-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v10, :cond_c

    iget v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v10, :cond_4

    goto/16 :goto_4

    :cond_4
    cmp-long v0, v12, v7

    if-nez v0, :cond_5

    const/4 v0, 0x4

    .line 820
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 821
    invoke-direct {v1, v6, v2, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZ)V

    goto/16 :goto_5

    .line 826
    :cond_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 827
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    cmp-long v4, v12, v4

    if-eqz v4, :cond_6

    .line 829
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 830
    invoke-interface {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v4

    goto :goto_2

    :cond_6
    move-wide v4, v12

    .line 833
    :goto_2
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v7

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_a

    .line 835
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 836
    :try_start_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_7

    .line 837
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->startSeek()V

    .line 838
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSeekCompleted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :cond_7
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    move-wide/from16 v16, v4

    .line 850
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v3, :cond_8

    .line 853
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v4

    goto :goto_7

    :cond_9
    move-wide v4, v12

    .line 844
    :cond_a
    :try_start_2
    invoke-direct {v1, v15, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v2, v6

    :goto_3
    or-int/2addr v3, v2

    move-wide/from16 v16, v4

    goto :goto_6

    .line 817
    :cond_c
    :goto_4
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    move-wide/from16 v16, v12

    .line 849
    :goto_6
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 850
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v3, :cond_d

    .line 853
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v12

    .line 849
    :goto_7
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 850
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v3, :cond_e

    .line 853
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_e
    throw v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 862
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 861
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 868
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 869
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v1, 0x2

    .line 870
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 873
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 876
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_0

    .line 877
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    goto :goto_1

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    .line 885
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p1

    move v2, v0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    .line 886
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 888
    :cond_3
    new-array p1, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    const/4 v2, 0x0

    :cond_4
    const/4 p1, 0x1

    if-eqz v3, :cond_16

    .line 894
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 895
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 896
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getPendingSeekType()I

    move-result v2

    const-string v4, "ExoPlayerImplInternal"

    if-eqz v2, :cond_10

    .line 897
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    cmp-long p4, p2, v5

    if-gez p4, :cond_5

    .line 898
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_BACKWARD:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    goto :goto_3

    .line 900
    :cond_5
    iget-object p4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 901
    invoke-interface {p4, v5, v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextKeyFramePositionUs(J)J

    move-result-wide v5

    .line 903
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextKeyFramePositionUs:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    cmp-long p4, v5, v7

    if-nez p4, :cond_7

    .line 905
    iget-object p4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p4, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getLargestQueuedTimeUsByType(I)J

    move-result-wide v5

    cmp-long p4, v5, p2

    if-ltz p4, :cond_6

    .line 907
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    goto :goto_3

    .line 909
    :cond_6
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    goto :goto_3

    .line 911
    :cond_7
    iget-wide v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    cmp-long p4, v7, p2

    if-gtz p4, :cond_8

    cmp-long p4, p2, v5

    if-gez p4, :cond_8

    .line 913
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    goto :goto_3

    .line 915
    :cond_8
    sget-object p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 919
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->isSeeking()Z

    move-result v2

    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seekCase:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isSeeking:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",periodPositionUs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", rendererPositionUs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_10

    .line 924
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getPendingSeekType()I

    move-result v2

    if-ne v2, p1, :cond_10

    .line 926
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 927
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getLastVideoPresentTimeUs()J

    move-result-wide v0

    .line 928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastVideoPresentTimeUs:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    const-string p0, "not received any data, just waiting"

    .line 930
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p2

    .line 934
    :cond_9
    sget-object p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    if-ne p4, p1, :cond_a

    const-string p1, "not cached enough data"

    .line 935
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    return-wide p2

    .line 938
    :cond_a
    sget-object p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    if-ne p4, p1, :cond_b

    const-string p1, "need pending the forward seek in same GOP"

    .line 939
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    return-wide p2

    .line 942
    :cond_b
    sget-object p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    if-ne p4, p1, :cond_e

    .line 943
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getFastRendererTimeUs()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_c

    .line 944
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_d

    .line 945
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    goto :goto_4

    .line 948
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getFastRendererTimeUs()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_d

    .line 950
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    :cond_d
    :goto_4
    return-wide p2

    :cond_e
    cmp-long p1, v0, p2

    if-gtz p1, :cond_f

    .line 956
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    const-string p0, "need pending the backward seek if not decoded enough data"

    .line 957
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 961
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setFastRendererPosition(J)V

    :goto_5
    return-wide p2

    .line 968
    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->startSeek()V

    .line 970
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v2, :cond_14

    .line 971
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    if-eq p4, v2, :cond_11

    .line 972
    iget-object p1, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 973
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    goto :goto_7

    .line 975
    :cond_11
    iget-object v2, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 976
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getCurSeekType()I

    move-result v5

    if-ne v5, v1, :cond_12

    goto :goto_6

    :cond_12
    move p1, v0

    .line 975
    :goto_6
    invoke-interface {v2, p2, p3, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUsInGop(JZ)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "seekToUsInGop failed, fallback to SeekToUs"

    .line 978
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    sget-object p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 980
    iget-object p4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 981
    invoke-interface {p4, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    move-object p4, p1

    .line 985
    :cond_13
    :goto_7
    iget-object p1, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long v2, p2, v2

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 989
    :cond_14
    sget-object p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    if-eq p4, p1, :cond_15

    .line 990
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_8

    .line 992
    :cond_15
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPositionInGop(J)V

    .line 993
    :goto_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_9

    .line 995
    :cond_16
    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear(Z)V

    .line 997
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    sget-object p4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 998
    invoke-virtual {p1, p4, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTrackInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 999
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1002
    :goto_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1003
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1139
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_1

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 1144
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1145
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1146
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 1150
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    goto :goto_1

    .line 1142
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1156
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1158
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2

    .line 1161
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1164
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xf

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2

    .line 1169
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1170
    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$XwFxncwlyfAWA4k618O8BNtCsr0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$XwFxncwlyfAWA4k618O8BNtCsr0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setFastRendererPosition(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1033
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1035
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    .line 1036
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set fastRenderTime from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    .line 1037
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->getFastRendererTimeUs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImplInternal"

    .line 1036
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParamsInternal:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekParamsInternal;->setFastRendererTimeUs(J)V

    .line 1042
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1043
    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/Renderer;->setFastRendererPosition(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setIsLoading(Z)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_0
    return-void
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 563
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 569
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 570
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 571
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2

    .line 572
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 579
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateRepeatMode(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 581
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 588
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateShuffleModeEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 590
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 592
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setState(I)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_0
    return-void
.end method

.method private shouldTransitionToReadyState(Z)Z
    .locals 5

    .line 1405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1407
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1412
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 1418
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1419
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    .line 1420
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1422
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 1421
    invoke-interface {p1, v2, v3, v4, p0}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZ)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method private startRenderers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 616
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->start()V

    .line 617
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 618
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopInternal(ZZ)V
    .locals 2

    const/4 v0, 0x1

    .line 1056
    invoke-direct {p0, v0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZ)V

    .line 1058
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 p1, 0x0

    .line 1060
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 1061
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 1062
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 625
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 1

    .line 2036
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method private updatePeriods()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    return-void

    .line 1707
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v1, :cond_1

    .line 1709
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1714
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1715
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1716
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1718
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-nez v0, :cond_4

    .line 1719
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_1

    .line 1717
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1722
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1728
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1729
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v1

    .line 1731
    :goto_2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 1733
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    if-eqz v4, :cond_6

    .line 1738
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 1740
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    .line 1745
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v5

    .line 1746
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 1747
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    .line 1752
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v12

    .line 1748
    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1753
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1754
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    move v4, v3

    move-object v0, v5

    goto :goto_2

    .line 1758
    :cond_8
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v0, :cond_b

    .line 1759
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 1760
    aget-object v0, v0, v1

    .line 1761
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 1764
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_9

    .line 1765
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1766
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 1773
    :cond_b
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_c

    return-void

    :cond_c
    move v0, v1

    .line 1778
    :goto_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v0, v5, :cond_f

    .line 1779
    aget-object v4, v4, v0

    .line 1780
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v0

    .line 1781
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    .line 1782
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 1788
    :cond_f
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_10

    .line 1790
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    return-void

    .line 1794
    :cond_10
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1795
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1796
    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1798
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1799
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_11

    move v5, v3

    goto :goto_7

    :cond_11
    move v5, v1

    :goto_7
    move v6, v1

    .line 1800
    :goto_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v7

    if-ge v6, v8, :cond_17

    .line 1801
    aget-object v7, v7, v6

    .line 1802
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_13

    .line 1808
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_a

    .line 1809
    :cond_13
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v8

    if-nez v8, :cond_16

    .line 1810
    iget-object v8, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    .line 1811
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v9

    .line 1812
    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_14

    move v10, v3

    goto :goto_9

    :cond_14
    move v10, v1

    .line 1813
    :goto_9
    iget-object v11, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v11, v11, v6

    .line 1814
    iget-object v12, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v12, v12, v6

    if-eqz v9, :cond_15

    .line 1815
    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-nez v10, :cond_15

    .line 1822
    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 1823
    iget-object v9, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v9, v9, v6

    .line 1824
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v10

    .line 1823
    invoke-interface {v7, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_a

    .line 1831
    :cond_15
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_16
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 636
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v1

    if-eqz v1, :cond_1

    .line 638
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 647
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v8

    .line 643
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncAndGetPositionUs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 652
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 653
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 654
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 658
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    return-void
.end method

.method private updatePlayingPeriodRenderers(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1932
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1933
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 1934
    aget-object v5, v5, v3

    .line 1935
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    aput-boolean v6, v1, v3

    .line 1936
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1939
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1940
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1941
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1942
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 1946
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1949
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1950
    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTrackInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1952
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .locals 4

    .line 1390
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 1394
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1396
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1400
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    .line 459
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;IIZ)V

    goto/16 :goto_5

    .line 483
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto/16 :goto_5

    .line 489
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_5

    .line 486
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_5

    .line 450
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_5

    .line 447
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_5

    .line 480
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_5

    .line 477
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_5

    .line 471
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_5

    .line 474
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V

    goto :goto_5

    .line 492
    :pswitch_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    return v2

    .line 468
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto :goto_5

    .line 465
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V

    goto :goto_5

    .line 462
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_5

    .line 456
    :pswitch_e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5, p1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;IIZ)V

    goto :goto_5

    .line 453
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    goto :goto_5

    .line 444
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    goto :goto_5

    .line 438
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    move p1, v3

    :goto_4
    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 498
    :goto_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string v4, "Internal runtime error."

    .line 512
    invoke-static {v0, v4, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    invoke-direct {p0, v3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 514
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSeekCompleted(Z)V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v4, "Source error."

    .line 506
    invoke-static {v0, v4, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    invoke-direct {p0, v3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 508
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSeekCompleted(Z)V

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_6

    :catch_2
    move-exception p1

    const-string v4, "Playback error."

    .line 500
    invoke-static {v0, v4, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    invoke-direct {p0, v3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 502
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSeekCompleted(Z)V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$sendMessageToTargetThread$0$ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 1

    .line 1173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    .line 1175
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1176
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 411
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xa

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x10

    .line 426
    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 398
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 1

    .line 418
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    .line 325
    invoke-interface {p0, v0, p2, p3, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 373
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 379
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 386
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJII)V
    .locals 1

    .line 343
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    .line 344
    invoke-interface {p0, p1, p5, p6, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2

    monitor-enter p0

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 364
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 368
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 330
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 350
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x4

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 334
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    .line 354
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 338
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop(Z)V
    .locals 2

    .line 358
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-interface {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
