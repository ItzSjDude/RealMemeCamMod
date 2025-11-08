.class public Lcom/oplus/tblplayer/utils/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field private static final DIGITS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x24

    .line 40
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/tblplayer/utils/ByteUtil;->DIGITS:[C

    .line 47
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/tblplayer/utils/ByteUtil;->UPPER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toHexArrayString([BII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 6
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    if-ltz p1, :cond_4

    if-gtz p2, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    array-length v1, p0

    add-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_3

    .line 19
    :try_start_0
    aget-byte v1, p0, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/tblplayer/utils/ByteUtil;->toHexString(BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-eq p1, v1, :cond_2

    const-string v1, " "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, "}"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 33
    sget-object p1, Lcom/oplus/tblplayer/utils/ByteUtil;->UPPER_CASE_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oplus/tblplayer/utils/ByteUtil;->DIGITS:[C

    :goto_0
    const/4 v0, 0x2

    .line 34
    new-array v1, v0, [C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 35
    aget-char v2, p1, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/4 v2, 0x1

    and-int/lit8 p0, p0, 0xf

    .line 36
    aget-char p0, p1, p0

    aput-char p0, v1, v2

    .line 37
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
