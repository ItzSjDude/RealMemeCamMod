.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 891
    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->skipData(IJ)I

    move-result p0

    return p0
.end method
