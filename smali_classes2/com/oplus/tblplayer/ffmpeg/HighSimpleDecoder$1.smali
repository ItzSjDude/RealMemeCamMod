.class Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder$1;
.super Ljava/lang/Thread;
.source "HighSimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder$1;->this$0:Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder$1;->this$0:Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;

    invoke-static {p0}, Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;->access$000(Lcom/oplus/tblplayer/ffmpeg/HighSimpleDecoder;)V

    return-void
.end method
