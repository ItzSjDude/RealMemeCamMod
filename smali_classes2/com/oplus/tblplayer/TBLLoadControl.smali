.class public Lcom/oplus/tblplayer/TBLLoadControl;
.super Ljava/lang/Object;
.source "TBLLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/TBLLoadControl$EventListener;,
        Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;,
        Lcom/oplus/tblplayer/TBLLoadControl$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0x360000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x3e8

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS_MOBILE:I = 0x1f4

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS_WIFI:I = 0x320

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_LOAD_CONTROL_POLICY:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MAX_BUFFER_MS_MOBILE:I = 0x7530

.field public static final DEFAULT_MAX_BUFFER_MS_WIFI:I = 0x493e0

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x22c0000

.field public static final DEFAULT_PRIORITIZE_SIZE_OVER_TIME_THRESHOLDS:Z = false

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = true

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x1f40000

.field public static final MESSAGE_SET_NETWORK_TYPE:I = 0x1

.field public static final STATE_PREPARED:I = 0x0

.field public static final STATE_RELEASED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TBLLoadControl"


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private bufferPercent:I

.field private hasVideo:Z

.field private isBuffering:Z

.field private listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

.field private loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

.field private mainHandler:Landroid/os/Handler;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final retainBackBufferFromKeyframe:Z

.field private targetBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->createWifiLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object v0

    sput-object v0, Lcom/oplus/tblplayer/TBLLoadControl;->DEFAULT_LOAD_CONTROL_POLICY:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 234
    sget-object v0, Lcom/oplus/tblplayer/TBLLoadControl;->DEFAULT_LOAD_CONTROL_POLICY:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;-><init>(Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;IZ)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 252
    iput-object p2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    int-to-long p1, p3

    .line 253
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->backBufferDurationUs:J

    .line 254
    iput-boolean p4, p0, Lcom/oplus/tblplayer/TBLLoadControl;->retainBackBufferFromKeyframe:Z

    .line 255
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;)V
    .locals 3

    .line 238
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/oplus/tblplayer/TBLLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;IZ)V

    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .locals 1

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 416
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

