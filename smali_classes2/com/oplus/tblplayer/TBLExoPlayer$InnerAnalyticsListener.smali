.class public Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;
.super Ljava/lang/Object;
.source "TBLExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lcom/oplus/tblplayer/TBLLoadControl$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/TBLExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InnerAnalyticsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/TBLExoPlayer;


# direct methods
.method protected constructor <init>(Lcom/oplus/tblplayer/TBLExoPlayer;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferPercentChanged(I)V
    .locals 3

    .line 801
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferPercentChanged: percent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnBufferingUpdate(I)V

    return-void
.end method

.method public onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p0, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$000(Lcom/oplus/tblplayer/TBLExoPlayer;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5

    .line 727
    iget p1, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 728
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->height:I

    iput v1, p1, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    .line 729
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->width:I

    iput v1, p1, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    .line 730
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 731
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 732
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget v4, v4, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    .line 733
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget v4, v4, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "notifyOnDownstreamSizeChanged: [%d, %d, %d, %f]"

    .line 732
    invoke-static {v1, v0, v2}, Lcom/oplus/tblplayer/utils/LogUtil;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget v1, v0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnDownstreamSizeChanged(IIIF)V

    :cond_0
    return-void
.end method

.method public onLoadControlStateChanged(I)V
    .locals 2

    .line 807
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadControlStateChanged: state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    .line 774
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$600(Lcom/oplus/tblplayer/TBLExoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$700(Lcom/oplus/tblplayer/TBLExoPlayer;Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 779
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPlayerError: will retry player with disable error renderer."

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_1
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget v0, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 785
    invoke-static {p0, p2}, Lcom/oplus/tblplayer/monitor/ErrorCodeProvider;->parseException(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/ExoPlaybackException;)I

    move-result p0

    .line 786
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 783
    invoke-virtual {p1, v0, p0, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnError(IILjava/lang/String;)Z

    return-void
.end method

.method public onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 2

    .line 763
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged: playWhenReady is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-static {p3}, Lcom/oplus/tblplayer/utils/LogUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {p1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-virtual {p1, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnPlayerStateChanged(I)V

    .line 767
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p1, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$300(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V

    .line 768
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p1, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$400(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V

    .line 769
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p0, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$500(Lcom/oplus/tblplayer/TBLExoPlayer;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 791
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionDiscontinuity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/tblplayer/utils/LogUtil;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-virtual {p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->isLooping()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 795
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    const/4 p1, 0x5

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 0

    .line 753
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iget-boolean p1, p1, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    if-eqz p1, :cond_0

    .line 754
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRenderedFirstFrame: will notifyOnPrepared"

    invoke-static {p1, p2}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-static {p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$200(Lcom/oplus/tblplayer/TBLExoPlayer;)V

    .line 756
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-virtual {p1}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnPrepared()V

    .line 757
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer;->mIsPreparing:Z

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 3

    .line 742
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    iput p2, p1, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoWidth:I

    .line 743
    iput p3, p1, Lcom/oplus/tblplayer/TBLExoPlayer;->mVideoHeight:I

    .line 744
    invoke-static {}, Lcom/oplus/tblplayer/TBLExoPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 745
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onVideoSizeChanged: [%d, %d, %d, %f]"

    .line 744
    invoke-static {p1, v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    iget-object p1, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnVideoSizeChanged(IIIF)V

    if-lez p4, :cond_0

    .line 748
    iget-object p0, p0, Lcom/oplus/tblplayer/TBLExoPlayer$InnerAnalyticsListener;->this$0:Lcom/oplus/tblplayer/TBLExoPlayer;

    const/16 p1, 0x2711

    invoke-virtual {p0, p1, p4}, Lcom/oplus/tblplayer/TBLExoPlayer;->notifyOnInfo(II)Z

    :cond_0
    return-void
.end method
