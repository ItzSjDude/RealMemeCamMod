.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/-$$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/wav/-$$Lambda$WavExtractor$5r6M_S0QCNNj_Xavzq9WwuFHep0;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 58
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    if-nez v2, :cond_1

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 76
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getBitrate()I

    move-result v6

    const v7, 0x8000

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getNumChannels()I

    move-result v8

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v9

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getEncoding()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "audio/raw"

    .line 80
    invoke-static/range {v3 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 83
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unsupported or unrecognized wav header."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/wav/WavHeader;)V

    .line 89
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 92
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getDataLimit()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v6

    .line 93
    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    const/4 v7, -0x1

    if-gtz v4, :cond_4

    return v7

    :cond_4
    const v4, 0x8000

    .line 100
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 101
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 103
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 107
    :cond_5
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v3, v4

    if-lez v3, :cond_6

    .line 109
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v11

    .line 110
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v14, v3, v1

    .line 111
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v1, v14

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 112
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v13, 0x1

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_6
    if-ne v2, v7, :cond_7

    move v6, v7

    :cond_7
    return v6
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
