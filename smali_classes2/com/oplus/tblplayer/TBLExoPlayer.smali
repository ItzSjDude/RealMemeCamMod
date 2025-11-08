.class public Lcom/oplus/tblplayer/TBLExoPlayer;
.super Lcom/oplus/tblplayer/AbstractMediaPlayer;
.source "TBLExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static TAG:Ljava/lang/String; = "TBLExoPlayer"


# instance fields
.field protected extractorType:I

.field private fallbackRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/render/FallbackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected hasComplete:Z

.field protected hasRelease:Z

.field protected mAppContext:Landroid/content/Context;

.field protected mEventHandler:Landroid/os/Handler;

.field protected mInnerListener:Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

.field protected mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field protected mIsBuffering:Z

.field protected mIsPreparing:Z

.field protected mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

.field protected mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

.field protected mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

.field protected mOldIsPlaying:Z

.field protected mRenderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

.field protected mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

.field protected mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field protected mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field protected rendererType:I

.field private rollupRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/render/RollupRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/TBLExoPlayer;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/tblplayer/TBLExoPlayer;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 125
    invoke-direct {p0}, Lcom/oplus/tblplayer/AbstractMediaPlayer;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 85
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    .line 90
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsBuffering:Z

    .line 91
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    .line 92
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasRelease:Z

    .line 95
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    .line 104
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    .line 126
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v2, "TBLExoPlayer: create"

    invoke-static {v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mEventHandler:Landroid/os/Handler;

    .line 129
    iput p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rendererType:I

    .line 130
    iput p3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->extractorType:I

    const-string p1, "TBLExoPlayer.createPlayer"

    .line 133
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->createInternalPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 135
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 138
    sget-object p1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Create internal player success: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->attachAnalyticsListener()V

    .line 142
    new-instance p1, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    iget-object p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p1, p2, p3}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    .line 143
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/tblplayer/TBLExoPlayer;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyHdrInfo(ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oplus/tblplayer/TBLExoPlayer;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeInitializeSlowMotion()V

    return-void
.end method

.method static synthetic access$300(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyBuffingInfo(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyPlayingChanged(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyPlaybackCompletion(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/oplus/tblplayer/TBLExoPlayer;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeRetryWithBackupSource()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oplus/tblplayer/TBLExoPlayer;Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeRetryWithFallbackRollupRenderer(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result p0

    return p0
.end method

.method private maybeInitializeSlowMotion()V
    .locals 8

    .line 824
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->getOverrideExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/tblplayer/utils/CommonUtil;->isSlowMotionHsr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 828
    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->getOverrideExtension()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 829
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/16 v5, 0x1e

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 831
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v6

    move-object v2, p0

    .line 825
    invoke-static/range {v1 .. v7}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->create(Landroid/content/Context;Lcom/oplus/tblplayer/IMediaPlayer;Ljava/lang/String;FIJ)Lcom/oplus/tblplayer/managers/SlowMotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    .line 834
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 835
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/TBLExoPlayer;->setTrackRendererDisable(I)V

    .line 836
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->start()V

    :cond_0
    return-void
.end method

.method private maybeNotifyBuffingInfo(ZI)V
    .locals 0

    .line 930
    iget-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsBuffering:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2be

    .line 934
    iget-object p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    const/4 p1, 0x0

    .line 935
    iput-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsBuffering:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    const/16 p1, 0x2bd

    .line 941
    iget-object p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    const/4 p1, 0x1

    .line 942
    iput-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsBuffering:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeNotifyHdrInfo(ILcom/google/android/exoplayer2/Format;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 957
    iget-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 958
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 961
    :cond_0
    sget-object p1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeNotifyHdrInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 962
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget p2, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    :cond_1
    return-void
.end method

.method private maybeNotifyPlaybackCompletion(ZI)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    iget-boolean p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_1

    .line 973
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 975
    :cond_1
    sget-object p1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string p2, "STATE_ENDED will callback completion."

    invoke-static {p1, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-direct {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyPlaybackReport()V

    .line 977
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnCompletion()V

    const/4 p1, 0x1

    .line 978
    iput-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    goto :goto_0

    .line 983
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    if-eqz p1, :cond_3

    .line 984
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeNotifyPlaybackReport()V
    .locals 4

    .line 920
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->checkState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->endSession()Lcom/oplus/tblplayer/monitor/Report;

    move-result-object v0

    .line 922
    sget-object v1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPlaybackReport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnPlaybackResult(Lcom/oplus/tblplayer/monitor/Report;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyPlayingChanged(ZI)V
    .locals 2

    .line 948
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->isPlaying()Z

    move-result p1

    .line 949
    iget-boolean p2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    if-eq p2, p1, :cond_0

    .line 950
    sget-object p2, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnIsPlayingChanged: isPlaying is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnIsPlayingChanged(Z)V

    .line 952
    iput-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized maybeResetFallbackRollupRenderers()V
    .locals 3

    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/tblplayer/render/FallbackRenderer;

    .line 904
    invoke-interface {v2, v1}, Lcom/oplus/tblplayer/render/FallbackRenderer;->setFallbackRenderer(Z)V

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/tblplayer/render/RollupRenderer;

    .line 910
    invoke-interface {v2, v1}, Lcom/oplus/tblplayer/render/RollupRenderer;->setRollupRenderer(Z)V

    goto :goto_1

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeRetryWithBackupSource()Z
    .locals 4

    .line 813
    iget-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasRelease:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->hasNextBackupSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->nextBackupSource()Lcom/oplus/tblplayer/misc/MediaUrl;

    move-result-object v0

    .line 816
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/TBLExoPlayer;->buildDataSourceFactory(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    iget v3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->extractorType:I

    .line 815
    invoke-static {v2, v0, v3}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildMediaSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/oplus/tblplayer/misc/MediaUrl;I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 817
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return v2

    :cond_0
    return v1
.end method

.method private maybeRetryWithFallbackRollupRenderer(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 7

    .line 842
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 843
    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 845
    iget-boolean v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasRelease:Z

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 849
    :cond_0
    iget v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rendererType:I

    if-eqz v2, :cond_1

    return v3

    .line 853
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/oplus/tblplayer/render/TBLMediaCodecVideoRenderer$VideoOverSpecificationException;

    if-eqz v2, :cond_2

    return v3

    .line 860
    :cond_2
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const-string v4, "renderers"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 861
    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-class v6, [Lcom/google/android/exoplayer2/Renderer;

    invoke-static {v2, v6, v4}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/Renderer;

    if-eqz v2, :cond_4

    if-ltz v1, :cond_4

    .line 862
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 863
    aget-object v1, v2, v1

    .line 865
    instance-of v2, v1, Lcom/oplus/tblplayer/render/FallbackRenderer;

    if-eqz v2, :cond_4

    .line 866
    instance-of p1, v1, Lcom/oplus/tblplayer/render/RollupRenderer;

    if-eqz p1, :cond_3

    .line 867
    move-object p1, v1

    check-cast p1, Lcom/oplus/tblplayer/render/RollupRenderer;

    invoke-interface {p1}, Lcom/oplus/tblplayer/render/RollupRenderer;->isRollup()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 868
    sget-object p0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string p1, "maybeRetryWithFallbackRollupRenderer: already tried ffmpeg audio decoder,exit"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 872
    :cond_3
    sget-object p1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeRetryWithFallbackRollupRenderer: will fallback renderer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-static {p1, v2, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    check-cast v1, Lcom/oplus/tblplayer/render/FallbackRenderer;

    invoke-interface {v1, v5}, Lcom/oplus/tblplayer/render/FallbackRenderer;->setFallbackRenderer(Z)V

    .line 875
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->retry()V

    return v5

    .line 882
    :cond_4
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FfmpegAudioDecoderException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 883
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-class v0, [Lcom/google/android/exoplayer2/Renderer;

    invoke-static {p1, v0, v4}, Lcom/oplus/tblplayer/utils/ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/Renderer;

    if-eqz p1, :cond_6

    move v0, v3

    .line 885
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 886
    aget-object v1, p1, v0

    .line 887
    instance-of v2, v1, Lcom/oplus/tblplayer/render/RollupRenderer;

    if-eqz v2, :cond_5

    .line 888
    sget-object p1, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRetryWithFallbackRollupRenderer: will rollup renderer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {p1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    check-cast v1, Lcom/oplus/tblplayer/render/RollupRenderer;

    invoke-interface {v1, v5}, Lcom/oplus/tblplayer/render/RollupRenderer;->setRollupRenderer(Z)V

    .line 891
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->retry()V

    return v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v3
.end method

.method private setTrackRendererDisable(I)V
    .locals 4

    const/4 v0, 0x0

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 368
    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachAnalyticsListener()V
    .locals 2

    .line 176
    new-instance v0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;-><init>(Lcom/oplus/tblplayer/TBLExoPlayer;)V

    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInnerListener:Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

    .line 177
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInnerListener:Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 178
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInnerListener:Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/tblplayer/TBLLoadControl;->addEventListener(Landroid/os/Handler;Lcom/oplus/tblplayer/TBLLoadControl$EventListener;)V

    return-void
.end method

.method public buildDataSourceFactory(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 4

    .line 994
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpCallFactory()Lokhttp3/Call$Factory;

    move-result-object v1

    .line 998
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getOkhttpCacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    .line 995
    invoke-static {v0, v1, v2, v3}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildOkHttpDataSourceFactory(Ljava/lang/String;Lokhttp3/Call$Factory;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    .line 1000
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildHttpDataSourceFactory(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v0

    .line 1003
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->isHttpRequestHeadersEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1004
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/util/Map;)V

    .line 1007
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 1011
    invoke-static {p1}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->shouldRequirePreCache(Lcom/oplus/tblplayer/misc/MediaUrl;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreCacheEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1012
    sget-object p0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreCacheDirPath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getPreCacheDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-static {}, Lcom/oplus/tblplayer/config/Globals;->getGlobalPreCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildCacheDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p0

    return-object p0

    .line 1015
    :cond_2
    sget-object p0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string p1, "buildDataSourceFactory: do not require pre cache."

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 237
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "clearVideoSurfaceView"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 253
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "clearVideoTextureView"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method protected createInternalPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 160
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lcom/oplus/tblplayer/render/TBLRenderersFactory;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rendererType:I

    invoke-direct {v0, v1, v2}, Lcom/oplus/tblplayer/render/TBLRenderersFactory;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/oplus/tblplayer/TBLLoadControl;

    invoke-direct {v0}, Lcom/oplus/tblplayer/TBLLoadControl;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public fastSeekTo(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastSeekTo: msec is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 571
    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->adaptPosition(JZ)J

    move-result-wide p1

    .line 572
    :cond_1
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->fastSeekTo(JZ)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getBufferForPlaybackMs()J
    .locals 2

    .line 211
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getBufferForPlaybackMs"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLLoadControl;->getLoadPolicy()Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;

    move-result-object p0

    iget-wide v0, p0, Lcom/oplus/tblplayer/TBLLoadControl$LoadPolicy;->bufferForPlaybackUs:J

    .line 214
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBufferedPercentage()I
    .locals 8

    .line 705
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 708
    :cond_0
    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz v2, :cond_4

    .line 709
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->getContentBufferedPosition()J

    move-result-wide v2

    .line 710
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->getDuration()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v6

    const/16 v0, 0x64

    if-eqz p0, :cond_3

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    .line 711
    div-long/2addr v2, v4

    long-to-int p0, v2

    .line 712
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    :cond_3
    :goto_0
    return v1

    .line 714
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result p0

    return p0
.end method

.method public getContentBufferedPosition()J
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 696
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getContentBufferedPosition()J

    move-result-wide v0

    .line 697
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 699
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->adaptPosition(JZ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 587
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 588
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->adaptPosition(JZ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal player is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDuration()J
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 598
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    .line 599
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 600
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->adaptPosition(JZ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 0

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMediaInfo()Lcom/oplus/tblplayer/misc/MediaInfo;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->checkState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->getMediaInfo()Lcom/oplus/tblplayer/misc/MediaInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p0}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->getNetSpeed(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlaybackState()I
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return p0
.end method

.method public getTrackInfo()[Lcom/oplus/tblplayer/misc/ITrackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 505
    iget p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 500
    iget p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    return p0
.end method

.method public isLooping()Z
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPause()Z
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 522
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 523
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isStop()Z
    .locals 1

    .line 529
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    .line 433
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 378
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v2, "prepareAsync: it is preload player, had prepared!"

    invoke-static {v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2be

    .line 379
    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    .line 380
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnPrepared()V

    .line 381
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    return-void

    .line 385
    :cond_0
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v2, "prepareAsync: do  prepare"

    invoke-static {v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    .line 387
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    .line 390
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v0, v2}, Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;->startSession(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    .line 391
    invoke-direct {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeResetFallbackRollupRenderers()V

    .line 393
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const-string v0, "TBLExoPlayer.prepareAsync"

    .line 395
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 397
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 446
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->maybeNotifyPlaybackReport()V

    .line 451
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 453
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInnerListener:Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 454
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 456
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMonitor:Lcom/oplus/tblplayer/monitor/AnalyticsMonitor;

    .line 457
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    const/4 v1, 0x0

    .line 458
    iput v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    .line 459
    iput v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    .line 461
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    .line 462
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsBuffering:Z

    .line 463
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasComplete:Z

    const/4 v1, 0x1

    .line 464
    iput-boolean v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->hasRelease:Z

    .line 466
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 467
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 468
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->fallbackRenderers:Ljava/util/List;

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 471
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 472
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->rollupRenderers:Ljava/util/List;

    .line 475
    :cond_1
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->stop()V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 438
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: msec is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    .line 558
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 559
    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->adaptPosition(JZ)J

    move-result-wide p1

    .line 558
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setClippingTimeline(JJ)V
    .locals 8

    .line 326
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClippingTimeline: startUs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endUs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    iget-object v3, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v2, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V

    .line 343
    iput-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void

    .line 335
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a single-period source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Player is not idle state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not set data source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 1

    .line 293
    new-instance v0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    invoke-direct {v0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->build()Lcom/oplus/tblplayer/misc/MediaUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->setMediaUrlInternal(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    invoke-direct {v0, p1}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->setHeaders(Ljava/util/Map;)Lcom/oplus/tblplayer/misc/MediaUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/tblplayer/misc/MediaUrl$Builder;->build()Lcom/oplus/tblplayer/misc/MediaUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->setMediaUrlInternal(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method public setDataSource(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 0

    .line 277
    invoke-static {p1}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->setMediaUrlInternal(Lcom/oplus/tblplayer/misc/MediaUrl;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 288
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "no support"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->setDataSource(Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 221
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setDisplay"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 3

    .line 631
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLooping: looping is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 633
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :goto_0
    return-void
.end method

.method public setMediaFormatAttr(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaFormatAttr(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized setMediaUrlInternal(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 3

    monitor-enter p0

    .line 297
    :try_start_0
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource: uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 299
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 298
    :goto_0
    invoke-static {v1}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkState(Z)V

    .line 300
    invoke-static {p1}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/tblplayer/misc/MediaUrl;

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 301
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 302
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->buildDataSourceFactory(Lcom/oplus/tblplayer/misc/MediaUrl;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mMediaUrl:Lcom/oplus/tblplayer/misc/MediaUrl;

    iget v1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->extractorType:I

    .line 301
    invoke-static {p1, v0, v1}, Lcom/oplus/tblplayer/managers/TBLSourceManager;->buildMediaSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/oplus/tblplayer/misc/MediaUrl;I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNetworkType(I)V
    .locals 3

    .line 182
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkType: networkType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->updateNetworkType(I)V

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    .line 577
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 578
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 3

    .line 545
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeekParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 261
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface: surface is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 3

    .line 269
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoScalingMode: mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoScalingMode(I)V

    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 229
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setVideoSurfaceView"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 245
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setVideoTextureView"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p0, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public setVsyncOffsetPercentage(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVsyncOffsetPercentage(I)V

    :cond_0
    return-void
.end method

.method public setWakeMode(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    const-string v0, "TBLExoPlayer.start"

    .line 407
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 408
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 409
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/oplus/tblplayer/TBLExoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/TBLExoPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mOldIsPlaying:Z

    .line 419
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 421
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mSlowMotion:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    if-eqz p0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->stop()V

    :cond_1
    return-void
.end method

.method public updateNetworkType(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mLoadControl:Lcom/oplus/tblplayer/TBLLoadControl;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    return-void
.end method
