.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile released:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method public onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 15

    move-object v0, p0

    .line 414
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v1, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 421
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x6

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v13, p1

    .line 418
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    .line 400
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$EnOXLA4Xyh_hsc2De4jHB6dR5vU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$EnOXLA4Xyh_hsc2De4jHB6dR5vU;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    .line 395
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