.method private static hasVideo([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 421
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 422
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private maybeNotifyBufferChanged(ZJJ)V
    .locals 7

    const-string v0, "TBLLoadControl"

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "maybeNotifyBufferChanged: will start Playback (100%)."

    .line 476
    invoke-static {v0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iput v3, p0, Lcom/oplus/tblplayer/TBLLoadControl;->bufferPercent:I

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p2

    .line 481
    div-long/2addr v4, p4

    long-to-int p1, v4

    .line 482
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 483
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 484
    iget p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->bufferPercent:I

    if-eq p1, v1, :cond_1

    .line 485
    iput v1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->bufferPercent:I

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeNotifyBufferChanged: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr p2, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v2

    const/4 p2, 0x2

    div-long/2addr p4, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v4, p2

    const-string p2, "percent: %d, [%d / %d]"

    .line 486
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 491
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->mainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 493
    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/TBLLoadControl;->notifyBufferPercentChanged(I)V

    :cond_2
    return-void
.end method

.method private notifyBufferPercentChanged(I)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 499
    new-instance v1, Lcom/oplus/tblplayer/-$$Lambda$TBLLoadControl$svK1ijmJmhlRRMXQ0IEz0pKukJE;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/-$$Lambda$TBLLoadControl$svK1ijmJmhlRRMXQ0IEz0pKukJE;-><init>(Lcom/oplus/tblplayer/TBLLoadControl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyStateChanged(I)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 505
    new-instance v1, Lcom/oplus/tblplayer/-$$Lambda$TBLLoadControl$mxIJvFETy4534-53a34-taR2en4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/tblplayer/-$$Lambda$TBLLoadControl$mxIJvFETy4534-53a34-taR2en4;-><init>(Lcom/oplus/tblplayer/TBLLoadControl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->targetBufferSize:I

    .line 393
    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    if-eqz p1, :cond_0

    .line 395
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_0
    return-void
.end method

.method private setNetworkType(I)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    iget v0, v0, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->networkType:I

    if-eq v0, p1, :cond_2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBLLoadControl"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {}, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->createMobileLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {}, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->createWifiLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/oplus/tblplayer/TBLLoadControl$EventListener;)V
    .locals 0

    .line 465
    iput-object p2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    .line 466
    iput-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method protected calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 383
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 384
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    aget-object v1, p1, p0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/tblplayer/TBLLoadControl;->getDefaultBufferSize(I)I

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

    .line 297
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public declared-synchronized getLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;
    .locals 1

    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->loadPolicy:Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/TBLLoadControl;->setNetworkType(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyBufferPercentChanged$0$TBLLoadControl(I)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/TBLLoadControl$EventListener;->onBufferPercentChanged(I)V

    return-void
.end method

.method public synthetic lambda$notifyStateChanged$1$TBLLoadControl(I)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->listener:Lcom/oplus/tblplayer/TBLLoadControl$EventListener;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/TBLLoadControl$EventListener;->onLoadControlStateChanged(I)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    const-string v0, "TBLLoadControl"

    const-string v1, "onPrepared"

    .line 260
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->notifyStateChanged(I)V

    .line 262
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 2

    const-string v0, "TBLLoadControl"

    const-string v1, "onReleased"

    .line 290
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->reset(Z)V

    const/4 v0, 0x2

    .line 292
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->notifyStateChanged(I)V

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "TBLLoadControl"

    const-string v1, "onStopped"

    .line 280
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_0
    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->reset(Z)V

    .line 285
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLLoadControl;->notifyStateChanged(I)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2

    .line 268
    invoke-static {p1, p3}, Lcom/oplus/tblplayer/TBLLoadControl;->hasVideo([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->hasVideo:Z

    .line 270
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLLoadControl;->getLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object p2

    .line 271
    iget v0, p2, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0, p1, p3}, Lcom/oplus/tblplayer/TBLLoadControl;->calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->targetBufferBytesOverwrite:I

    :goto_0
    iput p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->targetBufferSize:I

    .line 275
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->targetBufferSize:I

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->retainBackBufferFromKeyframe:Z

    return p0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 10

    .line 312
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 313
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    .line 314
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLLoadControl;->getLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object v4

    .line 315
    iget-boolean v5, p0, Lcom/oplus/tblplayer/TBLLoadControl;->hasVideo:Z

    if-eqz v5, :cond_1

    iget-wide v5, v4, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->minBufferVideoUs:J

    goto :goto_1

    :cond_1
    iget-wide v5, v4, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->minBufferAudioUs:J

    .line 316
    :goto_1
    iget-wide v7, v4, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->maxBufferUs:J

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p3, v9

    if-lez v9, :cond_2

    .line 322
    invoke-static {v5, v6, p3}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v5

    .line 323
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    cmp-long p3, p1, v5

    if-gez p3, :cond_5

    .line 327
    iget-boolean p1, v4, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    goto :goto_3

    :cond_5
    cmp-long p1, p1, v7

    if-gez p1, :cond_6

    if-eqz v0, :cond_7

    .line 329
    :cond_6
    iput-boolean v3, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    .line 340
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_9

    iget-boolean p2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    if-eq p2, v1, :cond_9

    if-eqz p2, :cond_8

    .line 342
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_4

    .line 344
    :cond_8
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 347
    :cond_9
    :goto_4
    iget-boolean p0, p0, Lcom/oplus/tblplayer/TBLLoadControl;->isBuffering:Z

    return p0
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 6

    .line 353
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v2

    .line 354
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLLoadControl;->getLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 355
    iget-wide p2, p1, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide p2, p1, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->bufferForPlaybackUs:J

    :goto_0
    move-wide v4, p2

    const-wide/16 p2, 0x0

    cmp-long p2, v4, p2

    if-lez p2, :cond_2

    cmp-long p2, v2, v4

    if-gez p2, :cond_2

    .line 358
    iget-boolean p1, p1, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/tblplayer/TBLLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 361
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lcom/oplus/tblplayer/TBLLoadControl;->targetBufferSize:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    move-object v0, p0

    move v1, p1

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/oplus/tblplayer/TBLLoadControl;->maybeNotifyBufferChanged(ZJJ)V

    return p1
.end method
