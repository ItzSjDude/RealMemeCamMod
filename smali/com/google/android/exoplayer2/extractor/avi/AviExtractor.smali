.class public final Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviExtHeader;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_AUDIO_STREAM_NUM:I = 0x24

.field private static final STATE_READING_AVI_HEADER:I = 0x1

.field private static final STATE_READING_INFO_LIST:I = 0x2

.field private static final STATE_READING_MOVI_DATA:I = 0x3

.field private static final STREAM_TYPE_AUDIO:I = 0x8

.field private static final STREAM_TYPE_SCRIPT_DATA:I = 0x12

.field private static final STREAM_TYPE_VIDEO:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AviUtils"

.field private static final ashLen:I = 0x1a

.field private static final aviEHLen:I = 0x100

.field private static final aviMHLen:I = 0x40

.field private static final aviSHLen:I = 0x40

.field private static fileLen:J = 0x0L

.field private static hdrlLen:J = 0x0L

.field private static final vshLen:I = 0x30


# instance fields
.field aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

.field private audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

.field audioSeekSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field aviEH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviExtHeader;

.field aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

.field aviSH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;",
            ">;"
        }
    .end annotation
.end field

.field aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

.field private dataChunkOffset:J

.field private defaultUri:Landroid/net/Uri;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field keyFrameNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapFrameCount:I

.field private moviLen:J

.field private parserState:I

.field public seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private streamNum:I

.field vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

.field private videoFrameCount:J

