.class public Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/OutputBuffer;
.source "Gav1OutputBuffer.java"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->owner:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    return-void
.end method

.method private initData(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_1
    return-void
.end method

.method private isSafeToMultiply(II)Z
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-lez p2, :cond_0

    const p0, 0x7fffffff

    .line 146
    div-int/2addr p0, p2

    if-ge p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public init(JI)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->timeUs:J

    .line 52
    iput p3, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->mode:I

    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    .line 129
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    return-void
.end method

.method public initForRgbFrame(II)Z
    .locals 1

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    .line 62
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isSafeToMultiply(II)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/2addr p1, p2

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isSafeToMultiply(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p1, p2

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->initData(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 6

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->width:I

    .line 81
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->height:I

    .line 82
    iput p5, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 83
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 84
    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    invoke-direct {p0, p4, p1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int/2addr p2, p3

    mul-int/2addr p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 90
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge p5, p2, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 102
    :goto_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_4

    .line 103
    new-array p5, v2, [Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 106
    :cond_4
    iget-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 107
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 111
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 112
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 114
    aget-object v4, v3, v5

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 115
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 117
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_5

    .line 119
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvStrides:[I

    .line 121
    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->yuvStrides:[I

    aput p3, p0, v0

    .line 122
    aput p4, p0, v5

    .line 123
    aput p4, p0, v1

    return v5

    :cond_6
    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;->owner:Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ext/av1/Gav1Decoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/Gav1OutputBuffer;)V

    return-void
.end method
