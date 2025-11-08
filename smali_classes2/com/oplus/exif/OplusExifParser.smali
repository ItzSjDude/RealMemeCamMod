.class Lcom/oplus/exif/OplusExifParser;
.super Ljava/lang/Object;
.source "OplusExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exif/OplusExifParser$ExifTagEvent;,
        Lcom/oplus/exif/OplusExifParser$IfdEvent;,
        Lcom/oplus/exif/OplusExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/oplus/exif/OplusExifParser$ImageEvent;

.field private final mInterface:Lcom/oplus/exif/OplusExifInterface;

.field private mJpegSizeTag:Lcom/oplus/exif/OplusExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/oplus/exif/OplusExifTag;

.field private mTag:Lcom/oplus/exif/OplusExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 144
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/oplus/exif/OplusExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 167
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_EXIF_IFD:I

    .line 168
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_EXIF_IFD:S

    .line 169
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_GPS_IFD:S

    .line 170
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 171
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 172
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 173
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 174
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 175
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 176
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_STRIP_OFFSETS:I

    .line 177
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_STRIP_OFFSETS:S

    .line 178
    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 179
    invoke-static {v0}, Lcom/oplus/exif/OplusExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/oplus/exif/OplusExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/oplus/exif/OplusExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdStartOffset:I

    .line 151
    iput v0, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    .line 159
    iput-boolean v0, p0, Lcom/oplus/exif/OplusExifParser;->mContainExifData:Z

    .line 161
    iput v0, p0, Lcom/oplus/exif/OplusExifParser;->mOffsetToApp1EndFromSOF:I

    .line 181
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 211
    iput-object p3, p0, Lcom/oplus/exif/OplusExifParser;->mInterface:Lcom/oplus/exif/OplusExifInterface;

    .line 212
    invoke-direct {p0, p1}, Lcom/oplus/exif/OplusExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/exif/OplusExifParser;->mContainExifData:Z

    .line 213
    new-instance p3, Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/oplus/exif/OplusCountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    .line 214
    iput p2, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    .line 215
    iget-boolean p1, p0, Lcom/oplus/exif/OplusExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->parseTiffHeader()V

    .line 220
    iget-object p1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p1}, Lcom/oplus/exif/OplusCountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 224
    iput p3, p0, Lcom/oplus/exif/OplusExifParser;->mIfd0Position:I

    .line 225
    iput v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    .line 226
    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 229
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/oplus/exif/OplusExifParser;->mDataAboveIfd0:[B

    .line 230
    iget-object p1, p0, Lcom/oplus/exif/OplusExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, p1}, Lcom/oplus/exif/OplusExifParser;->read([B)I

    :cond_2
    return-void

    .line 222
    :cond_3
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null argument inputStream to ExifParser"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkAllowed(II)Z
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mInterface:Lcom/oplus/exif/OplusExifInterface;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 637
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/exif/OplusExifInterface;->isIfdAllowed(II)Z

    move-result p0

    return p0
.end method

.method private checkOffsetOrImageTag(Lcom/oplus/exif/OplusExifTag;)V
    .locals 5

    .line 586
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getTagId()S

    move-result v0

    .line 590
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getIfd()I

    move-result v1

    .line 591
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 592
    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    invoke-direct {p0, v3}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 594
    :cond_1
    invoke-virtual {p1, v4}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 596
    :cond_2
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 597
    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 598
    invoke-virtual {p1, v4}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 600
    :cond_3
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 601
    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 602
    invoke-direct {p0, v3}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 603
    invoke-virtual {p1, v4}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 605
    :cond_4
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 606
    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 607
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 608
    invoke-virtual {p1, v4}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/exif/OplusExifParser;->registerCompressedImage(J)V

    goto :goto_1

    .line 610
    :cond_5
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 611
    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 613
    iput-object p1, p0, Lcom/oplus/exif/OplusExifParser;->mJpegSizeTag:Lcom/oplus/exif/OplusExifTag;

    goto :goto_1

    .line 615
    :cond_6
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_8

    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 616
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 617
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 618
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 619
    invoke-virtual {p1, v4}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/oplus/exif/OplusExifParser;->registerUncompressedStrip(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 622
    :cond_7
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;

    invoke-direct {v1, p1, v4}, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;-><init>(Lcom/oplus/exif/OplusExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 625
    :cond_8
    sget-short v2, Lcom/oplus/exif/OplusExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_9

    sget v0, Lcom/oplus/exif/OplusExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 626
    invoke-direct {p0, v1, v0}, Lcom/oplus/exif/OplusExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 628
    iput-object p1, p0, Lcom/oplus/exif/OplusExifParser;->mStripSizeTag:Lcom/oplus/exif/OplusExifTag;

    :cond_9
    :goto_1
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 192
    :cond_0
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 194
    :cond_2
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 190
    :cond_4
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 188
    :cond_6
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 186
    :cond_8
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 0

    .line 200
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 393
    iget v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v2

    .line 402
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result p0

    return p0

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result p0

    return p0

    .line 395
    :cond_2
    invoke-direct {p0, v3}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0, v1}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    invoke-direct {p0, v4}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/oplus/exif/OplusExifInterface;)Lcom/oplus/exif/OplusExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/oplus/exif/OplusExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/exif/OplusExifParser;-><init>(Ljava/io/InputStream;ILcom/oplus/exif/OplusExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/oplus/exif/OplusExifInterface;)Lcom/oplus/exif/OplusExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/oplus/exif/OplusExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/oplus/exif/OplusExifParser;-><init>(Ljava/io/InputStream;ILcom/oplus/exif/OplusExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/oplus/exif/OplusCountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/oplus/exif/OplusCountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 745
    :goto_0
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    return-void

    .line 746
    :cond_1
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_2
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readTag()Lcom/oplus/exif/OplusExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result v2

    .line 535
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v1}, Lcom/oplus/exif/OplusCountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 542
    invoke-static {v0}, Lcom/oplus/exif/OplusExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 543
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/oplus/exif/OplusCountedDataInputStream;->skip(J)J

    const/4 p0, 0x0

    return-object p0

    .line 548
    :cond_0
    new-instance v10, Lcom/oplus/exif/OplusExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/oplus/exif/OplusExifTag;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v10}, Lcom/oplus/exif/OplusExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 552
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v1}, Lcom/oplus/exif/OplusCountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 558
    iget v3, p0, Lcom/oplus/exif/OplusExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 559
    new-array v0, v11, [B

    .line 560
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    invoke-virtual {v10, v0}, Lcom/oplus/exif/OplusExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    .line 564
    invoke-virtual {v10, p0}, Lcom/oplus/exif/OplusExifTag;->setOffset(I)V

    goto :goto_1

    .line 554
    :cond_3
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    const-string v0, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 567
    :cond_4
    invoke-virtual {v10}, Lcom/oplus/exif/OplusExifTag;->hasDefinedCount()Z

    move-result v0

    .line 569
    invoke-virtual {v10, v9}, Lcom/oplus/exif/OplusExifTag;->setHasDefinedCount(Z)V

    .line 571
    invoke-virtual {p0, v10}, Lcom/oplus/exif/OplusExifParser;->readFullTagValue(Lcom/oplus/exif/OplusExifTag;)V

    .line 572
    invoke-virtual {v10, v0}, Lcom/oplus/exif/OplusExifTag;->setHasDefinedCount(Z)V

    .line 573
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/oplus/exif/OplusCountedDataInputStream;->skip(J)J

    .line 575
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v10, p0}, Lcom/oplus/exif/OplusExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 538
    :cond_5
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    const-string v0, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerCompressedImage(J)V
    .locals 1

    .line 526
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/oplus/exif/OplusExifParser$ImageEvent;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/oplus/exif/OplusExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/oplus/exif/OplusExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result p0

    invoke-direct {p3, p1, p0}, Lcom/oplus/exif/OplusExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/oplus/exif/OplusExifParser$ImageEvent;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p1}, Lcom/oplus/exif/OplusExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/oplus/exif/OplusCountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 753
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 757
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 758
    invoke-static {p1}, Lcom/oplus/exif/OplusJpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 759
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readInt()I

    move-result p1

    .line 767
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStartPosition:I

    .line 771
    iput v1, p0, Lcom/oplus/exif/OplusExifParser;->mApp1End:I

    .line 772
    iget p1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStartPosition:I

    iget v0, p0, Lcom/oplus/exif/OplusExifParser;->mApp1End:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/exif/OplusExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 777
    invoke-virtual {v0, v3, v4}, Lcom/oplus/exif/OplusCountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 781
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "ExifParser"

    const-string p1, "Invalid JPEG format."

    .line 778
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 754
    :cond_4
    new-instance p0, Lcom/oplus/exif/OplusExifInvalidFormatException;

    const-string p1, "Invalid JPEG format"

    invoke-direct {p0, p1}, Lcom/oplus/exif/OplusExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/exif/OplusCountedDataInputStream;->skipTo(J)V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusCountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    return-object p0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 491
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mJpegSizeTag:Lcom/oplus/exif/OplusExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 494
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getCurrentIfd()I
    .locals 0

    .line 453
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    return p0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 0

    .line 787
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mOffsetToApp1EndFromSOF:I

    return p0
