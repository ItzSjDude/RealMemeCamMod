.class Lcom/oplus/exif/OplusExifReader;
.super Ljava/lang/Object;
.source "OplusExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/oplus/exif/OplusExifInterface;


# direct methods
.method constructor <init>(Lcom/oplus/exif/OplusExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oplus/exif/OplusExifReader;->mInterface:Lcom/oplus/exif/OplusExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/oplus/exif/OplusExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/exif/OplusExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/oplus/exif/OplusExifReader;->mInterface:Lcom/oplus/exif/OplusExifInterface;

    invoke-static {p1, p0}, Lcom/oplus/exif/OplusExifParser;->parse(Ljava/io/InputStream;Lcom/oplus/exif/OplusExifInterface;)Lcom/oplus/exif/OplusExifParser;

    move-result-object p0

    .line 46
    new-instance p1, Lcom/oplus/exif/OplusExifData;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/exif/OplusExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 49
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const-string v2, "ExifReader"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 80
    array-length v1, v0

    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/oplus/exif/OplusExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_1
    const-string v0, "Failed to read the strip bytes"

    .line 83
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    .line 72
    array-length v1, v0

    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 73
    invoke-virtual {p1, v0}, Lcom/oplus/exif/OplusExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v0, "Failed to read the compressed thumbnail"

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getTag()Lcom/oplus/exif/OplusExifTag;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/oplus/exif/OplusExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 66
    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifParser;->readFullTagValue(Lcom/oplus/exif/OplusExifTag;)V

    .line 68
    :cond_5
    invoke-virtual {v0}, Lcom/oplus/exif/OplusExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifData;->getIfdData(I)Lcom/oplus/exif/OplusIfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/exif/OplusIfdData;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getTag()Lcom/oplus/exif/OplusExifTag;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/oplus/exif/OplusExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 58
    invoke-virtual {p0, v0}, Lcom/oplus/exif/OplusExifParser;->registerForTagValue(Lcom/oplus/exif/OplusExifTag;)V

    goto :goto_1

    .line 60
    :cond_7
    invoke-virtual {v0}, Lcom/oplus/exif/OplusExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifData;->getIfdData(I)Lcom/oplus/exif/OplusIfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/exif/OplusIfdData;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    goto :goto_1

    .line 53
    :cond_8
    new-instance v0, Lcom/oplus/exif/OplusIfdData;

    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/oplus/exif/OplusIfdData;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/oplus/exif/OplusExifData;->addIfdData(Lcom/oplus/exif/OplusIfdData;)V

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/exif/OplusExifParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_9
    return-object p1
.end method
