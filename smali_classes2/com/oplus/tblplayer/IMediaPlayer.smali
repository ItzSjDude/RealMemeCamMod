.class public interface abstract Lcom/oplus/tblplayer/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;,
        Lcom/oplus/tblplayer/IMediaPlayer$PlayerState;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_AUDIO_DECODED_START:I = 0x2713

.field public static final MEDIA_INFO_AUDIO_RENDERING_START:I = 0x2712

.field public static final MEDIA_INFO_AUDIO_SEEK_RENDERING_START:I = 0x2719

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_COMPONENT_OPEN:I = 0x2717

.field public static final MEDIA_INFO_FIND_STREAM_INFO:I = 0x2716

.field public static final MEDIA_INFO_LOOPING_TRANSITION:I = 0x5

.field public static final MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE:I = 0x2774

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_OPEN_INPUT:I = 0x2715

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_DECODED_START:I = 0x2714

.field public static final MEDIA_INFO_VIDEO_HDR_INFO:I = 0x4

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_ROTATION_CHANGED:I = 0x2711

.field public static final MEDIA_INFO_VIDEO_SEEK_RENDERING_START:I = 0x2718

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3


# virtual methods
.method public abstract clearVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract clearVideoTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract fastSeekTo(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getBufferForPlaybackMs()J
.end method

.method public abstract getContentBufferedPosition()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDataSource()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaInfo()Lcom/oplus/tblplayer/misc/MediaInfo;
.end method

.method public abstract getNetSpeed()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getTrackInfo()[Lcom/oplus/tblplayer/misc/ITrackInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoSarNum()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPause()Z
.end method

.method public abstract isPlayable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isStop()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAudioStreamType(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setClippingTimeline(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/net/Uri;Ljava/util/Map;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

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
.end method

.method public abstract setDataSource(Lcom/oplus/tblplayer/misc/IMediaDataSource;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDataSource(Lcom/oplus/tblplayer/misc/MediaUrl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setKeepInBackground(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setMediaFormatAttr(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNetworkType(I)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/oplus/tblplayer/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/oplus/tblplayer/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPlaybackResultListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlaybackResultListener;)V
.end method

.method public abstract setOnPlayerEventListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPlayerEventListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/oplus/tblplayer/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnTimedTextListener(Lcom/oplus/tblplayer/IMediaPlayer$OnTimedTextListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setPlaybackRate(F)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract setVsyncOffsetPercentage(I)V
.end method

.method public abstract setWakeMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
