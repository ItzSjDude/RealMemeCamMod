.class final Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;
.super Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader;
.source "AviVideoCodecReader.java"


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final SHAPE_BINARY:I = 0x1

.field private static final SHAPE_BINARY_ONLY:I = 0x2

.field private static final SHAPE_GRAY_SCALE:I = 0x3

.field private static final SHAPE_RECTANGULAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AviVideoCodec"

.field private static final VIDEO_FRAME_BFRAME:I = 0x3

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_PFRAME:I = 0x2

.field private static final VIDEO_FRAME_SFRAME:I = 0x4

.field private static final VIDEO_FRAME_UNKNOWN:I = 0x0

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private absFrameCount:J

.field private absFrameNum:I

.field private avcGopFrameCount:J

.field private bottomPoc:I

.field private frameCount:J

.field private frameNumOffset:I

.field private frameRate:J

.field private frameType:I

.field private hasOutputFormat:Z

.field private idrPicId:I

.field private lastBottomFieldFlag:Z

.field private lastMmcoType:I

.field private mMimeType:Ljava/lang/String;

.field private maxFrameNum:I

.field private mmcoType:I

.field private nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I

.field private numRefFramesInPicOrderCntCycle:I

.field private offsetForNonRefPic:I

.field private offsetForRefFrame:[I

.field private offsetForTopToBottom:I

.field private packageType:I

.field private playStartTime:J

.field private ppsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

.field private prevFrameNum:I

.field private prevFrameNumOffset:I

.field private prevPicOrderCntLsb:I

.field private prevPicOrderCntMsb:I

.field private redundantPicCntPresentFlag:I

.field private spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

.field private topPoc:I

.field private weightedBipredIdc:I

.field private weightedPredFlag:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Ljava/lang/String;J)V
    .locals 2

    .line 678
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->hasOutputFormat:Z

    .line 46
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->maxFrameNum:I

    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    .line 49
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->redundantPicCntPresentFlag:I

    .line 50
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->weightedPredFlag:I

    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->weightedBipredIdc:I

    .line 52
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mmcoType:I

    .line 53
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastMmcoType:I

    .line 54
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastBottomFieldFlag:Z

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    .line 60
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    const/16 v0, 0xff

    .line 61
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForRefFrame:[I

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForNonRefPic:I

    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForTopToBottom:I

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->idrPicId:I

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameCount:J

    .line 93
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->ppsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 680
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mMimeType:Ljava/lang/String;

    .line 681
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameRate:J

    .line 682
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mMimeType:Ljava/lang/String;

    const-string p2, "video/avc"

    if-ne p1, p2, :cond_0

    .line 683
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object p2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 684
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    :cond_0
    return-void
.end method

.method private static final LogTransfer(I)I
    .locals 3

    const/16 v0, 0x10

    .line 102
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    shr-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0xff00

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    :cond_1
    and-int/lit16 v2, p0, 0xf0

    if-eqz v2, :cond_2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 121
    :cond_2
    aget p0, v1, p0

    add-int/2addr v0, p0

    return v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method protected parseData(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 727
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mMimeType:Ljava/lang/String;

    const-wide/32 v5, 0x3b9aca00

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v13, "video/avc"

    if-ne v2, v13, :cond_6

    .line 729
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->hasOutputFormat:Z

    if-nez v2, :cond_0

    .line 730
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseSpsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 731
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parsePpsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->ppsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    const/4 v13, 0x0

    .line 734
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v2, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v14, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v15, v15, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 735
    invoke-static {v2, v14, v15}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    const/16 v17, -0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v2, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v14, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameRate:J

    long-to-float v3, v3

    const/16 v21, 0x0

    const/16 v22, -0x1

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v4, v4, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    const/16 v24, 0x0

    const-string v18, "video/avc"

    move/from16 v19, v14

    move-object/from16 v14, v18

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v23, v4

    .line 734
    invoke-static/range {v13 .. v24}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 739
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 740
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->hasOutputFormat:Z

    .line 743
    :cond_0
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    .line 745
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/4 v4, 0x7

    if-eq v2, v4, :cond_4

    if-ne v2, v7, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v12, :cond_3

    .line 748
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x60

    shr-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 750
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_1

    .line 752
    :cond_2
    iput v11, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_1

    .line 755
    :cond_3
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_1

    .line 746
    :cond_4
    :goto_0
    iput v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    .line 758
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseDts(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 760
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 761
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v2, v1, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 763
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    if-ne v2, v3, :cond_5

    .line 764
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameRate:J

    div-long v2, v5, v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    .line 765
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    mul-long/2addr v2, v7

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    .line 766
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    goto :goto_2

    :cond_5
    const-wide/16 v7, 0x3e8

    .line 769
    :goto_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameRate:J

    div-long/2addr v5, v2

    .line 770
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    mul-long/2addr v5, v2

    .line 771
    div-long/2addr v5, v7

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    add-long/2addr v5, v2

    goto/16 :goto_8

    :cond_6
    const-string v3, "video/mp4v-es"

    if-ne v2, v3, :cond_21

    .line 774
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 776
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->hasOutputFormat:Z

    const/16 v4, 0xb0

    const-string v13, "AviVideoCodec"

    if-nez v3, :cond_1a

    if-ne v2, v4, :cond_1a

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0xf5

    if-ne v2, v3, :cond_7

    const-string v2, "Mpeg4 codec version 5"

    .line 782
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-ne v2, v12, :cond_8

    const-string v2, "Mpeg4 codec version 1"

    .line 784
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-ne v2, v8, :cond_9

    const-string v2, "Mpeg4 codec version 2"

    .line 786
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v2, "Mpeg4 codec version UNKNOWN"

    .line 788
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_19

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/16 v14, 0x120

    cmp-long v2, v2, v14

    if-nez v2, :cond_18

    .line 795
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 800
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 801
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 802
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 803
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 804
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    :cond_a
    move v3, v12

    .line 809
    :goto_4
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v14, 0xf

    if-ne v4, v14, :cond_b

    .line 811
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 812
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 815
    :cond_b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const-string v7, "can not parse VOL anymore, exit"

    if-eqz v4, :cond_e

    .line 816
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v15, 0x19

    if-ge v4, v15, :cond_c

    .line 817
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 820
    :cond_c
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 821
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 822
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 823
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v15, 0x64

    if-ge v4, v15, :cond_d

    .line 824
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 827
    :cond_d
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 828
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 829
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 830
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 831
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 832
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 833
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v4, 0xb

    .line 834
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 835
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 836
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 837
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 841
    :cond_e
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-ne v4, v11, :cond_f

    if-eq v3, v12, :cond_f

    .line 843
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 846
    :cond_f
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "missing marker before vop_time_increment_resolution"

    .line 847
    invoke-static {v13, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_10
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    const/16 v10, 0x12

    if-ge v3, v10, :cond_11

    .line 851
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const/16 v3, 0x10

    .line 855
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_12

    .line 857
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    sub-int/2addr v3, v12

    .line 861
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->LogTransfer(I)I

    move-result v3

    add-int/2addr v3, v12

    if-ge v3, v12, :cond_13

    move v3, v12

    .line 864
    :cond_13
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "missing marker before fixed_vop_rate"

    .line 865
    invoke-static {v13, v10}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_14
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    if-eqz v10, :cond_15

    .line 869
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_15
    if-eq v4, v8, :cond_19

    .line 873
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-ge v3, v12, :cond_16

    .line 874
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    if-nez v4, :cond_19

    .line 879
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_17

    .line 880
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 884
    :cond_17
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v3, 0xd

    .line 885
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 886
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 887
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 888
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    move/from16 v20, v3

    move/from16 v19, v4

    goto :goto_6

    .line 894
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    :cond_19
    :goto_5
    move/from16 v19, v9

    move/from16 v20, v19

    :goto_6
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const-string v15, "video/mp4v-es"

    .line 898
    invoke-static/range {v14 .. v25}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 901
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 902
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->hasOutputFormat:Z

    .line 903
    iput v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    :cond_1a
    const/16 v3, 0xb6

    if-ne v2, v3, :cond_1f

    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    .line 907
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    and-int/lit16 v3, v2, 0xc0

    if-nez v3, :cond_1b

    .line 908
    iput v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    :cond_1b
    and-int/lit16 v3, v2, 0xc0

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1c

    .line 910
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    :cond_1c
    and-int/lit16 v3, v2, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1d

    .line 912
    iput v11, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    :cond_1d
    const/16 v3, 0xc0

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1e

    .line 914
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    .line 916
    :cond_1e
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    :cond_1f
    if-ne v2, v4, :cond_20

    .line 919
    iput v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    goto :goto_7

    .line 921
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codec type wrong :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :goto_7
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 925
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 926
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    .line 927
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameRate:J

    div-long/2addr v5, v2

    .line 928
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    mul-long/2addr v5, v2

    const-wide/16 v2, 0x3e8

    .line 929
    div-long/2addr v5, v2

    goto :goto_8

    :cond_21
    const-wide/16 v5, 0x0

    :goto_8
    move-wide v14, v5

    .line 932
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-ne v0, v12, :cond_22

    move/from16 v16, v12

    goto :goto_9

    :cond_22
    move/from16 v16, v9

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-interface/range {v13 .. v19}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public parseDts(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 376
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    const/16 v5, 0x8

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 401
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseSliceHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_4

    :cond_1
    if-ne v0, v3, :cond_8

    .line 404
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseSliceHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_4

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    .line 378
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    if-lez v6, :cond_8

    .line 379
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    if-ne v6, v3, :cond_7

    .line 382
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    if-ne v5, v4, :cond_6

    .line 385
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    .line 386
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    .line 387
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseSliceHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_4

    :cond_6
    move v5, v0

    :cond_7
    :goto_3
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader$UnsupportedFormatException;
        }
    .end annotation

    .line 697
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mMimeType:Ljava/lang/String;

    const-string v0, "video"

    if-eq p0, v0, :cond_4

    const-string v0, "AviVideoCodec"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "video/avc"

    if-ne p0, v3, :cond_1

    .line 702
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    .line 703
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v2

    :cond_0
    const-string p0, "this is not h264 video"

    .line 706
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v3, "video/mp4v-es"

    if-ne p0, v3, :cond_3

    .line 710
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p0

    if-ne p0, v2, :cond_2

    .line 711
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v2

    :cond_2
    const-string p0, "this is not mpeg4 video"

    .line 714
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "Unknown video codec, maybe not MPEG4/AVC"

    .line 718
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 698
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader$UnsupportedFormatException;

    const-string p1, "Video codec format not supported"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviCodecReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parsePpsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_5

    .line 343
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 346
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3

    .line 350
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 354
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v1, v3, -0x2

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 367
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H264: pps pos :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AviVideoCodec"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v1, v2

    .line 368
    new-array v3, v1, [B

    .line 369
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 370
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 372
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 7

    .line 285
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 287
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 288
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p2

    .line 289
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p3

    .line 291
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-lez v1, :cond_5

    .line 293
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    :goto_0
    if-gt v5, v1, :cond_5

    .line 296
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v4, v3, :cond_1

    :goto_1
    if-ge v5, v1, :cond_5

    .line 300
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 301
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-eq v4, v2, :cond_4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    goto :goto_4

    :cond_2
    const/4 v6, 0x6

    if-ne v4, v6, :cond_5

    .line 308
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    move v6, v5

    :goto_2
    if-lez v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v4, 0x1

    if-ge v5, v1, :cond_5

    .line 316
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 305
    :cond_4
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 306
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 321
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 322
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 323
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    .line 324
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->weightedBipredIdc:I

    .line 325
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 326
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 327
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 329
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    .line 330
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->redundantPicCntPresentFlag:I

    .line 333
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object p0
.end method

.method public parseSliceHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 411
    new-array v2, v1, [B

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 412
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 413
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 415
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 417
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v2, 0x5

    .line 418
    rem-int/2addr v1, v2

    .line 420
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 422
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    const-string v6, "Slice header read return"

    const-string v7, "AviVideoCodec"

    const/4 v8, 0x2

    if-eqz v5, :cond_1

    .line 423
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 424
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_0
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 433
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v5, v5, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 434
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v10, 0x1

    if-nez v9, :cond_5

    .line 435
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 436
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 439
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 441
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 442
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_0

    :cond_4
    move v11, v3

    goto :goto_0

    :cond_5
    move v9, v3

    move v11, v9

    .line 449
    :goto_0
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v12, v12, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    shl-int v12, v10, v12

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->maxFrameNum:I

    .line 451
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    if-ne v12, v2, :cond_6

    move v12, v10

    goto :goto_1

    :cond_6
    move v12, v3

    :goto_1
    const-string v13, "Slice data can not read by Golomb decode"

    if-eqz v12, :cond_8

    .line 453
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v14

    if-nez v14, :cond_7

    .line 454
    invoke-static {v7, v13}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 457
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    iput v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->idrPicId:I

    .line 464
    :cond_8
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v14, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v14, :cond_c

    .line 465
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v14, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 466
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 469
    :cond_9
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v6, v6, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 470
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->ppsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v14, :cond_b

    if-nez v9, :cond_b

    .line 471
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v14

    if-nez v14, :cond_a

    .line 472
    invoke-static {v7, v13}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 475
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v7

    move v13, v3

    goto :goto_3

    :cond_b
    move v7, v3

    goto :goto_2

    .line 477
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v6, v6, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v6, v10, :cond_e

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v6, :cond_e

    .line 479
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v6

    .line 480
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->ppsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v7, :cond_d

    if-nez v9, :cond_d

    .line 481
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v7

    move v13, v6

    move v14, v7

    move v6, v3

    move v7, v6

    goto :goto_4

    :cond_d
    move v7, v3

    move v14, v7

    move v13, v6

    move v6, v14

    goto :goto_4

    :cond_e
    move v6, v3

    move v7, v6

    :goto_2
    move v13, v7

    :goto_3
    move v14, v13

    .line 485
    :goto_4
    iget v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->redundantPicCntPresentFlag:I

    if-eqz v15, :cond_f

    .line 486
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_f
    if-ne v1, v10, :cond_10

    .line 490
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    :cond_10
    const/4 v15, 0x3

    if-eqz v1, :cond_11

    if-eq v1, v15, :cond_11

    if-ne v1, v10, :cond_13

    .line 495
    :cond_11
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 496
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    if-ne v1, v10, :cond_12

    .line 498
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_12
    move/from16 v3, v16

    :cond_13
    if-eq v1, v8, :cond_18

    .line 504
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x20

    .line 506
    new-array v1, v1, [I

    const/16 v17, 0x0

    .line 509
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    aput v18, v1, v17

    .line 510
    aget v18, v1, v17

    if-eqz v18, :cond_15

    aget v2, v1, v17

    if-ne v2, v10, :cond_14

    goto :goto_6

    .line 512
    :cond_14
    aget v2, v1, v17

    if-ne v2, v8, :cond_16

    .line 513
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_7

    .line 511
    :cond_15
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_16
    :goto_7
    add-int/lit8 v2, v17, 0x1

    add-int/lit8 v17, v2, -0x1

    .line 516
    aget v8, v1, v17

    if-eq v8, v15, :cond_18

    if-le v2, v3, :cond_17

    goto :goto_8

    :cond_17
    move/from16 v17, v2

    const/4 v2, 0x5

    const/4 v8, 0x2

    goto :goto_5

    .line 521
    :cond_18
    :goto_8
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mmcoType:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastMmcoType:I

    .line 523
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-eq v1, v15, :cond_19

    .line 524
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    .line 525
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 526
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->mmcoType:I

    .line 532
    :cond_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    shl-int v1, v10, v1

    .line 533
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v2, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    const-wide/16 v3, 0x2

    if-nez v2, :cond_1f

    if-eqz v12, :cond_1a

    const/4 v2, 0x0

    .line 535
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    .line 536
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    .line 538
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastMmcoType:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1c

    .line 539
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastBottomFieldFlag:Z

    if-eqz v5, :cond_1b

    .line 540
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    .line 541
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    goto :goto_9

    .line 543
    :cond_1b
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    .line 544
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    .line 550
    :cond_1c
    :goto_9
    div-int/lit8 v2, v1, 0x2

    .line 551
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    if-ge v6, v5, :cond_1d

    sub-int/2addr v5, v6

    if-lt v5, v2, :cond_1d

    .line 553
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    add-int/2addr v2, v1

    goto :goto_a

    .line 554
    :cond_1d
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    if-le v6, v5, :cond_1e

    sub-int v5, v6, v5

    if-le v5, v2, :cond_1e

    .line 556
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    sub-int/2addr v2, v1

    goto :goto_a

    .line 558
    :cond_1e
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    :goto_a
    add-int v1, v2, v6

    int-to-long v8, v1

    .line 561
    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    .line 562
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    long-to-int v1, v8

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    .line 563
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    .line 564
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntMsb:I

    .line 565
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevPicOrderCntLsb:I

    .line 567
    div-long/2addr v8, v3

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto/16 :goto_15

    .line 568
    :cond_1f
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v1, v10, :cond_2d

    .line 569
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    const/4 v1, 0x0

    .line 571
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    goto :goto_c

    :cond_20
    const/4 v1, 0x0

    .line 573
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastMmcoType:I

    if-ne v6, v2, :cond_21

    .line 574
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    .line 575
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    .line 578
    :cond_21
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    if-ge v5, v1, :cond_22

    .line 579
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->maxFrameNum:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    goto :goto_b

    .line 581
    :cond_22
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    :goto_b
    move v1, v13

    .line 585
    :goto_c
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    if-lez v2, :cond_23

    .line 586
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    goto :goto_d

    :cond_23
    const/4 v2, 0x0

    .line 588
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    .line 590
    :goto_d
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    if-lez v2, :cond_24

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-ne v6, v15, :cond_24

    sub-int/2addr v2, v10

    .line 591
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    .line 595
    :cond_24
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    if-lez v2, :cond_25

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 596
    :goto_e
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    if-ge v2, v7, :cond_26

    .line 597
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForRefFrame:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    const/4 v6, 0x0

    .line 602
    :cond_26
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    if-lez v2, :cond_28

    sub-int/2addr v2, v10

    .line 604
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    div-int v8, v2, v7

    .line 605
    rem-int/2addr v2, v7

    mul-int/2addr v8, v6

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_27

    .line 608
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForRefFrame:[I

    aget v7, v7, v6

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_27
    move/from16 v16, v8

    goto :goto_10

    :cond_28
    const/16 v16, 0x0

    .line 613
    :goto_10
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-ne v2, v15, :cond_29

    .line 614
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForNonRefPic:I

    add-int v16, v16, v2

    :cond_29
    if-eqz v9, :cond_2b

    add-int v1, v16, v1

    .line 618
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    .line 619
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForTopToBottom:I

    add-int/2addr v2, v1

    add-int/2addr v2, v14

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    .line 620
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    if-ge v1, v2, :cond_2a

    int-to-long v1, v1

    .line 621
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto :goto_11

    :cond_2a
    int-to-long v1, v2

    .line 623
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto :goto_11

    :cond_2b
    if-eqz v11, :cond_2c

    add-int v1, v16, v1

    .line 625
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    .line 626
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto :goto_11

    .line 628
    :cond_2c
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForTopToBottom:I

    add-int v16, v16, v2

    add-int v1, v16, v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    .line 630
    :goto_11
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    .line 631
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    .line 633
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto :goto_15

    .line 634
    :cond_2d
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 635
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->packageType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x0

    .line 636
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    .line 637
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    goto :goto_14

    :cond_2e
    const/4 v1, 0x0

    .line 639
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastMmcoType:I

    if-ne v3, v2, :cond_2f

    .line 640
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    .line 641
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    .line 644
    :cond_2f
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    if-ge v5, v1, :cond_30

    .line 645
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->maxFrameNum:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    goto :goto_12

    .line 647
    :cond_30
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    .line 650
    :goto_12
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    .line 651
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-ne v1, v15, :cond_31

    .line 652
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v1, v10

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    goto :goto_13

    :cond_31
    const/4 v2, 0x2

    .line 654
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameNum:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    :goto_13
    if-eqz v9, :cond_32

    .line 658
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    long-to-int v1, v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    goto :goto_14

    :cond_32
    if-eqz v11, :cond_33

    .line 660
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    long-to-int v1, v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->topPoc:I

    goto :goto_14

    .line 662
    :cond_33
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->avcGopFrameCount:J

    long-to-int v1, v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->bottomPoc:I

    .line 666
    :goto_14
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameType:I

    if-eq v1, v15, :cond_34

    .line 667
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNum:I

    .line 668
    :cond_34
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameNumOffset:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->prevFrameNumOffset:I

    .line 671
    :cond_35
    :goto_15
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->lastBottomFieldFlag:Z

    return-void
.end method

.method public parseSpsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_6

    .line 252
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 255
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v6, 0x7

    if-ne v4, v6, :cond_3

    .line 259
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    goto :goto_2

    :cond_3
    const/16 v6, 0x8

    if-ne v4, v6, :cond_4

    .line 263
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v1, v3, -0x2

    goto :goto_4

    :cond_4
    :goto_2
    move v1, v0

    :cond_5
    :goto_3
    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_6
    move v1, v0

    .line 276
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H264: sps pos :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AviVideoCodec"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v1, v2

    .line 277
    new-array v3, v1, [B

    .line 278
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 279
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 281
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 22

    move-object/from16 v0, p0

    .line 127
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v2, 0x8

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 130
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 132
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    const/4 v3, 0x3

    const/16 v8, 0x10

    const/4 v10, 0x1

    const/16 v11, 0x64

    if-eq v4, v11, :cond_1

    const/16 v11, 0x6e

    if-eq v4, v11, :cond_1

    const/16 v11, 0x7a

    if-eq v4, v11, :cond_1

    const/16 v11, 0xf4

    if-eq v4, v11, :cond_1

    const/16 v11, 0x2c

    if-eq v4, v11, :cond_1

    const/16 v11, 0x53

    if-eq v4, v11, :cond_1

    const/16 v11, 0x56

    if-eq v4, v11, :cond_1

    const/16 v11, 0x76

    if-eq v4, v11, :cond_1

    const/16 v11, 0x80

    if-eq v4, v11, :cond_1

    const/16 v11, 0x8a

    if-ne v4, v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v10

    const/4 v12, 0x0

    goto :goto_7

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    if-ne v11, v3, :cond_2

    .line 141
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 143
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 144
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 145
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 146
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_8

    if-eq v11, v3, :cond_3

    move v13, v2

    goto :goto_2

    :cond_3
    const/16 v13, 0xc

    :goto_2
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    .line 150
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v16, v2

    move/from16 v17, v16

    const/4 v15, 0x0

    :goto_4
    const/4 v9, 0x6

    if-ge v14, v9, :cond_4

    move v9, v8

    goto :goto_5

    :cond_4
    const/16 v9, 0x40

    :goto_5
    if-ge v15, v9, :cond_7

    if-eqz v16, :cond_5

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v9

    add-int v9, v17, v9

    add-int/lit16 v9, v9, 0x100

    .line 157
    rem-int/lit16 v9, v9, 0x100

    move/from16 v16, v9

    :cond_5
    if-nez v16, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v17, v16

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 166
    :cond_8
    :goto_7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/lit8 v13, v9, 0x4

    .line 167
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-nez v14, :cond_9

    .line 172
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    move v15, v0

    goto :goto_9

    :cond_9
    if-ne v14, v10, :cond_b

    .line 174
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 175
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v15

    iput v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForNonRefPic:I

    .line 176
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v15

    iput v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForTopToBottom:I

    .line 177
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    iput v15, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    const/4 v15, 0x0

    .line 178
    :goto_8
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->numRefFramesInPicOrderCntCycle:I

    if-ge v15, v2, :cond_a

    .line 179
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->offsetForRefFrame:[I

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    aput v16, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_a
    move/from16 v16, v9

    const/4 v15, 0x0

    goto :goto_a

    :cond_b
    const/4 v15, 0x0

    :goto_9
    const/16 v16, 0x0

    .line 182
    :goto_a
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 183
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 185
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v10

    .line 186
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v10

    .line 187
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    const/4 v9, 0x2

    rsub-int/lit8 v18, v17, 0x2

    mul-int v18, v18, v2

    if-nez v17, :cond_c

    .line 190
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 193
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    mul-int/2addr v0, v8

    mul-int/lit8 v18, v18, 0x10

    .line 196
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 198
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 199
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 200
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 201
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    if-nez v11, :cond_d

    rsub-int/lit8 v9, v17, 0x2

    move v3, v10

    goto :goto_c

    :cond_d
    if-ne v11, v3, :cond_e

    move v3, v10

    goto :goto_b

    :cond_e
    move v3, v9

    :goto_b
    if-ne v11, v10, :cond_f

    move v10, v9

    :cond_f
    rsub-int/lit8 v9, v17, 0x2

    mul-int/2addr v9, v10

    :goto_c
    add-int v2, v2, v19

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    add-int v20, v20, v21

    mul-int v20, v20, v9

    sub-int v18, v18, v20

    :cond_10
    move/from16 v9, v18

    const/high16 v2, 0x3f800000    # 1.0f

    .line 218
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 220
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0x8

    .line 222
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    const/16 v10, 0xff

    if-ne v3, v10, :cond_11

    .line 224
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 225
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-eqz v3, :cond_13

    if-eqz v1, :cond_13

    int-to-float v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_d

    .line 229
    :cond_11
    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v1

    if-ge v3, v1, :cond_12

    .line 230
    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v1, v1, v3

    move v10, v1

    goto :goto_e

    .line 232
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AviVideoCodec"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_d
    move v10, v2

    .line 237
    :goto_e
    new-instance v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-object v3, v1

    move v8, v0

    move v11, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v1
.end method

.method public seek(JJI)V
    .locals 2

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seek video internal process to time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "; count:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AviVideoCodec"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 690
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->frameCount:J

    .line 691
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->playStartTime:J

    add-int/lit8 p5, p5, -0x1

    int-to-long p1, p5

    .line 692
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviVideoCodecReader;->absFrameCount:J

    return-void
.end method
