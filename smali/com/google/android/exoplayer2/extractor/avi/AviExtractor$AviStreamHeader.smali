.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AviStreamHeader"
.end annotation


# instance fields
.field public Flags:J

.field public InitialFrames:J

.field public Language:I

.field public Length:J

.field public Priority:I

.field public Quality:J

.field public Rate:J

.field public RcFrameBottom:S

.field public RcFrameLeft:S

.field public RcFrameRight:S

.field public RcFrameTop:S

.field public SampleSize:J

.field public Scale:J

.field public Start:J

.field public SuggestedBufferSize:J

.field public cb:J

.field public fcc:J

.field public fccHandler:J

.field public fccType:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviStreamHeader;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
