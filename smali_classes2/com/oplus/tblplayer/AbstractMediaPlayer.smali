.class public abstract Lcom/oplus/tblplayer/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/oplus/tblplayer/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;

.field private mOnPlaybackResultListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;

.field private mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

.field private mOnPreparedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fastSeekTo(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/oplus/tblplayer/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/oplus/tblplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnDownstreamSizeChanged(IIIF)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 154
    invoke-interface/range {v0 .. v5}, Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;->onDownstreamSizeChanged(Lcom/oplus/tblplayer/IMediaPlayer;IIIF)V

    :cond_0
    return-void
.end method

.method protected final notifyOnError(IILjava/lang/String;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;->onError(Lcom/oplus/tblplayer/IMediaPlayer;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;->onInfo(Lcom/oplus/tblplayer/IMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final notifyOnIsPlayingChanged(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;->onIsPlayingChanged(Lcom/oplus/tblplayer/IMediaPlayer;Z)V

    :cond_0
    return-void
.end method

.method protected final notifyOnPlaybackResult(Lcom/oplus/tblplayer/monitor/Report;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlaybackResultListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;->onPlaybackResult(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/tblplayer/monitor/Report;)Z

    :cond_0
    return-void
.end method

.method protected final notifyOnPlayerStateChanged(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;->onPlayerStateChanged(Lcom/oplus/tblplayer/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/oplus/tblplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/oplus/tblplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnTimedText(Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/tblplayer/misc/TBLTimedText;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIIF)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 119
    invoke-interface/range {v0 .. v5}, Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/oplus/tblplayer/IMediaPlayer;IIIF)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;

    .line 85
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;

    .line 86
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;

    .line 87
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;

    .line 88
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;

    .line 89
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;

    .line 90
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;

    .line 91
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;

    .line 92
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlaybackResultListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;

    .line 93
    iput-object v0, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

    return-void
.end method

.method public setClippingTimeline(JJ)V
    .locals 0

    .line 186
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDataSource(Lcom/oplus/tblplayer/misc/IMediaDataSource;)V
    .locals 0

    .line 164
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDataSource(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .locals 0

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

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnCompletionListener:Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnErrorListener:Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnInfoListener:Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPlaybackResultListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlaybackResultListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;

    return-void
.end method

.method public setOnPlayerEventListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPlayerEventListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnPreparedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnTimedTextListener(Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/tblplayer/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 0

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0

    .line 169
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    .line 181
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setVsyncOffsetPercentage(I)V
    .locals 0

    return-void
.end method
