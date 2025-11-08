.class public abstract Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "O:",
        "Lcom/google/android/exoplayer2/decoder/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/decoder/Decoder<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 59
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 60
    array-length p1, p1

    iput p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    const/4 p1, 0x0

    move v0, p1

    .line 61
    :goto_0
    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iput-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    .line 65
    array-length p2, p2

    iput p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    .line 66
    :goto_1
    iget p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    if-ge p1, p2, :cond_1

    .line 67
    iget-object p2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 69
    :cond_1
    new-instance p1, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder$1;

    invoke-direct {p1, p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder$1;-><init>(Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 75
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->flushed:Z

    if-nez v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private decode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->released:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->canDecodeBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->released:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 214
    monitor-exit v0

    return v2

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 218
    :goto_1
    iget-object v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    iget v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v3, v3, v4

    if-eqz v1, :cond_3

    .line 219
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    iget v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->skippedOutputBufferCount:I

    .line 222
    :cond_3
    iget-boolean v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->flushed:Z

    .line 223
    iput-boolean v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->flushed:Z

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 228
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 241
    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 242
    :try_start_2
    iput-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->exception:Ljava/lang/Exception;

    .line 243
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 247
    :cond_4
    iget-object v4, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_3
    iget-boolean v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->flushed:Z

    if-eqz v0, :cond_5

    .line 249
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    goto :goto_3

    .line 250
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    goto :goto_3

    .line 254
    :cond_6
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->skippedOutputBufferCount:I

    iput v0, v3, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->skippedOutputBufferCount:I

    .line 255
    iput v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->skippedOutputBufferCount:I

    .line 256
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_3
    if-eqz v1, :cond_7

    .line 261
    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 263
    :cond_7
    monitor-exit v4

    return v5

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 224
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private maybeNotifyDecodeLoop()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private maybeThrowException()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-nez p0, :cond_0

    return-void

    .line 176
    :cond_0
    throw p0
.end method

.method private releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 278
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 283
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private run()V
    .locals 1

    .line 194
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->decode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected abstract createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->maybeThrowException()V

    .line 97
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 98
    iget v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    aget-object v1, v1, v3

    :goto_1
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 100
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->maybeThrowException()V

    .line 119
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 120
    monitor-exit v0

    return-object p0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final flush()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 141
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->flushed:Z

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->skippedOutputBufferCount:I

    .line 143
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 147
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    goto :goto_1

    .line 153
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract isDraining()Z
.end method

.method public final queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->maybeThrowException()V

    .line 108
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 109
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->maybeNotifyDecodeLoop()V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 159
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->released:Z

    .line 160
    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 161
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 134
    invoke-direct {p0}, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected final setInitialInputBufferSize(I)V
    .locals 3

    .line 87
    iget v0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBufferCount:I

    iget-object v1, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 88
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    .line 89
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
