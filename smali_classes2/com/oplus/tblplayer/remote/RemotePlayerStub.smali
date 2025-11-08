.class public Lcom/oplus/tblplayer/remote/RemotePlayerStub;
.super Lcom/oplus/tblplayer/remote/BaseBinderStub;
.source "RemotePlayerStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemotePlayerStub"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

.field private mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/BaseBinderStub;-><init>()V

    const-string v0, "RemotePlayer"

    .line 47
    invoke-virtual {p0, p0, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mAppContext:Landroid/content/Context;

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mMainThreadHandler:Landroid/os/Handler;

    .line 54
    new-instance p1, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$XnwS30IcKjJqn_c6JAPwvBVCom4;

    invoke-direct {p1, p0}, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$XnwS30IcKjJqn_c6JAPwvBVCom4;-><init>(Lcom/oplus/tblplayer/remote/RemotePlayerStub;)V

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->execOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/tblplayer/IMediaPlayer;

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    return-void
.end method

.method private bindObservable(Landroid/os/IBinder;)V
    .locals 1

    .line 204
    :try_start_0
    new-instance v0, Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-direct {v0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    .line 205
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-virtual {p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 206
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V

    .line 208
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V

    .line 209
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 210
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnSeekCompleteListener(Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;)V

    .line 211
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 212
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V

    .line 213
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnInfoListener(Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;)V

    .line 214
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnTimedTextListener(Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;)V

    .line 215
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnPlaybackResultListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;)V

    .line 216
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnPlayerEventListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 220
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->release()V

    :cond_0
    :goto_0
    return-void
.end method

.method private execOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 65
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 66
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private varargs execTransact(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 199
    invoke-super {p0, p1, p2}, Lcom/oplus/tblplayer/remote/BaseBinderStub;->onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 161
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getPlaybackState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/oplus/tblplayer/IMediaPlayer;->setNetworkType(I)V

    .line 189
    :pswitch_2
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getBufferForPlaybackMs()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 167
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getSpeed()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 157
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->isStop()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 155
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->isPause()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getContentBufferedPosition()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_7
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Landroid/view/Surface;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-object v2

    .line 194
    :pswitch_8
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    if-eqz p0, :cond_0

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/remote/RemoteObservable;->setNotifyFlag(II)V

    :cond_0
    return-object v2

    .line 191
    :pswitch_9
    aget-object p1, p2, v1

    check-cast p1, Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->bindObservable(Landroid/os/IBinder;)V

    :pswitch_a
    return-object v2

    .line 185
    :pswitch_b
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getVideoHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 183
    :pswitch_c
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getVideoWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_d
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-object v2

    .line 181
    :pswitch_e
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->isLooping()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_f
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setLooping(Z)V

    return-object v2

    .line 137
    :pswitch_10
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setWakeMode(I)V

    return-object v2

    .line 179
    :pswitch_11
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getVideoSarDen()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 177
    :pswitch_12
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getVideoSarNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_13
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setKeepInBackground(Z)V

    return-object v2

    .line 175
    :pswitch_14
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getTrackInfo()[Lcom/oplus/tblplayer/misc/ITrackInfo;

    move-result-object p0

    return-object p0

    .line 172
    :pswitch_15
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getMediaInfo()Lcom/oplus/tblplayer/misc/MediaInfo;

    move-result-object p0

    return-object p0

    .line 151
    :pswitch_16
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getAudioSessionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_17
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setAudioStreamType(I)V

    return-object v2

    .line 128
    :pswitch_18
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setVolume(F)V

    return-object v2

    .line 125
    :pswitch_19
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->reset()V

    return-object v2

    .line 122
    :pswitch_1a
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->release()V

    return-object v2

    .line 165
    :pswitch_1b
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getDuration()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 163
    :pswitch_1c
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getCurrentPosition()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 159
    :pswitch_1d
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->isPlayable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 153
    :pswitch_1e
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->isPlaying()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_1f
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/oplus/tblplayer/IMediaPlayer;->seekTo(J)V

    return-object v2

    .line 116
    :pswitch_20
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->pause()V

    return-object v2

    .line 113
    :pswitch_21
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->stop()V

    return-object v2

    .line 110
    :pswitch_22
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->start()V

    return-object v2

    .line 107
    :pswitch_23
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->prepareAsync()V

    return-object v2

    .line 149
    :pswitch_24
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_25
    aget-object p1, p2, v1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 101
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 97
    :pswitch_26
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Lcom/oplus/tblplayer/misc/IMediaDataSource;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Lcom/oplus/tblplayer/misc/IMediaDataSource;)V

    return-object v2

    .line 94
    :pswitch_27
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Landroid/net/Uri;

    aget-object p2, p2, v0

    check-cast p2, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Landroid/net/Uri;Ljava/util/Map;)V

    return-object v2

    .line 91
    :pswitch_28
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Landroid/net/Uri;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Landroid/net/Uri;)V

    return-object v2

    .line 104
    :pswitch_29
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleRelease()V
    .locals 1

    .line 246
    new-instance v0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$HoIjbusA-h-ZONrKq5KgG59Be8Q;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$HoIjbusA-h-ZONrKq5KgG59Be8Q;-><init>(Lcom/oplus/tblplayer/remote/RemotePlayerStub;)V

    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->execOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->handleRelease()V

    .line 239
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;

    invoke-virtual {v0}, Lcom/oplus/tblplayer/remote/RemoteObservable;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mObservable:Lcom/oplus/tblplayer/remote/RemoteObservable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public binderDied()V
    .locals 2

    const-string v0, "RemotePlayerStub"

    const-string v1, "binderDied"

    .line 229
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->release()V

    return-void
.end method

.method public synthetic lambda$handleRelease$2$RemotePlayerStub()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->release()V

    .line 249
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mPlayer:Lcom/oplus/tblplayer/IMediaPlayer;

    :cond_0
    return-object v1
.end method

.method public synthetic lambda$new$0$RemotePlayerStub()Lcom/oplus/tblplayer/IMediaPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/oplus/tblplayer/TBLExoPlayer;

    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/TBLExoPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$onTransactInternal$1$RemotePlayerStub(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->execTransact(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected varargs onTransactInternal(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/tblplayer/remote/-$$Lambda$RemotePlayerStub$FnqDF7GbBhsGjSFXpzU2AjGeW2c;-><init>(Lcom/oplus/tblplayer/remote/RemotePlayerStub;I[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerStub;->execOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
