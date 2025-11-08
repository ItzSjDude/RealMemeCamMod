.class public Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;
.super Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer$VideoOutputMode;
    }
.end annotation


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I = 0x0

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

.field private final owner:Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner<",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner<",
            "Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->owner:Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;

    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .locals 1

    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    const v0, 0x7fffffff

    .line 173
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

    .line 88
    iput-wide p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->timeUs:J

    .line 89
    iput p3, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->mode:I

    if-eqz p4, :cond_2

    .line 90
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 98
    :goto_1
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 99
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 100
    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_2
    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->width:I

    .line 165
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->height:I

    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 6

    .line 112
    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->width:I

    .line 113
    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->height:I

    .line 114
    iput p5, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 115
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 116
    invoke-static {p3, p2}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    invoke-static {p4, p1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int/2addr p2, p3

    mul-int/2addr p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 122
    invoke-static {p1, v1}, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge p5, p2, :cond_1

    goto :goto_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget-object v2, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 128
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 134
    :goto_1
    iget-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_4

    .line 135
    new-array p5, v2, [Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 138
    :cond_4
    iget-object p5, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 139
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 143
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 146
    aget-object v4, v3, v5

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 147
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 149
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 150
    iget-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_5

    .line 151
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p3, p0, v0

    .line 154
    aput p4, p0, v5

    .line 155
    aput p4, p0, v1

    return v5

    :cond_6
    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/VideoDecoderOutputBuffer;->owner:Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/oplus/tblplayer/ffmpeg/OutputBuffer$Owner;->releaseOutputBuffer(Lcom/oplus/tblplayer/ffmpeg/OutputBuffer;)V

    return-void
.end method
