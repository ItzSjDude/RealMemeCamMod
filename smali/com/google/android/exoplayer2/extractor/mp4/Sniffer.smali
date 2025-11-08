.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    .line 33
    new-array v0, v0, [I

    const-string v1, "isom"

    .line 34
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "iso2"

    .line 35
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "iso3"

    .line 36
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "iso4"

    .line 37
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "iso5"

    .line 38
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-string v1, "iso6"

    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v1, "avc1"

    .line 40
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v1, "av01"

    .line 41
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "hvc1"

    .line 42
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "hev1"

    .line 43
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "mp41"

    .line 44
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "mp42"

    .line 45
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "3g2a"

    .line 46
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "3g2b"

    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "3gr6"

    .line 48
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const-string v1, "3gs6"

    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v1, "3ge6"

    .line 50
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    const-string v1, "3gg6"

    .line 51
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    const-string v1, "M4V "

    .line 52
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    const-string v1, "M4A "

    .line 53
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    const-string v1, "f4v "

    .line 54
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    const-string v1, "kddi"

    .line 55
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    const-string v1, "M4VP"

    .line 56
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    const-string v1, "qt  "

    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    const-string v1, "MSNV"

    .line 58
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6

    ushr-int/lit8 v0, p0, 0x8

    const-string v1, "3gp"

    .line 185
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 188
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    if-ne v5, p0, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 91
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 95
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v8, 0x0

    move v9, v6

    move v6, v8

    move v10, v6

    :goto_1
    if-ge v6, v9, :cond_11

    const/16 v12, 0x8

    .line 102
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 103
    iget-object v13, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v13, v8, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 105
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    const/16 v11, 0x10

    if-nez v16, :cond_2

    .line 109
    iget-object v13, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v13, v12, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 110
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 111
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v11, v13, v18

    if-nez v11, :cond_3

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    cmp-long v11, v18, v3

    if-eqz v11, :cond_3

    .line 116
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v13

    sub-long v18, v18, v13

    int-to-long v13, v12

    add-long v13, v18, v13

    :cond_3
    move v11, v12

    :goto_2
    int-to-long v3, v11

    cmp-long v16, v13, v3

    if-gez v16, :cond_4

    return v8

    :cond_4
    add-int/2addr v6, v11

    .line 126
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v15, v11, :cond_6

    long-to-int v3, v13

    add-int/2addr v9, v3

    if-eqz v5, :cond_5

    int-to-long v3, v9

    cmp-long v3, v3, v1

    if-lez v3, :cond_5

    long-to-int v9, v1

    :cond_5
    :goto_3
    const-wide/16 v3, -0x1

    goto :goto_1

    .line 138
    :cond_6
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq v15, v11, :cond_10

    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-ne v15, v11, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v16, v9

    int-to-long v8, v6

    add-long/2addr v8, v13

    sub-long/2addr v8, v3

    move-wide/from16 v21, v13

    move/from16 v11, v16

    int-to-long v12, v11

    cmp-long v8, v8, v12

    if-ltz v8, :cond_8

    const/4 v9, 0x1

    const/16 v20, 0x0

    goto :goto_9

    :cond_8
    sub-long v13, v21, v3

    long-to-int v3, v13

    add-int/2addr v6, v3

    .line 151
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v15, v4, :cond_e

    const/16 v4, 0x8

    if-ge v3, v4, :cond_9

    const/4 v4, 0x0

    return v4

    :cond_9
    const/4 v4, 0x0

    .line 156
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 157
    iget-object v8, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v8, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 158
    div-int/lit8 v3, v3, 0x4

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_c

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    const/4 v12, 0x4

    .line 162
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_5

    .line 163
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    move v9, v10

    :goto_6
    if-nez v9, :cond_d

    const/16 v20, 0x0

    return v20

    :cond_d
    const/16 v20, 0x0

    move v10, v9

    goto :goto_7

    :cond_e
    const/16 v20, 0x0

    if-eqz v3, :cond_f

    .line 174
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_f
    :goto_7
    move v9, v11

    move/from16 v8, v20

    goto :goto_3

    :cond_10
    :goto_8
    move/from16 v20, v8

    const/4 v9, 0x1

    move v0, v9

    goto :goto_a

    :cond_11
    move/from16 v20, v8

    const/4 v9, 0x1

    :goto_9
    move/from16 v0, v20

    :goto_a
    if-eqz v10, :cond_12

    move/from16 v1, p1

    if-ne v1, v0, :cond_12

    move/from16 v20, v9

    :cond_12
    return v20
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