.end method

.method protected getStripCount()I
    .locals 0

    .line 473
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mStripCount:I

    return p0
.end method

.method protected getStripIndex()I
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mImageEvent:Lcom/oplus/exif/OplusExifParser$ImageEvent;

    iget p0, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->stripIndex:I

    return p0
.end method

.method protected getStripSize()I
    .locals 2

    .line 481
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mStripSizeTag:Lcom/oplus/exif/OplusExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 483
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getTag()Lcom/oplus/exif/OplusExifTag;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    return-object p0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 0

    .line 440
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    return p0
.end method

.method protected getTiffStartPosition()I
    .locals 0

    .line 791
    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStartPosition:I

    return p0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 273
    iget-boolean v0, p0, Lcom/oplus/exif/OplusExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v0}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 277
    iget v2, p0, Lcom/oplus/exif/OplusExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->readTag()Lcom/oplus/exif/OplusExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    .line 280
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->next()I

    move-result p0

    return p0

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/exif/OplusExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 284
    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->checkOffsetOrImageTag(Lcom/oplus/exif/OplusExifTag;)V

    :cond_2
    return v4

    :cond_3
    const-string v5, "ExifParser"

    if-ne v0, v2, :cond_8

    .line 289
    iget v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v8

    .line 291
    invoke-direct {p0, v4}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 293
    invoke-direct {p0, v4, v8, v9}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    .line 301
    invoke-virtual {v4}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid link to next IFD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 317
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oplus/exif/OplusExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    instance-of v4, v2, Lcom/oplus/exif/OplusExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 324
    check-cast v2, Lcom/oplus/exif/OplusExifParser$IfdEvent;

    iget v4, v2, Lcom/oplus/exif/OplusExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    .line 325
    iget-object v4, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v4}, Lcom/oplus/exif/OplusCountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdStartOffset:I

    .line 328
    iget v0, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, p0, Lcom/oplus/exif/OplusExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v4, p0, Lcom/oplus/exif/OplusExifParser;->mApp1End:I

    if-le v0, v4, :cond_9

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size of IFD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 333
    :cond_9
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/exif/OplusExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 334
    iget-boolean v0, v2, Lcom/oplus/exif/OplusExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 339
    :cond_b
    instance-of v0, v2, Lcom/oplus/exif/OplusExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 340
    check-cast v2, Lcom/oplus/exif/OplusExifParser$ImageEvent;

    iput-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mImageEvent:Lcom/oplus/exif/OplusExifParser$ImageEvent;

    .line 341
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mImageEvent:Lcom/oplus/exif/OplusExifParser$ImageEvent;

    iget p0, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->type:I

    return p0

    .line 343
    :cond_c
    check-cast v2, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;

    .line 344
    iget-object v0, v2, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;->tag:Lcom/oplus/exif/OplusExifTag;

    iput-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    .line 345
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    invoke-virtual {v0}, Lcom/oplus/exif/OplusExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 346
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifParser;->readFullTagValue(Lcom/oplus/exif/OplusExifTag;)V

    .line 347
    iget-object v0, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->checkOffsetOrImageTag(Lcom/oplus/exif/OplusExifTag;)V

    .line 349
    :cond_d
    iget-boolean v0, v2, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 319
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0, p1}, Lcom/oplus/exif/OplusCountedDataInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method protected read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/exif/OplusCountedDataInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method protected readFullTagValue(Lcom/oplus/exif/OplusExifTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifParser"

    .line 643
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    .line 647
    iget-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 648
    iget-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v3}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    .line 650
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 651
    instance-of v2, v1, Lcom/oplus/exif/OplusExifParser$ImageEvent;

    if-eqz v2, :cond_1

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 658
    :cond_1
    instance-of v2, v1, Lcom/oplus/exif/OplusExifParser$IfdEvent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " overlaps value for tag: \n"

    if-eqz v2, :cond_2

    .line 659
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/oplus/exif/OplusExifParser$IfdEvent;

    iget v1, v1, Lcom/oplus/exif/OplusExifParser$IfdEvent;->ifd:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    :cond_2
    instance-of v2, v1, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;

    if-eqz v2, :cond_3

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;

    iget-object v1, v1, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;->tag:Lcom/oplus/exif/OplusExifTag;

    .line 663
    invoke-virtual {v1}, Lcom/oplus/exif/OplusExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    .line 667
    invoke-virtual {v2}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->forceSetComponentCount(I)V

    .line 675
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 719
    :pswitch_1
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/oplus/exif/OplusRational;

    .line 720
    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_5

    .line 721
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readRational()Lcom/oplus/exif/OplusRational;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 723
    :cond_5
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([Lcom/oplus/exif/OplusRational;)Z

    goto/16 :goto_7

    .line 711
    :pswitch_2
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 712
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_6

    .line 713
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readLong()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 715
    :cond_6
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([I)Z

    goto/16 :goto_7

    .line 695
    :pswitch_3
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [Lcom/oplus/exif/OplusRational;

    .line 696
    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_7

    .line 697
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedRational()Lcom/oplus/exif/OplusRational;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 699
    :cond_7
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([Lcom/oplus/exif/OplusRational;)Z

    goto :goto_7

    .line 687
    :pswitch_4
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [J

    .line 688
    array-length v3, v1

    :goto_5
    if-ge v2, v3, :cond_8

    .line 689
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 691
    :cond_8
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([J)Z

    goto :goto_7

    .line 703
    :pswitch_5
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [I

    .line 704
    array-length v3, v1

    :goto_6
    if-ge v2, v3, :cond_9

    .line 705
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedShort()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 707
    :cond_9
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([I)Z

    goto :goto_7

    .line 684
    :pswitch_6
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/exif/OplusExifParser;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 678
    :pswitch_7
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [B

    .line 679
    invoke-virtual {p0, v1}, Lcom/oplus/exif/OplusExifParser;->read([B)I

    .line 680
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifTag;->setValue([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readFullTagValue e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method protected readRational()Lcom/oplus/exif/OplusRational;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readLong()I

    move-result v0

    .line 868
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readLong()I

    move-result p0

    .line 869
    new-instance v1, Lcom/oplus/exif/OplusRational;

    int-to-long v2, v0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oplus/exif/OplusRational;-><init>(JJ)V

    return-object v1
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    sget-object v0, Lcom/oplus/exif/OplusExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/exif/OplusExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 824
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/exif/OplusCountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readLong()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/oplus/exif/OplusRational;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 852
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 853
    new-instance p0, Lcom/oplus/exif/OplusRational;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/exif/OplusRational;-><init>(JJ)V

    return-object p0
.end method

.method protected readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusCountedDataInputStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected registerForTagValue(Lcom/oplus/exif/OplusExifTag;)V
    .locals 3

    .line 514
    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v1}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 515
    iget-object p0, p0, Lcom/oplus/exif/OplusExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/oplus/exif/OplusExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;-><init>(Lcom/oplus/exif/OplusExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oplus/exif/OplusExifInvalidFormatException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/oplus/exif/OplusExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oplus/exif/OplusExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 366
    iget-object v1, p0, Lcom/oplus/exif/OplusExifParser;->mTiffStream:Lcom/oplus/exif/OplusCountedDataInputStream;

    invoke-virtual {v1}, Lcom/oplus/exif/OplusCountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-boolean v2, p0, Lcom/oplus/exif/OplusExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->readTag()Lcom/oplus/exif/OplusExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    add-int/lit8 v1, v1, 0xc

    .line 374
    iget-object v2, p0, Lcom/oplus/exif/OplusExifParser;->mTag:Lcom/oplus/exif/OplusExifTag;

    if-nez v2, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0, v2}, Lcom/oplus/exif/OplusExifParser;->checkOffsetOrImageTag(Lcom/oplus/exif/OplusExifTag;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-direct {p0, v0}, Lcom/oplus/exif/OplusExifParser;->skipTo(I)V

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 384
    iget v2, p0, Lcom/oplus/exif/OplusExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 385
    invoke-direct {p0, v2}, Lcom/oplus/exif/OplusExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/oplus/exif/OplusExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 387
    invoke-direct {p0, v2, v0, v1}, Lcom/oplus/exif/OplusExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
