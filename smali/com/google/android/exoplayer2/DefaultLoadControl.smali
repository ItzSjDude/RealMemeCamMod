.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0x360000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x22c0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = true

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x1f40000


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final retainBackBufferFromKeyframe:Z

.field private final targetBufferBytesOverwrite:I

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 262
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 283
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 305
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;IZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;IZ)V
    .locals 5

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bufferForPlaybackMs"

    const-string v1, "0"

    const/4 v2, 0x0

    .line 329
    invoke-static {p4, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 330
    invoke-static {p5, v2, v3, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    .line 332
    invoke-static {p2, p4, v4, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {p2, p5, v4, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "maxBufferMs"

    .line 338
    invoke-static {p3, p2, v0, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "backBufferDurationMs"

    .line 339
    invoke-static {p9, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long p1, p2

    .line 342
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    int-to-long p1, p3

    .line 343
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    int-to-long p1, p4

    .line 344
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long p1, p5

    .line 345
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 346
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 347
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 348
    iput-object p8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    int-to-long p1, p9

    .line 349
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    .line 350
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 483
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .locals 1

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 467
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/high16 p0, 0x1f40000

    return p0

    :pswitch_3
    const/high16 p0, 0x360000

    return p0

    :pswitch_4
    const/high16 p0, 0x22c0000

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reset(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 476
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_1

    .line 478
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 442
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 443
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    aget-object v1, p1, p0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 385
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 375
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 361
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 363
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p2

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 365
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 0

    .line 390
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return p0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 8

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 396
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 397
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    .line 402
    invoke-static {v4, v5, p3}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v4

    .line 403
    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    .line 406
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    goto :goto_2

    .line 407
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p1, p1, v4

    if-gez p1, :cond_5

    if-eqz v0, :cond_6

    .line 408
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 410
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eq p2, v1, :cond_8

    if-eqz p2, :cond_7

    .line 412
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_3

    .line 414
    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 417
    :cond_8
    :goto_3
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return p0
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 2

    .line 423
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 424
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    .line 425
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 428
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    if-lt p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
