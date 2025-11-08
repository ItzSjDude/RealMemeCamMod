.class public Lcom/oplus/tblplayer/remote/RemoteObservable;
.super Ljava/lang/Object;
.source "RemoteObservable.java"

# interfaces
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;


# static fields
.field static final FLAG_BASE:I = 0x1

.field static final FLAG_BUFFERING_UPDATE_LISTENER:I = 0x4

.field static final FLAG_COMPLETION_LISTENER:I = 0x2

.field static final FLAG_ERROR_LISTENER:I = 0x20

.field static final FLAG_INFO_LISTENER:I = 0x40

.field static final FLAG_PLAYBACK_RESULT_LISTENER:I = 0x100

.field static final FLAG_PLAYER_EVENT_LISTENER:I = 0x200

.field static final FLAG_PREPARED_LISTENER:I = 0x1

.field static final FLAG_SEEK_COMPLETION_LISTENER:I = 0x8

.field static final FLAG_TIMED_TEXT_LISTENER:I = 0x80

.field static final FLAG_VIDEO_SIZE_CHANGED_LISTENER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "RemoteObservable"


# instance fields
.field private mNotifyFlag:I

.field private mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mNotifyFlag:I

    .line 54
    invoke-static {p1}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/tblplayer/IRemoteObservable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    return-void
.end method

.method private shouldNotify(I)Z
    .locals 0

    .line 62
    iget p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mNotifyFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IRemoteObservable;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onBufferingUpdate(Lcom/oplus/tblplayer/IMediaPlayer;I)V
    .locals 0

    const/4 p1, 0x4

    .line 96
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyBufferingUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCompletion(Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 0

    const/4 p1, 0x2

    .line 85
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownstreamSizeChanged(Lcom/oplus/tblplayer/IMediaPlayer;IIIF)V
    .locals 0

    const/16 p1, 0x200

    .line 200
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyDownstreamSizeChanged(IIIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/oplus/tblplayer/IMediaPlayer;IILjava/lang/String;)Z
    .locals 0

    const/16 p1, 0x20

    .line 130
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2, p3, p4}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyError(IILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Lcom/oplus/tblplayer/IMediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x40

    .line 142
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2, p3}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyInfo(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onIsPlayingChanged(Lcom/oplus/tblplayer/IMediaPlayer;Z)V
    .locals 0

    const/16 p1, 0x200

    .line 188
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyIsPlayingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPlaybackResult(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/tblplayer/monitor/Report;)Z
    .locals 0

    const/16 p1, 0x100

    .line 165
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyPlaybackResult(Lcom/oplus/tblplayer/monitor/Report;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPlayerStateChanged(Lcom/oplus/tblplayer/IMediaPlayer;I)V
    .locals 0

    const/16 p1, 0x200

    .line 177
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyPlayerStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPrepared(Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 74
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyPrepared()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSeekComplete(Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 0

    const/16 p1, 0x8

    .line 107
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0}, Lcom/oplus/tblplayer/IRemoteObservable;->notifySeekComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTimedText(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    .locals 0

    const/16 p1, 0x80

    .line 154
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyTimedText(Lcom/oplus/tblplayer/misc/TBLTimedText;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Lcom/oplus/tblplayer/IMediaPlayer;IIIF)V
    .locals 0

    const/16 p1, 0x10

    .line 119
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/remote/RemoteObservable;->shouldNotify(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mRemoteObservable:Lcom/oplus/tblplayer/IRemoteObservable;

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/oplus/tblplayer/IRemoteObservable;->notifyVideoSizeChanged(IIIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNotifyFlag(II)V
    .locals 2

    .line 58
    iget v0, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mNotifyFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/tblplayer/remote/RemoteObservable;->mNotifyFlag:I

    return-void
.end method
