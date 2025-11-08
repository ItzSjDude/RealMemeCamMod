.class public final Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
.super Ljava/lang/Object;
.source "TBLExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLExtractorsFactory"


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingEnabled:Z

.field private extractorType:I

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->tsMode:I

    .line 66
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->extractorType:I

    return-void
.end method

.method private createAllExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 4

    const/16 v0, 0xf

    .line 204
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 205
    new-instance v1, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;

    invoke-direct {v1}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 206
    invoke-direct {p0}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->createExoExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v3, 0xe

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private createExoExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 5

    const/16 v0, 0xe

    .line 211
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 212
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->mp4Flags:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 213
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->matroskaFlags:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 215
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->tsMode:I

    iget v3, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->tsFlags:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 216
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 217
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->adtsFlags:I

    iget-boolean v3, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(JI)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 224
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 225
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v3, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->mp3Flags:I

    iget-boolean v4, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 231
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 232
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 233
    new-instance v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 234
    new-instance v2, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    iget v3, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->amrFlags:I

    iget-boolean p0, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr p0, v3

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    aput-object v2, v0, v1

    const/16 p0, 0xc

    .line 240
    new-instance v1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;-><init>()V

    aput-object v1, v0, p0

    const/16 p0, 0xd

    .line 241
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    aput-object v1, v0, p0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TBLExtractorsFactory"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExtractors: extractor type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->extractorType:I

    .line 190
    invoke-static {v2}, Lcom/oplus/tblplayer/utils/LogUtil;->getExtractorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->extractorType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->createExoExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 195
    :try_start_1
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    new-instance v2, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;

    invoke-direct {v2}, Lcom/oplus/tblplayer/ffmpeg/FfmpegExtractor;-><init>()V

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->createAllExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 95
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->adtsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->amrFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 82
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 145
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 157
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 132
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 183
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 169
    :try_start_0
    iput p1, p0, Lcom/oplus/tblplayer/extractor/TBLExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
