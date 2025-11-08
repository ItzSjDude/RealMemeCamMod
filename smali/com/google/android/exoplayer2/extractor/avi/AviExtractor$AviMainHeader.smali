.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AviMainHeader"
.end annotation


# instance fields
.field public Flags:J

.field public Height:J

.field public InitialFrames:J

.field public MaxBytesPerSec:J

.field public MicroSecPerFrame:J

.field public PaddingGranularity:J

.field public Reserved:[J

.field public Streams:J

.field public SuggestedBufferSize:J

.field public TotalFrames:J

.field public Width:J

.field public cb:J

.field public fcc:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 99
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviMainHeader;->Reserved:[J

    return-void
.end method
