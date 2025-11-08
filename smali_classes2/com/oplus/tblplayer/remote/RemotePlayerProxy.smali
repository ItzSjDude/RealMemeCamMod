.class public abstract Lcom/oplus/tblplayer/remote/RemotePlayerProxy;
.super Lcom/oplus/tblplayer/AbstractMediaPlayer;
.source "RemotePlayerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemotePlayerProxy"


# instance fields
.field private mPendingTaskStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRemotePlayer:Landroid/os/IBinder;

.field protected mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/oplus/tblplayer/AbstractMediaPlayer;-><init>()V

    .line 49
    new-instance v0, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;-><init>(Lcom/oplus/tblplayer/remote/RemotePlayerProxy;)V

    iput-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    return-void
.end method

.method private setShouldNotify(II)V
    .locals 2

    const/4 v0, 0x2

    .line 399
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/16 p1, 0x22

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->clearVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method protected varargs abstract execRemoteMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method protected declared-synchronized flushPendingTaskStack()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "RemotePlayerProxy"

    const-string v1, "flushPendingTaskStack"

    .line 434
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mRemotePlayer:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 437
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    .line 441
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 3

    const/4 v0, 0x0

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBufferForPlaybackMs()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 387
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1c

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x24

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 3

    const-string v0, "RemotePlayerProxy"

    const-string v1, "getCurrentPosition"

    .line 207
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 3

    const-string v0, "RemotePlayerProxy"

    const-string v1, "getDuration"

    .line 213
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/oplus/tblplayer/misc/MediaInfo;
    .locals 0

    .line 254
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNetSpeed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlaybackState()I
    .locals 3

    const/4 v0, 0x1

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x2a

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 3

    const-string v0, "RemotePlayerProxy"

    const-string v1, "getSpeed"

    .line 219
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x27

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getTrackInfo()[Lcom/oplus/tblplayer/misc/ITrackInfo;
    .locals 0

    .line 376
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getVideoHeight()I
    .locals 3

    const/4 v0, 0x0

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x1f

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 3

    const/4 v0, 0x1

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 3

    const/4 v0, 0x1

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 3

    const/4 v0, 0x0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected varargs declared-synchronized insertPendingTaskStack(I[Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "RemotePlayerProxy"

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPendingTaskStack: need pending task method is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected varargs invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->shouldPending()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->insertPendingTaskStack(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->shouldInvoke()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0, p1, v1, p2}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->execRemoteMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected varargs invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->shouldInvoke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->execRemoteMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public isLooping()Z
    .locals 3

    const/4 v0, 0x0

    .line 371
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x1c

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPause()Z
    .locals 3

    const/4 v0, 0x0

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x25

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPlayable()Z
    .locals 3

    const/4 v0, 0x1

    .line 271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStop()Z
    .locals 3

    const/4 v0, 0x0

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethodNotPending(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected onRelease()V
    .locals 2

    const-string v0, "RemotePlayerProxy"

    const-string v1, "onRelease"

    .line 445
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->resetListeners()V

    .line 449
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->release()V

    .line 451
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 456
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mPendingTaskStack:Ljava/util/ArrayList;

    .line 459
    :cond_1
    iput-object v1, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mRemotePlayer:Landroid/os/IBinder;

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "RemotePlayerProxy"

    const-string v1, "pause"

    .line 158
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "RemotePlayerProxy"

    const-string v1, "prepareAsync"

    .line 140
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "RemotePlayerProxy"

    const-string v1, "release"

    .line 230
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->onRelease()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "RemotePlayerProxy"

    const-string v1, "reset"

    .line 237
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 238
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->onRelease()V

    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "RemotePlayerProxy"

    const-string v1, "seekTo"

    .line 201
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 202
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2

    const/4 v0, 0x1

    .line 341
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource: uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemotePlayerProxy"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDataSource(Lcom/oplus/tblplayer/misc/IMediaDataSource;)V
    .locals 0

    .line 129
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource: path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemotePlayerProxy"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 124
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 346
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 366
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNetworkType(I)V
    .locals 1

    const/4 p1, 0x0

    .line 382
    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnBufferingUpdateListener(Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 p1, 0x4

    .line 291
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V

    const/4 p1, 0x2

    .line 284
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V

    const/16 p1, 0x20

    .line 312
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnInfoListener(Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnInfoListener(Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;)V

    const/16 p1, 0x40

    .line 318
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnPlaybackResultListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnPlaybackResultListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;)V

    const/16 p1, 0x100

    .line 330
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnPlayerEventListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnPlayerEventListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;)V

    const/16 p1, 0x200

    .line 336
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V

    const/4 p1, 0x1

    .line 277
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnSeekCompleteListener(Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;)V

    const/16 p1, 0x8

    .line 298
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnTimedTextListener(Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnTimedTextListener(Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;)V

    const/16 p1, 0x80

    .line 324
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Lcom/oplus/tblplayer/AbstractMediaPlayer;->setOnVideoSizeChangedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;)V

    const/16 p1, 0x10

    .line 305
    invoke-direct {p0, p1, p1}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->setShouldNotify(II)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    const-string v0, "RemotePlayerProxy"

    const-string v1, "setScreenOnWhilePlaying"

    .line 165
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->mSurfaceCache:Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteSurfaceCache;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    const/4 v0, 0x1

    .line 244
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    const/4 v0, 0x1

    .line 361
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x1a

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract shouldInvoke()Z
.end method

.method protected abstract shouldPending()Z
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "RemotePlayerProxy"

    const-string v1, "start"

    .line 146
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 147
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "RemotePlayerProxy"

    const-string v1, "stop"

    .line 152
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 153
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected updateSurface(Landroid/view/Surface;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurface: surface is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemotePlayerProxy"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tblplayer/remote/RemotePlayerProxy;->invokeRemoteMethod(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
