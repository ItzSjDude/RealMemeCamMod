.class Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;
.super Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;
.source "TBLRetryPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/TBLRetryPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerRetryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;


# direct methods
.method private constructor <init>(Lcom/oplus/tblplayer/TBLRetryPlayer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;-><init>(Lcom/oplus/tblplayer/TBLExoPlayer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/tblplayer/TBLRetryPlayer;Lcom/oplus/tblplayer/TBLRetryPlayer$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;-><init>(Lcom/oplus/tblplayer/TBLRetryPlayer;)V

    return-void
.end method


# virtual methods
.method public onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 3

    .line 113
    invoke-static {}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    instance-of v0, p4, Lcom/google/android/exoplayer2/ParserException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p4, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$400(Lcom/oplus/tblplayer/TBLRetryPlayer;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    const-string p1, "Load error. will retry!!!"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$500(Lcom/oplus/tblplayer/TBLRetryPlayer;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 4

    .line 131
    invoke-static {}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 133
    iget v1, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 135
    instance-of v2, v0, Lcom/oplus/tblplayer/ffmpeg/DecoderException;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    goto :goto_0

    .line 137
    :cond_0
    instance-of v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    goto :goto_0

    .line 139
    :cond_1
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_2

    .line 141
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    goto :goto_0

    .line 142
    :cond_2
    instance-of v1, v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegAudioDecoderException;

    if-eqz v1, :cond_3

    .line 143
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    goto :goto_0

    .line 144
    :cond_3
    instance-of v0, v0, Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    .line 147
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$308(Lcom/oplus/tblplayer/TBLRetryPlayer;)I

    .line 150
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v3}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$400(Lcom/oplus/tblplayer/TBLRetryPlayer;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    const-string p1, "Player error. will retry!!!"

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$500(Lcom/oplus/tblplayer/TBLRetryPlayer;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged: maybeRetry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v2}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playWhenReady is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playbackState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p3}, Lcom/oplus/tblplayer/utils/LogUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionDiscontinuity: maybeRetry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v2}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p2}, Lcom/oplus/tblplayer/utils/LogUtil;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderedFirstFrame: maybeRetry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v2}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preparing is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    iget-boolean v2, v2, Lcom/oplus/tblplayer/TBLRetryPlayer;->mIsPreparing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$200(Lcom/oplus/tblplayer/TBLRetryPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    iget-boolean v0, v0, Lcom/oplus/tblplayer/TBLRetryPlayer;->mIsPreparing:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$302(Lcom/oplus/tblplayer/TBLRetryPlayer;I)I

    .line 82
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLRetryPlayer$InnerRetryListener;->this$0:Lcom/oplus/tblplayer/TBLRetryPlayer;

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/TBLRetryPlayer;->access$202(Lcom/oplus/tblplayer/TBLRetryPlayer;Z)Z

    .line 84
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V

    return-void
.end method
