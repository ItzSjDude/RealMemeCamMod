.class public final Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderException;
.super Lcom/oplus/tblplayer/exception/VideoDecoderException;
.source "FfmpegVideoDecoderException.java"


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/exception/ExceptionUtil;->formatMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/exception/VideoDecoderException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/exception/ExceptionUtil;->formatMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/oplus/tblplayer/exception/VideoDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
