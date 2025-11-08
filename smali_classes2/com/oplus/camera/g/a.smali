.class public Lcom/oplus/camera/g/a;
.super Ljava/lang/Object;
.source "MP4BoxHeader.java"


# static fields
.field private static final c:[C


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field private d:[B

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/g/a;->c:[C

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/oplus/camera/g/a;->e:Z

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/g/a;->d:[B

    .line 43
    iput-boolean p2, p0, Lcom/oplus/camera/g/a;->e:Z

    .line 45
    array-length p2, p1

    .line 46
    invoke-direct {p0, p1}, Lcom/oplus/camera/g/a;->d([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/g/a;->b:Ljava/lang/String;

    const/16 v1, 0x8

    if-ne v1, p2, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/oplus/camera/g/a;->c([B)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/oplus/camera/g/a;->a:J

    goto :goto_0

    .line 51
    :cond_0
    new-array p2, v1, [B

    .line 52
    invoke-static {p1, v1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-direct {p0, p2}, Lcom/oplus/camera/g/a;->b([B)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/g/a;->a:J

    :goto_0
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .line 96
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 98
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 99
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    .line 101
    sget-object v5, Lcom/oplus/camera/g/a;->c:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 103
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 110
    aget-char v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    .line 111
    aget-char v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)[B
    .locals 5

    const/4 v0, 0x4

    .line 78
    new-array v0, v0, [B

    const/16 v1, 0x18

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x3

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private b([B)J
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private c([B)I
    .locals 1

    const/4 p0, 0x0

    .line 67
    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private d([B)Ljava/lang/String;
    .locals 1

    .line 74
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MP4BoxHeader{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/g/a;->d:[B

    .line 89
    invoke-static {v1}, Lcom/oplus/camera/g/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/g/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/g/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