.field private videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/google/android/exoplayer2/extractor/avi/-$$Lambda$AviExtractor$F542WxF9leWTgMzxAlUZN0u1pZk;->INSTANCE:Lcom/google/android/exoplayer2/extractor/avi/-$$Lambda$AviExtractor$F542WxF9leWTgMzxAlUZN0u1pZk;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSH:Ljava/util/ArrayList;

    .line 189
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->keyFrameNumList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioSeekSizeList:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->defaultUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSH:Ljava/util/ArrayList;

    .line 189
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->keyFrameNumList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioSeekSizeList:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->defaultUri:Landroid/net/Uri;

    .line 201
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->defaultUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private BuildSeekMapIdx(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 696
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 699
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->defaultUri:Landroid/net/Uri;

    const-string v4, "AviUtils"

    const-wide/16 v5, 0x0

    if-nez v3, :cond_0

    const-string v0, "Streaming case, no need to make seekMap"

    .line 700
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0

    .line 705
    :cond_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v8, "r"

    invoke-direct {v7, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 709
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviLen:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 711
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 713
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-string v3, "idx1"

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v3

    int-to-long v13, v3

    cmp-long v3, v11, v13

    if-nez v3, :cond_d

    .line 716
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v11

    .line 717
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v3, v11

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 719
    iget-object v13, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v7, v13, v10, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 722
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 723
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 724
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    move-wide/from16 v16, v11

    iget-wide v10, v15, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->MicroSecPerFrame:J

    .line 727
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v18, v5

    .line 733
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v15

    const-string v20, "dc"

    const-string v21, "db"

    const/4 v5, 0x2

    if-lez v15, :cond_7

    .line 734
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 735
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 736
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v15

    if-eq v6, v15, :cond_2

    .line 737
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v15

    if-ne v6, v15, :cond_1

    goto :goto_2

    .line 774
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 775
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    add-long v18, v18, v5

    :goto_1
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 738
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v20

    const-wide/16 v24, 0x10

    cmp-long v6, v20, v24

    const-wide/16 v20, 0x1

    if-nez v6, :cond_6

    move v15, v3

    .line 740
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->dataChunkOffset:J

    .line 741
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v26

    add-long v2, v2, v26

    .line 740
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    .line 744
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    mul-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->keyFrameNumList:Ljava/util/ArrayList;

    move-object v3, v7

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    const/16 v6, 0x50

    if-eq v2, v6, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    const/16 v6, 0x55

    if-eq v2, v6, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    const-wide/16 v22, 0x0

    cmp-long v2, v6, v22

    if-eqz v2, :cond_5

    .line 750
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_5

    .line 751
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 752
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const-string v6, "wb"

    .line 753
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v6

    if-ne v2, v6, :cond_3

    const/16 v2, 0x8

    .line 754
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 755
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioSeekSizeList:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    add-long v18, v18, v5

    goto :goto_4

    :cond_3
    const/16 v2, 0x8

    .line 759
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    cmp-long v6, v6, v24

    if-nez v6, :cond_4

    .line 760
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_4

    .line 763
    :cond_4
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    add-long v6, v6, v20

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    .line 764
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    goto :goto_4

    :cond_6
    move v15, v3

    move-object v3, v7

    .line 770
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 772
    :goto_4
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    add-long v5, v5, v20

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    move-object v7, v3

    move v3, v15

    goto/16 :goto_1

    :cond_7
    move v15, v3

    move-object v3, v7

    const/16 v2, 0x10

    :cond_8
    sub-int v6, v15, v2

    add-int/2addr v6, v5

    .line 781
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 782
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 783
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v7

    if-eq v6, v7, :cond_a

    .line 784
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v7

    if-ne v6, v7, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v2, v2

    int-to-long v6, v2

    cmp-long v6, v6, v16

    if-ltz v6, :cond_8

    goto :goto_6

    .line 786
    :cond_a
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    const-wide/16 v15, 0x0

    cmp-long v2, v5, v15

    if-nez v2, :cond_b

    .line 787
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->dataChunkOffset:J

    .line 788
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v15

    add-long/2addr v5, v15

    .line 787
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoFrameCount:J

    mul-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    .line 799
    :cond_b
    :goto_6
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    new-array v2, v1, [I

    .line 800
    new-array v5, v1, [J

    .line 801
    new-array v6, v1, [J

    .line 802
    new-array v1, v1, [J

    const/4 v7, 0x0

    .line 804
    :goto_7
    iget v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->mapFrameCount:I

    if-ge v7, v15, :cond_c

    .line 805
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v2, v7

    .line 806
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    aput-wide v15, v5, v7

    .line 807
    aput-wide v10, v6, v7

    .line 808
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    aput-wide v15, v1, v7

    .line 809
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v10

    const-string v10, "insert SeekMap size["

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v7

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] offset["

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v5, v7

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "] time["

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v1, v7

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v10, v16

    goto :goto_7

    .line 814
    :cond_c
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 815
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 816
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v3, v2, v5, v6, v1}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 817
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    return-object v0

    :cond_d
    move-object v3, v7

    .line 819
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 820
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 821
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public static MapCodecTypeToMimeType(IIS)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    const-string p0, "audio/raw"

    return-object p0

    :cond_1
    const/16 p0, 0x50

    if-ne p2, p0, :cond_2

    const-string p0, "audio/mpeg-L2"

    return-object p0

    :cond_2
    const/16 p0, 0x55

    if-ne p2, p0, :cond_3

    const-string p0, "audio/mpeg"

    return-object p0

    :cond_3
    const/16 p0, 0x57

    if-ne p2, p0, :cond_4

    const-string p0, "audio/3gpp"

    return-object p0

    :cond_4
    const/16 p0, 0x58

    if-ne p2, p0, :cond_5

    const-string p0, "audio/amr-wb"

    return-object p0

    :cond_5
    const/16 p0, 0x566f

    if-eq p2, p0, :cond_8

    const/16 p0, 0x674f

    if-eq p2, p0, :cond_8

    const/16 p0, 0x6750

    if-eq p2, p0, :cond_8

    const/16 p0, 0x6751

    if-ne p2, p0, :cond_6

    goto :goto_1

    :cond_6
    const/16 p0, 0xff

    if-ne p2, p0, :cond_7

    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_1
    const-string p0, "audio/vorbis"

    return-object p0

    :cond_9
    const-string p0, "XVID"

    .line 285
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    const-string p2, "HeyTap Player"

    if-eq p0, p1, :cond_d

    const-string p0, "Xvid"

    .line 286
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "xvid"

    .line 287
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "XVIX"

    .line 288
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "3IV2"

    .line 289
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "3iv2"

    .line 290
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "DIV1"

    .line 291
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "div1"

    .line 292
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "DIVX"

    .line 293
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "divx"

    .line 294
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "DX50"

    .line 295
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "dx50"

    .line 296
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "DXGM"

    .line 297
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "EM4A"

    .line 298
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "EPHV"

    .line 299
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "FMP4"

    .line 300
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "fmp4"

    .line 301
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "FVFW"

    .line 302
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "HDX4"

    .line 303
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "hdx4"

    .line 304
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "M4CC"

    .line 305
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "M4S2"

    .line 306
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "m4s2"

    .line 307
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "MP4S"

    .line 308
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "mp4s"

    .line 309
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "MP4V"

    .line 310
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "mp4v"

    .line 311
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "RMP4"

    .line 312
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "SMP4"

    .line 313
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "UMP4"

    .line 314
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_d

    const-string p0, "WV1F"

    .line 315
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_a

    goto :goto_3

    :cond_a
    const-string p0, "avc1"

    .line 318
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_c

    const-string p0, "davc"

    .line 319
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_c

    const-string p0, "x264"

    .line 320
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_c

    const-string p0, "H264"

    .line 321
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p1, :cond_c

    const-string p0, "vssh"

    .line 322
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_b

    goto :goto_2

    :cond_b
    const-string p0, "video"

    return-object p0

    .line 323
    :cond_c
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this is h264 codec :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "video/avc"

    return-object p0

    .line 316
    :cond_d
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this is mpeg4v codec :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "video/mp4v-es"

    return-object p0
.end method

.method public static getShortCodeForString(Ljava/lang/String;)S
    .locals 4

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 350
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    .line 354
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public PeekHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 366
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 367
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 370
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->fileLen:J

    const-string v3, "RIFF"

    .line 372
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v3

    const-string v4, "AviUtils"

    if-eq v1, v3, :cond_0

    const-string p0, "this is not RIFF format"

    .line 373
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x4

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 378
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const-string v3, "AVI "

    .line 380
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported RIFF format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 388
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 389
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlLen:J

    .line 390
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const-string p1, "hdrl"

    .line 391
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result p1

    if-eq p0, p1, :cond_2

    const-string p0, "There is no HDRL info"

    .line 392
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public ReadAviHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 399
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 402
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 404
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    .line 409
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 410
    new-instance v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    .line 412
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->fcc:J

    .line 413
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->cb:J

    .line 414
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->MicroSecPerFrame:J

    .line 415
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->MaxBytesPerSec:J

    .line 416
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->PaddingGranularity:J

    .line 417
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Flags:J

    .line 418
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->TotalFrames:J

    .line 419
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Streams:J

    .line 420
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->SuggestedBufferSize:J

    .line 421
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Width:J

    .line 422
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Height:J

    .line 423
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Reserved:[J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 424
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Reserved:[J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 425
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Reserved:[J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    const/4 v7, 0x2

    aput-wide v5, v2, v7

    .line 426
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Reserved:[J

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviMH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Streams:J

    const-wide/16 v8, 0x24

    cmp-long v0, v5, v8

    const-string v2, "AviUtils"

    if-lez v0, :cond_1

    const-string p0, "Media track number more than 36!! Let\'s fix it"

    .line 429
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 434
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 436
    :goto_0
    sget-wide v8, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlLen:J

    const-wide/16 v10, 0x8

    add-long/2addr v8, v10

    const-wide/16 v12, 0xc

    add-long/2addr v8, v12

    cmp-long v0, v5, v8

    if-gez v0, :cond_e

    .line 437
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 438
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_2

    return v4

    .line 443
    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 444
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-string v8, "LIST"

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v5, v5, v8

    const/4 v6, 0x4

    if-nez v5, :cond_c

    const/16 v5, 0x8

    .line 445
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 446
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-string v12, "strl"

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v8, v8, v12

    if-nez v8, :cond_a

    .line 448
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 450
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v6

    if-nez v6, :cond_3

    return v4

    .line 455
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 456
    new-instance v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    .line 457
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->fcc:J

    .line 458
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->cb:J

    .line 459
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->fccType:J

    .line 460
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->fccHandler:J

    .line 461
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Flags:J

    .line 462
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Priority:I

    .line 463
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Language:I

    .line 464
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->InitialFrames:J

    .line 465
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Scale:J

    .line 466
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Rate:J

    .line 467
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Start:J

    .line 468
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Length:J

    .line 469
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->SuggestedBufferSize:J

    .line 470
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Quality:J

    .line 471
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->SampleSize:J

    .line 472
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v8

    iput-short v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->RcFrameLeft:S

    .line 473
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v8

    iput-short v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->RcFrameTop:S

    .line 474
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v8

    iput-short v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->RcFrameRight:S

    .line 475
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v0

    iput-short v0, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->RcFrameBottom:S

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSH:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->fccType:J

    const-string v0, "vids"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v8, v12

    if-nez v0, :cond_6

    .line 480
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 481
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_4

    return v4

    .line 486
    :cond_4
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 487
    new-instance v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    .line 488
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->fcc:J

    .line 490
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->cb:J

    .line 492
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->cb:J

    long-to-int v5, v5

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 493
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->cb:J

    long-to-int v6, v8

    invoke-interface {p1, v5, v4, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_5

    return v4

    .line 498
    :cond_5
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biSize:J

    .line 499
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biWidth:J

    .line 500
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biHeight:J

    .line 501
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biPlanes:I

    .line 502
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biBitCount:I

    .line 503
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biCompression:J

    .line 505
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    invoke-interface {v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biCompression:J

    long-to-int v6, v8

    invoke-static {v4, v6, v4}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->MapCodecTypeToMimeType(IIS)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Rate:J

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set video stream info: FPS :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->Rate:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WIDTH:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biWidth:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " HEIGHT:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->vSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$VideoStreamHeader;->biHeight:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviSHTMP:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->fccType:J

    const-string v0, "auds"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v8, v12

    if-nez v0, :cond_9

    .line 510
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 511
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_7

    return v4

    .line 516
    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 517
    new-instance v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    .line 518
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->fcc:J

    .line 519
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->cb:J

    .line 521
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->cb:J

    long-to-int v5, v5

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 522
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->cb:J

    long-to-int v6, v8

    invoke-interface {p1, v5, v4, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_8

    return v4

    .line 527
    :cond_8
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    .line 528
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nChannels:I

    .line 529
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nSamplesPerSec:J

    .line 530
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    .line 531
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nBlockAlign:I

    .line 532
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    iput v0, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wBitsPerSample:I

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set audio params: nChannel["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nChannels:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] SPS["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nSamplesPerSec:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] BPS["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wBitsPerSample:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] ABPS["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    invoke-interface {v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    int-to-short v6, v6

    invoke-static {v3, v4, v6}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->MapCodecTypeToMimeType(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wBitsPerSample:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->setPCMEncodingType(I)V

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    mul-long/2addr v5, v10

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->setBitPerSec(J)V

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nSamplesPerSec:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->setSampleRate(J)V

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nChannels:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->setChannelsNum(I)V

    .line 544
    :cond_9
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->streamNum:I

    goto :goto_2

    .line 546
    :cond_a
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 547
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v0, v5

    add-int/lit8 v5, v0, -0x4

    .line 548
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 550
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 553
    :cond_b
    :goto_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    goto/16 :goto_0

    .line 555
    :cond_c
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 556
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v0, v5

    add-int/lit8 v5, v0, -0x4

    .line 557
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 559
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 561
    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    goto/16 :goto_0

    :cond_e
    return v3
.end method

.method public ReadAviInfoHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 569
    new-instance p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 570
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 576
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    long-to-int p0, v4

    .line 578
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 580
    new-instance p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 581
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x4

    .line 585
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v2
.end method

.method public ReadMoviData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 593
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 594
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v3, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_0

    return v6

    .line 599
    :cond_0
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 600
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    const-string v4, "LIST"

    .line 604
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    int-to-long v9, v4

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    .line 605
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviLen:J

    .line 606
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->dataChunkOffset:J

    .line 608
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->BuildSeekMapIdx(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 609
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 611
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v4, 0xc

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 612
    iget-object v9, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    :cond_1
    const/4 v4, 0x6

    .line 616
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 617
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 618
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 619
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    move-wide/from16 v16, v2

    move v2, v4

    move-wide/from16 v3, v16

    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    const/4 v9, 0x2

    .line 622
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 623
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    :goto_0
    const-string v9, "dc"

    .line 626
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v9

    const-string v10, "Video data chunk size is 0, return directly"

    const-string v11, "AviUtils"

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-ne v2, v9, :cond_5

    cmp-long v9, v3, v14

    if-eqz v9, :cond_5

    if-nez v9, :cond_3

    .line 628
    invoke-static {v11, v10}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 631
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v7, v3

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 633
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v8, v6, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_4

    return v6

    .line 637
    :cond_4
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 639
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    invoke-virtual {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    and-long v2, v3, v12

    cmp-long v0, v2, v14

    if-eqz v0, :cond_e

    .line 641
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_1

    :cond_5
    const-string v9, "db"

    .line 643
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v9

    if-ne v2, v9, :cond_8

    cmp-long v2, v3, v14

    if-nez v2, :cond_6

    .line 645
    invoke-static {v11, v10}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 648
    :cond_6
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v7, v3

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 650
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v8, v6, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_7

    return v6

    .line 654
    :cond_7
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 655
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    invoke-virtual {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    and-long v2, v3, v12

    cmp-long v0, v2, v14

    if-eqz v0, :cond_e

    .line 658
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_8
    const-string v9, "wb"

    .line 660
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getShortCodeForString(Ljava/lang/String;)S

    move-result v9

    if-ne v2, v9, :cond_b

    cmp-long v2, v3, v14

    if-nez v2, :cond_9

    const-string v0, "Audio data chunk size is 0, return directly"

    .line 662
    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 665
    :cond_9
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v7, v3

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 667
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v8, v6, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_a

    return v6

    .line 671
    :cond_a
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 672
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    invoke-virtual {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    and-long v2, v3, v12

    cmp-long v0, v2, v14

    if-eqz v0, :cond_e

    .line 675
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_b
    const-string v0, "idx1"

    .line 677
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-nez v0, :cond_c

    long-to-int v0, v3

    .line 679
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_c
    long-to-int v0, v3

    .line 684
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    and-long v7, v3, v12

    cmp-long v0, v7, v14

    if-eqz v0, :cond_d

    .line 686
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_d
    const-string v0, "0000"

    .line 688
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_e

    return v6

    :cond_e
    :goto_1
    return v5
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 258
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parserState:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_1

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->ReadMoviData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    .line 277
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 266
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->ReadAviInfoHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    .line 269
    :cond_3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parserState:I

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->ReadAviHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    .line 263
    :cond_5
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parserState:I

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 220
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parserState:I

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {v3, p3, p4}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v2

    .line 227
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekIdx:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide v3, v3, v2

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust seek time position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AviUtils"

    invoke-static {p4, p3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    const/16 p4, 0x50

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->wFormatTag:I

    const/16 p4, 0x55

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide p3, p3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    cmp-long p3, p3, v0

    if-eqz p3, :cond_1

    .line 233
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioSeekSizeList:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/32 v0, 0xf4240

    mul-long/2addr p3, v0

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aSH:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AudioStreamHeader;->nAvgBytesPerSec:J

    div-long/2addr p3, v0

    move-wide v6, v3

    goto :goto_0

    :cond_1
    move-wide p3, v3

    :cond_2
    move-wide v6, p3

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->keyFrameNumList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 240
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;

    move-wide v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->seek(JJI)V

    .line 243
    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;

    if-eqz p0, :cond_4

    .line 244
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/avi/AviAudioCodecReader;->seek(JJ)V

    :cond_4
    :goto_1
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

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->PeekHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
