.class public Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/OutputBuffer;
.source "FrameOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;,
        Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$VideoOutputMode;
    }
.end annotation


# static fields
.field public static final VIDEO_OUTPUT_MODE_NONE:I = -0x1

.field public static final VIDEO_OUTPUT_MODE_SURFACE_YUV:I = 0x1

.field public static final VIDEO_OUTPUT_MODE_YUV:I


# instance fields
.field public colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public height:I

.field public mode:I

.field private final owner:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;

.field public rgbLineSize:I

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->owner:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;

    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .locals 1

    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    const v0, 0x7fffffff

    .line 178
    div-int/2addr v0, p1

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->timeUs:J

    .line 73
    iput p3, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->mode:I

    if-eqz p4, :cond_2

    .line 74
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 77
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 83
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 84
    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_2
    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    .line 170
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    return-void
.end method

.method public initForRGBFrame(III)Z
    .locals 1

    .line 94
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    .line 95
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    .line 96
    iput p3, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->rgbLineSize:I

    .line 97
    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isSafeToMultiply(II)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    mul-int/2addr p1, p2

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isSafeToMultiply(II)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    mul-int/2addr p1, p2

    .line 102
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v0
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 6

    .line 117
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->width:I

    .line 118
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->height:I

    .line 119
    iput p5, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 120
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 121
    invoke-static {p3, p2}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    invoke-static {p4, p1}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int/2addr p2, p3

    mul-int/2addr p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 127
    invoke-static {p1, v1}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge p5, p2, :cond_1

    goto :goto_2

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 133
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 139
    :goto_1
    iget-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_4

    .line 140
    new-array p5, v2, [Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 143
    :cond_4
    iget-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 144
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 148
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 151
    aget-object v4, v3, v5

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 152
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 154
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 155
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_5

    .line 156
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvStrides:[I

    .line 158
    :cond_5
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->yuvStrides:[I

    aput p3, p0, v0

    .line 159
    aput p4, p0, v5

    .line 160
    aput p4, p0, v1

    return v5

    :cond_6
    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;->owner:Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer$Owner;->releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/FrameOutputBuffer;)V

    return-void
.end method
