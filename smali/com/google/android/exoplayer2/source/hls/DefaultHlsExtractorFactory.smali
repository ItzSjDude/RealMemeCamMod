.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final AC4_FILE_EXTENSION:Ljava/lang/String; = ".ac4"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    return-void
.end method

.method private static buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/util/Pair;

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 268
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 193
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ".webvtt"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ".vtt"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, ".aac"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object p0

    :cond_2
    const-string v0, ".ac3"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".ec3"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, ".ac4"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    return-object p0

    :cond_4
    const-string v0, ".mp3"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p0

    :cond_5
    const-string v0, ".mp4"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 218
    :cond_6
    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    invoke-static {p0, p2, p3, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p0

    return-object p0

    .line 210
    :cond_7
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    goto :goto_1

    .line 215
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_1
    move-object v5, p3

    move-object v0, p0

    move-object v2, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    return-object p0

    .line 201
    :cond_9
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p0

    .line 196
    :cond_a
    :goto_3
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p5}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p0
.end method

.method private static createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p2, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    .line 240
    invoke-static {v0, v1, p2, v0}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 239
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 246
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    or-int/lit8 p0, p0, 0x2

    .line 254
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    or-int/lit8 p0, p0, 0x4

    .line 259
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p3, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw p0

    :catch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 89
    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p0, :cond_6

    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    instance-of p0, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz p0, :cond_1

    .line 94
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz p0, :cond_2

    .line 96
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz p0, :cond_3

    .line 98
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 99
    :cond_3
    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-eqz p0, :cond_4

    .line 100
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 101
    :cond_4
    instance-of p0, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz p0, :cond_5

    .line 102
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 104
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected previousExtractor type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 113
    invoke-interface {p8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 114
    invoke-static {p1, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 115
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 121
    :cond_8
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-nez p2, :cond_9

    .line 122
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p7, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p2, p7, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 123
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_9

    .line 124
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 128
    :cond_9
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_a

    .line 129
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .line 130
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_a

    .line 131
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 135
    :cond_a
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_b

    .line 136
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .line 137
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_b

    .line 138
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 142
    :cond_b
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez p2, :cond_c

    .line 143
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    .line 144
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_c

    .line 145
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 149
    :cond_c
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-nez p2, :cond_d

    .line 150
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 152
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_d

    .line 153
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 157
    :cond_d
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-nez p2, :cond_f

    .line 158
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_e

    move-object v5, p4

    goto :goto_1

    .line 164
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p7

    move-object v5, p7

    :goto_1
    move-object v0, p2

    move-object v2, p6

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .line 165
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p5

    if-eqz p5, :cond_f

    .line 166
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 170
    :cond_f
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p2, :cond_10

    .line 171
    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 172
    invoke-static {p0, p3, p4, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p0

    .line 174
    invoke-static {p0, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 175
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 180
    :cond_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
