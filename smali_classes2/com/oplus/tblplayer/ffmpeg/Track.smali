.class public final Lcom/oplus/tblplayer/ffmpeg/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FfmpegTrack"


# instance fields
.field private index:I

.field public initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->index:I

    .line 26
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->type:I

    .line 27
    iput-object p3, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->mimeType:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->index:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackOutput()Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->type:I

    return p0
.end method

.method public parseMediaCodecSpecificData([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 63
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->printExtraData([B)V

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 70
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->mimeType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "audio/opus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "video/avc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/vorbis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_3
    const-string v3, "video/hevc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    :cond_1
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    .line 104
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    iget-object p1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    invoke-static {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->shouldRequireParseConfiguration(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object p1

    .line 97
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    .line 98
    iget p1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->nalUnitLengthFieldLength:I

    goto :goto_1

    .line 100
    :cond_3
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    iget-object p1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_4
    invoke-static {v0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->shouldRequireParseConfiguration(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 87
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget p1, p1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->nalUnitLengthFieldLength:I

    goto :goto_1

    .line 91
    :cond_5
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    iget-object p1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    .line 79
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 80
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 81
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_7
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    iget-object p1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {p1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->parseVorbisConfiguration([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void

    .line 64
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Track "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " extra data is empty!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FfmpegTrack"

    invoke-static {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_3
        -0x3bd43e14 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public setTrackCodecParametersData([B)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->initializationData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track {index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->type:I

    .line 36
    invoke-static {v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegUtil;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/Track;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
