.class public final synthetic Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$TKm6H1u51oJyy4jvvEkhfLkjPvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$TKm6H1u51oJyy4jvvEkhfLkjPvw;->f$0:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/-$$Lambda$TKm6H1u51oJyy4jvvEkhfLkjPvw;->f$0:Lcom/oplus/tblplayer/ffmpeg/FfmpegVideoDecoderHigh;

    check-cast p1, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;->releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;)V

    return-void
.end method
